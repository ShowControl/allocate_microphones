#!/bin/bash
# File: verify_files_template.sh date: April 26, 2011, Author: John Sauter
# This file is executed as verify_files.sh to check allocate_microphones.

if [[ !("music_man_microphones.pdf" -nt "music_man.txt") ]]; then 
  exit 1;
fi

if [[ !("music_man_timeline.pdf" -nt "music_man.txt") ]]; then
  exit 1;
fi

diff -q music_man.txt.activities.tex expected_output/music_man.txt.activities.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.actors.tex expected_output/music_man.txt.actors.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.assignments.tex expected_output/music_man.txt.assignments.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.csv expected_output/music_man.txt.csv
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.microphone_channels.tex expected_output/music_man.txt.microphone_channels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.microphone_labels.tex expected_output/music_man.txt.microphone_labels.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.microphone_moves.tex expected_output/music_man.txt.microphone_moves.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.microphone_switching.tex expected_output/music_man.txt.microphone_switching.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.stage_manager_after_show.tex expected_output/music_man.txt.stage_manager_after_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.stage_manager_at_intermission.tex expected_output/music_man.txt.stage_manager_at_intermission.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.stage_manager_before_show.tex expected_output/music_man.txt.stage_manager_before_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

diff -q music_man.txt.stage_manager_during_show.tex expected_output/music_man.txt.stage_manager_during_show.tex
diff_result=$?
if [[ $diff_result -ne 0 ]]; then
  exit $diff_result
fi

