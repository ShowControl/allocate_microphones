#!/bin/bash
# File: verify_files_template.sh date: July 7, 2019, Author: John Sauter
# This file is executed as verify_files.sh to check allocate_microphones.

if [[ !("perils_microphones.pdf" -nt "perils.txt") ]]; then 
  exit 1;
fi

if [[ !("perils_timeline.pdf" -nt "perils.txt") ]]; then
  exit 1;
fi

diff -q perils.txt.activities.tex expected_output/perils.txt.activities.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.actors.tex expected_output/perils.txt.actors.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.assignments.tex expected_output/perils.txt.assignments.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.csv expected_output/perils.txt.csv
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.microphone_channels.tex expected_output/perils.txt.microphone_channels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.microphone_labels.tex expected_output/perils.txt.microphone_labels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.microphone_moves.tex expected_output/perils.txt.microphone_moves.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.microphone_switching.tex expected_output/perils.txt.microphone_switching.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.stage_manager_after_show.tex expected_output/perils.txt.stage_manager_after_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.stage_manager_at_intermission.tex expected_output/perils.txt.stage_manager_at_intermission.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.stage_manager_before_show.tex expected_output/perils.txt.stage_manager_before_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.stage_manager_during_show.tex expected_output/perils.txt.stage_manager_during_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.X32TC.txt expected_output/perils.txt.X32TC.txt
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.parameters.tex expected_output/perils.txt.parameters.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q perils.txt.DCA_usage.tex expected_output/perils.txt.DCA_usage.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi
