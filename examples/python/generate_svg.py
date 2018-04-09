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
from six.moves import xrange

# Problem Data Definition
class DataProblem():
    """Stores the data for the problem"""
    def __init__(self):
        """Initializes the data for the problem"""
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
        self._locations = [(loc[0]*self.block_width, loc[1]*self.block_height) for loc in locations]
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

def print_svg(data):
    """print a full svg document on cout"""
    print(r'<svg xmlns:xlink="http://www.w3.org/1999/xlink" '
          'xmlns="http://www.w3.org/2000/svg" version="1.1"\n'
          'width="{width}" height="{height}" '
          'viewBox="-25 -25 {width_margin} {height_margin}">'.format(
              width=8*data.block_width,
              height=8*data.block_height,
              width_margin=8*data.block_width+50,
              height_margin=8*data.block_height+50))

    red = r'#EA4335'
    green = r'#34A853'
    blue = r'#4285F4'
    yellow = r'#FBBC05'
    black = r'#101010'
    white = r'#FFFFFF'
    # Horizontal streets
    line_style = r'style="stroke:#969696;stroke-width:1"'
    for i in xrange(9):
        print(r'<line x1="0" y1="{y}" x2="{x}" y2="{y}" {style}/>'.format(
            y=i*data.block_height,
            x=8*data.block_width,
            style=line_style))
    # Vertical streets
    for i in xrange(9):
        print(r'<line x1="{x}" y1="0" x2="{x}" y2="{y}" {style}/>'.format(
            y=8*data.block_height,
            x=i*data.block_width,
            style=line_style))
    # Locations (blue)
    depot_style = r'style="stroke:{stroke};stroke-width:4;fill:{fill}"'.format(
        stroke=black,
        fill=white)
    location_style = r'style="stroke:{stroke};stroke-width:4;fill:{fill}"'.format(
        stroke=blue,
        fill=white)
    text_style = r'style="text-anchor:middle;font-weight:bold;font-size:20"'
    for idx, loc in enumerate(data.locations):
        if idx == data.depot:
            print(r'<circle cx="{x}" cy="{y}" r="20" {style}/>'.format(
                x=data.locations[data.depot][0],
                y=data.locations[data.depot][1],
                style=depot_style))
        else:
            print(r'<circle cx="{x}" cy="{y}" r="20" {style}/>'.format(
                x=loc[0],
                y=loc[1],
                style=location_style))
        print(r'<text x="{x}" y="{y}" dy="10" {style}>{id}</text>'.format(
            x=loc[0],
            y=loc[1],
            style=text_style,
            id=idx))
    print(r'</svg>')

def main():
    """Entry point of the program"""
    # Instanciate the data problem.
    data = DataProblem()
    # Print svg on cout
    print_svg(data)

if __name__ == '__main__':
    main()
