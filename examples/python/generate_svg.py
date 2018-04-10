#!/usr/bin/env python
# This Python file uses the following encoding: utf-8
# Copyright 2018 Google LLC
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Generate SVG for a VRP problem.

   Manhattan average block 750x264ft -> 228x80m
   src: https://nyti.ms/2GDoRIe "NY Times: Know Your distance"

   Distances are in meters.
"""

from __future__ import print_function
import argparse
from six.moves import xrange
from ortools.constraint_solver import pywrapcp
from ortools.constraint_solver import routing_enums_pb2

# Problem Data Definition
class Vehicle():
    """Stores the property of a vehicle"""
    def __init__(self):
        """Initializes the vehicle properties"""
        self._capacity = 25
        # Travel speed: 15km/h to convert in m/s
        self._speed = 15 / 3.6

    @property
    def capacity(self):
        """Gets vehicle capacity"""
        return self._capacity

    @property
    def speed(self):
        """Gets the average travel speed of a vehicle"""
        return self._speed

class DataProblem():
    """Stores the data for the problem"""
    def __init__(self):
        """Initializes the data for the problem"""
        self._vehicle = Vehicle()
        self._num_vehicles = 5

        # Locations in block unit
        locations = \
            [(4, 4), # depot
             (2, 0), (8, 0),
             (0, 1), (1, 1),
             (5, 2), (7, 2),
             (3, 3), (6, 3),
             (5, 5), (8, 5),
             (1, 6), (2, 6),
             (3, 7), (6, 7),
             (0, 8), (7, 8)]
        # locations in meters using the block dimension defined
        self._locations = [(loc[0]*self.block_width, loc[1]*self.block_height) \
                for loc in locations]
        self._depot = 0

    @property
    def block_width(self):
        """Gets Block size West to East"""
        return 228

    @property
    def block_height(self):
        """Gets Block size North to South"""
        return 80

    @property
    def vehicle(self):
        """Gets a vehicle"""
        return self._vehicle

    @property
    def num_vehicles(self):
        """Gets number of vehicles"""
        return self._num_vehicles

    @property
    def locations(self):
        """Gets locations"""
        return self._locations

    @property
    def num_locations(self):
        """Gets number of locations"""
        return len(self.locations)

    def manhattan_distance(self, from_node, to_node):
        """Computes the Manhattan distance between two nodes"""
        return (abs(self.locations[from_node][0] - self.locations[to_node][0]) +
                abs(self.locations[from_node][1] - self.locations[to_node][1]))

    @property
    def depot(self):
        """Gets depot location index"""
        return self._depot

# Distance callback
class CreateDistanceCallback(object): # pylint: disable=too-few-public-methods
    """Creates callback to return distance between points."""
    def __init__(self, data):
        """Initializes the distance matrix."""
        self._distance = {}

        # precompute distance between location to have distance callback in O(1)
        for from_node in xrange(data.num_locations):
            self._distance[from_node] = {}
            for to_node in xrange(data.num_locations):
                if from_node == to_node:
                    self._distance[from_node][to_node] = 0
                else:
                    self._distance[from_node][to_node] = (
                        data.manhattan_distance(from_node, to_node))

    def distance(self, from_node, to_node):
        """Returns the manhattan distance between the two nodes"""
        return self._distance[from_node][to_node]

# Demand callback
class CreateDemandCallback(object): # pylint: disable=too-few-public-methods
    """Creates callback to get demands at each location."""
    def __init__(self, data):
        """Initializes the demand array."""
        self._demands = data.demands

    def demand(self, from_node, to_node):
        """Returns the demand of the current node"""
        del to_node
        return self._demands[from_node]

# Time callback (equals to: service time + travel time).
class CreateTimeCallback(object):
    """Creates callback to get total times between locations."""
    @staticmethod
    def service_time(data, node):
        """Gets the service time for the specified location."""
        return data.demands[node] * data.time_per_demand_unit

    @staticmethod
    def travel_time(data, from_node, to_node):
        """Gets the travel times between two locations."""
        if from_node == to_node:
            travel_time = 0
        else:
            travel_time = data.manhattan_distance(from_node, to_node) / data.vehicle.speed
        return travel_time

    def __init__(self, data):
        """Initializes the total time matrix."""
        self._total_time = {}

        # precompute total time to have time callback in O(1)
        for from_node in xrange(data.num_locations):
            self._total_time[from_node] = {}
            for to_node in xrange(data.num_locations):
                if from_node == to_node:
                    self._total_time[from_node][to_node] = 0
                else:
                    self._total_time[from_node][to_node] = (
                        self.service_time(data, from_node) +
                        self.travel_time(data, from_node, to_node))

    def time(self, from_node, to_node):
        """Returns the total time between the two nodes"""
        return self._total_time[from_node][to_node]

class SVGPrinter():
    """Generate Problem as svg file on stdout"""
    def __init__(self, args, data):
        """Initializes the printer"""
        self._args = args
        self._data = data
        self.red = r'#EA4335'
        self.green = r'#34A853'
        self.blue = r'#4285F4'
        self.yellow = r'#FBBC05'
        self.black = r'#101010'
        self.white = r'#FFFFFF'

    @property
    def data(self):
        """Gets the Data Problem"""
        return self._data

    def _print_header(self):
        """Prints svg header"""
        margin = 25
        print(r'<svg xmlns:xlink="http://www.w3.org/1999/xlink" '
              'xmlns="http://www.w3.org/2000/svg" version="1.1"\n'
              'width="{width}" height="{height}" '
              'viewBox="-{m} -{m} {width_margin} {height_margin}">'.format(
                  m=margin,
                  width=8*self.data.block_width+2*margin,
                  height=8*self.data.block_height+2*margin,
                  width_margin=8*self.data.block_width+2*margin,
                  height_margin=8*self.data.block_height+2*margin))

    @staticmethod
    def _print_footer():
        """Prints svg footer"""
        print(r'</svg>')

    def _print_grid(self):
        """Prints the city grid"""
        # Horizontal streets
        line_style = r'style="stroke:#969696;stroke-width:1"'
        for i in xrange(9):
            print(r'<line x1="0" y1="{y}" x2="{x}" y2="{y}" {style}/>'.format(
                y=i*self.data.block_height,
                x=8*self.data.block_width,
                style=line_style))
        # Vertical streets
        for i in xrange(9):
            print(r'<line x1="{x}" y1="0" x2="{x}" y2="{y}" {style}/>'.format(
                y=8*self.data.block_height,
                x=i*self.data.block_width,
                style=line_style))

    def _print_locations(self):
        """Prints the locations"""
        stroke_width = 5
        circle_radius = 25
        text_width = circle_radius - 5
        # Locations (depot:black, location:blue)
        depot_style = r'style="stroke-width:{sz};stroke:{fg};fill:{bg}"'.format(
            sz=stroke_width,
            fg=self.black,
            bg=self.white)
        location_style = r'style="stroke-width:{sz};stroke:{fg};fill:{bg}"'.format(
            sz=stroke_width,
            fg=self.blue,
            bg=self.white)
        text_style = r'style="text-anchor:middle;font-size:{sz};font-weight:bold"'.format(
            sz=text_width)
        for idx, loc in enumerate(self.data.locations):
            if idx == self.data.depot:
                print(r'<circle cx="{cx}" cy="{cy}" r="{r}" {style}/>'.format(
                    cx=loc[0],
                    cy=loc[1],
                    r=circle_radius,
                    style=depot_style))
            else:
                print(r'<circle cx="{cx}" cy="{cy}" r="{r}" {style}/>'.format(
                    cx=loc[0],
                    cy=loc[1],
                    r=circle_radius,
                    style=location_style))
            print(r'<text x="{x}" y="{y}" dy="{dy}" {style}>{id}</text>'.format(
                x=loc[0],
                y=loc[1],
                dy=text_width / 2,
                style=text_style,
                id=idx))

    def print(self):
        """Prints a full svg document on stdout"""
        self._print_header()
        self._print_grid()
        self._print_locations()
        self._print_footer()

def main():
    """Entry point of the program"""
    parser = argparse.ArgumentParser(description='Output VRP as svg image.')
    parser.add_argument('-c', '--capacity', help='use capacity constraints')
    parser.add_argument('-tw', '--time-window', help='use time-window constraints')
    parser.add_argument('-f', '--fuel', help='use fuel constraints')
    parser.add_argument('-r', '--ressource', help='use ressource constraints')
    parser.add_argument('-s', '--solution', help='print solution')
    args = vars(parser.parse_args())

    # Instanciate the data problem.
    data = DataProblem()

    # Create solver if needed
    if args['solution'] is True:
        routing = pywrapcp.RoutingModel(data.num_locations, data.num_vehicles, data.depot)
        dist_callback = CreateDistanceCallback(data).distance
        routing.SetArcCostEvaluatorOfAllVehicles(dist_callback)


    # Print svg on cout
    printer = SVGPrinter(args, data)
    printer.print()

if __name__ == '__main__':
    main()
