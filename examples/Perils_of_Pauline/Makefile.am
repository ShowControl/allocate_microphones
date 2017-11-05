dist_check_DATA = perils_microphones.tex perils_timeline.tex perils.txt expected_output/perils.txt.activities.tex expected_output/perils.txt.actors.tex expected_output/perils.txt.assignments.tex expected_output/perils.txt.csv expected_output/perils.txt.microphone_channels.tex expected_output/perils.txt.microphone_labels.tex expected_output/perils.txt.microphone_moves.tex expected_output/perils.txt.microphone_switching.tex expected_output/perils.txt.stage_manager_after_show.tex expected_output/perils.txt.stage_manager_at_intermission.tex expected_output/perils.txt.stage_manager_before_show.tex expected_output/perils.txt.stage_manager_during_show.tex

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : verify_files_template.sh perils_microphones.pdf perils_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output/ ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = perils_microphones.aux perils_microphones.log perils_microphones.pdf perils_microphones.toc perils_timeline.aux perils_timeline.log perils_timeline.pdf perils_timeline.toc perils.txt.activities.tex perils.txt.actors.tex perils.txt.assignments.tex perils.txt.csv perils.txt.microphone_channels.tex perils.txt.microphone_labels.tex perils.txt.microphone_moves.tex perils.txt.microphone_switching.tex perils.txt.stage_manager_after_show.tex perils.txt.stage_manager_at_intermission.tex perils.txt.stage_manager_before_show.tex perils.txt.stage_manager_during_show.tex verify_files.sh 


perils.txt.activities.tex : perils.txt
	if [ ! -r "perils.txt" ] ; then cp -v $(srcdir)/perils.txt . ; fi
	if [ ! -r "perils_microphones.tex" ] ; then cp -v $(srcdir)/perils_microphones.tex . ; fi
	if [ ! -r "perils_timeline.tex" ] ; then cp -v $(srcdir)/perils_timeline.tex . ; fi
	allocate_microphones perils.txt

perils_microphones.pdf : perils_microphones.tex perils.txt.activities.tex
	pdflatex perils_microphones.tex
	pdflatex perils_microphones.tex

perils_timeline.pdf : perils_timeline.tex perils.txt.activities.tex
	pdflatex perils_timeline.tex
	pdflatex perils_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f perils.txt ; rm -f perils_microphones.tex ; rm -f perils_timeline.tex ; rm copied_from_srcdir ; fi
