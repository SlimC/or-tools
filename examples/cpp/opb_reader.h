// Copyright 2010-2013 Google
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
#ifndef OR_TOOLS_SAT_OPB_READER_H_
#define OR_TOOLS_SAT_OPB_READER_H_

#include <string>
#include <vector>

#include "base/integral_types.h"
#include "base/logging.h"
#include "base/strtoint.h"
#include "base/file.h"
#include "base/split.h"
#include "sat/boolean_problem.pb.h"
#include "util/filelineiter.h"

using std::string;

namespace operations_research {
namespace sat {

// This class loads a file in pbo file format into a LinearBooleanProblem.
// The format is described here:
//   http://www.cril.univ-artois.fr/PB12/format.pdf
class OpbReader {
 public:
  OpbReader() {}

  // Loads the given opb filename into the given problem.
  bool Load(const string& filename, LinearBooleanProblem* problem) {
    problem->Clear();
    problem->set_name(ExtractProblemName(filename));
    problem->set_type(LinearBooleanProblem::SATISFIABILITY);

    num_variables_ = 0;
    int num_lines = 0;
    for (const string& line : FileLines(filename)) {
      ++num_lines;
      ProcessNewLine(problem, line);
    }
    if (num_lines == 0) {
      LOG(FATAL) << "File '" << filename << "' is empty or can't be read.";
    }
    problem->set_num_variables(num_variables_);
    return true;
  }

 private:
  // Since the problem name is not stored in the cnf format, we infer it from
  // the file name.
  static string ExtractProblemName(const string& filename) {
    const int found = filename.find_last_of("/");
    const string problem_name = found != string::npos ?
        filename.substr(found + 1) : filename;
    return problem_name;
  }

  void ProcessNewLine(LinearBooleanProblem* problem, const string& line) {
    static const char kWordDelimiters[] = " ";
    std::vector<string> words;
    SplitStringUsing(line, kWordDelimiters, &words);
    if (words.size() == 0 || words[0].empty() || words[0][0] == '*') {
      return;
    }

    if (words[0] == "min:") {
      problem->set_type(LinearBooleanProblem::MINIMIZATION);
      LinearObjective* objective = problem->mutable_objective();
      for (int i = 1; i < words.size(); ++i) {
        const string& word = words[i];
        if (word.empty() || word[0] == ';') continue;
        if (word[0] == 'x') {
          const int literal = atoi32(word.substr(1));
          num_variables_ = std::max(num_variables_, literal);
          objective->add_literals(literal);
        } else {
          objective->add_coefficients(atoi64(word));
        }
      }
      if (objective->literals_size() != objective->coefficients_size()) {
        LOG(INFO) << "words.size() = " << words.size();
        LOG(FATAL) << "Failed to parse objective:\n " << line;
      }
      return;
    }
    LinearBooleanConstraint* constraint = problem->add_constraints();
    for (int i = 0; i < words.size(); ++i) {
      const string& word = words[i];
      CHECK(!word.empty());
      if (word == ">=") {
        CHECK_LT(i + 1, words.size());
        constraint->set_lower_bound(atoi64(words[i+1]));
        break;
      } else if (word == "=") {
        CHECK_LT(i + 1, words.size());
        constraint->set_upper_bound(atoi64(words[i+1]));
        constraint->set_lower_bound(atoi64(words[i+1]));
        break;
      } else {
        if (word[0] == 'x') {
          const int literal = atoi32(word.substr(1));
          num_variables_ = std::max(num_variables_, literal);
          constraint->add_literals(literal);
        } else {
          constraint->add_coefficients(atoi64(word));
        }
      }
    }
    if (constraint->literals_size() != constraint->coefficients_size()) {
      LOG(FATAL) << "Failed to parse constraint:\n " << line;
    }
  }

  int num_variables_;
  DISALLOW_COPY_AND_ASSIGN(OpbReader);
};

}  // namespace sat
}  // namespace operations_research

#endif  // OR_TOOLS_SAT_OPB_READER_H_