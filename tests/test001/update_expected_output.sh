#!/bin/bash
# File: update_expected_output.sh, author: John Sauter, date: September 21, 2019
# After verifying that the files created by allocate_microphones are correct,
# copy them to expected_output/ so future tests will verify that they
# have not changed.
#
cp test001.txt.activities.tex expected_output/
cp test001.txt.actors.tex expected_output/
cp test001.txt.assignments.tex expected_output/
cp test001.txt.csv expected_output/
cp test001.txt.DCA_usage.tex expected_output/
cp test001.txt.microphone_channels.tex expected_output/
cp test001.txt.microphone_labels.tex expected_output/
cp test001.txt.microphone_moves.tex expected_output/
cp test001.txt.microphone_switching_annotated.tex expected_output/
cp test001.txt.microphone_switching.tex expected_output/
cp test001.txt.parameters.tex expected_output/
cp test001.txt.stage_manager_after_show.tex expected_output/
cp test001.txt.stage_manager_at_intermission.tex expected_output/
cp test001.txt.stage_manager_before_show.tex expected_output/
cp test001.txt.stage_manager_during_show.tex expected_output/
cp test001.txt.X32TC.txt expected_output/
#
# End of file update_expected_output.sh

