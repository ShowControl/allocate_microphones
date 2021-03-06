#!/bin/bash
# File: verify_files_template.sh date: September 15, 2019, Author: John Sauter
# This file is executed as verify_files.sh to check allocate_microphones.

if [[ !("test001_microphones.pdf" -nt "test001.txt") ]]; then 
  exit 1;
fi

if [[ !("test001_timeline.pdf" -nt "test001.txt") ]]; then
  exit 1;
fi

diff -q test001.txt.activities.tex expected_output/test001.txt.activities.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.actors.tex expected_output/test001.txt.actors.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.assignments.tex expected_output/test001.txt.assignments.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.csv expected_output/test001.txt.csv
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.microphone_channels.tex expected_output/test001.txt.microphone_channels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.microphone_labels.tex expected_output/test001.txt.microphone_labels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.microphone_moves.tex expected_output/test001.txt.microphone_moves.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.microphone_switching.tex expected_output/test001.txt.microphone_switching.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.stage_manager_after_show.tex expected_output/test001.txt.stage_manager_after_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.stage_manager_at_intermission.tex expected_output/test001.txt.stage_manager_at_intermission.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.stage_manager_before_show.tex expected_output/test001.txt.stage_manager_before_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.stage_manager_during_show.tex expected_output/test001.txt.stage_manager_during_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.X32TC.txt expected_output/test001.txt.X32TC.txt
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.parameters.tex expected_output/test001.txt.parameters.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q test001.txt.DCA_usage.tex expected_output/test001.txt.DCA_usage.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi
