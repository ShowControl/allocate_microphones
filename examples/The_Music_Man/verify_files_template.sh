#!/bin/bash
# File: verify_files_template.sh date: July 7, 2019, Author: John Sauter
# This file is executed as verify_files.sh to check allocate_microphones.

if [[ !("Music_Man_microphones.pdf" -nt "Music_Man.txt") ]]; then 
  exit 1;
fi

if [[ !("Music_Man_timeline.pdf" -nt "Music_Man.txt") ]]; then
  exit 1;
fi

diff -q Music_Man.txt.activities.tex expected_output/Music_Man.txt.activities.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.actors.tex expected_output/Music_Man.txt.actors.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.assignments.tex expected_output/Music_Man.txt.assignments.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.csv expected_output/Music_Man.txt.csv
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.microphone_channels.tex expected_output/Music_Man.txt.microphone_channels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.microphone_labels.tex expected_output/Music_Man.txt.microphone_labels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.microphone_moves.tex expected_output/Music_Man.txt.microphone_moves.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.microphone_switching.tex expected_output/Music_Man.txt.microphone_switching.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.stage_manager_after_show.tex expected_output/Music_Man.txt.stage_manager_after_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.stage_manager_at_intermission.tex expected_output/Music_Man.txt.stage_manager_at_intermission.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.stage_manager_before_show.tex expected_output/Music_Man.txt.stage_manager_before_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.stage_manager_during_show.tex expected_output/Music_Man.txt.stage_manager_during_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.X32TC.txt expected_output/Music_Man.txt.X32TC.txt
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.parameters.tex expected_output/Music_Man.txt.parameters.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q Music_Man.txt.DCA_usage.tex expected_output/Music_Man.txt.DCA_usage.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

