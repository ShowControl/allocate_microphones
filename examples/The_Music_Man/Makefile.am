dist_check_DATA = Music_Man_microphones.tex \
Music_Man_timeline.tex Music_Man.txt \
expected_output/Music_Man.txt.activities.tex \
expected_output/Music_Man.txt.actors.tex \
expected_output/Music_Man.txt.assignments.tex \
expected_output/Music_Man.txt.csv \
expected_output/Music_Man.txt.microphone_channels.tex \
expected_output/Music_Man.txt.microphone_labels.tex \
expected_output/Music_Man.txt.microphone_moves.tex \
expected_output/Music_Man.txt.microphone_switching.tex \
expected_output/Music_Man.txt.parameters.tex \
expected_output/Music_Man.txt.DCA_usage.tex \
expected_output/Music_Man.txt.stage_manager_after_show.tex \
expected_output/Music_Man.txt.stage_manager_at_intermission.tex \
expected_output/Music_Man.txt.stage_manager_before_show.tex \
expected_output/Music_Man.txt.stage_manager_during_show.tex \
expected_output/Music_Man.txt.X32TC.txt

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : $(srcdir)/verify_files_template.sh Music_Man_microphones.pdf Music_Man_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = Music_Man_microphones.aux Music_Man_microphones.log \
Music_Man_microphones.pdf Music_Man_microphones.toc Music_Man_timeline.aux \
Music_Man_timeline.log Music_Man_timeline.pdf \
Music_Man_timeline.toc Music_Man.txt.activities.tex \
Music_Man.txt.actors.tex Music_Man.txt.assignments.tex Music_Man.txt.csv \
Music_Man.txt.microphone_channels.tex Music_Man.txt.microphone_labels.tex \
Music_Man.txt.microphone_moves.tex Music_Man.txt.microphone_switching.tex \
Music_Man.txt.microphone_switching_annotated.tex \
Music_Man.txt.parameters.tex \
Music_Man.txt.stage_manager_after_show.tex \
Music_Man.txt.stage_manager_at_intermission.tex \
Music_Man.txt.stage_manager_before_show.tex \
Music_Man.txt.stage_manager_during_show.tex \
Music_Man_microphones.out Music_Man_timeline.out \
verify_files.sh Music_Man.txt.X32TC.txt Music_Man.txt.DCA_usage.tex

Music_Man.txt.activities.tex : Music_Man.txt
	if [ ! -r "Music_Man.txt" ] ; then cp -v $(srcdir)/Music_Man.txt . ; fi
	if [ ! -r "Music_Man_microphones.tex" ] ; then cp -v $(srcdir)/Music_Man_microphones.tex . ; fi
	if [ ! -r "Music_Man_timeline.tex" ] ; then cp -v $(srcdir)/Music_Man_timeline.tex . ; fi
	allocate_microphones Music_Man.txt --output-directory=.

Music_Man_microphones.pdf : Music_Man_microphones.tex Music_Man.txt.activities.tex
	pdflatex Music_Man_microphones.tex
	pdflatex Music_Man_microphones.tex

Music_Man_timeline.pdf : Music_Man_timeline.tex Music_Man.txt.activities.tex
	pdflatex Music_Man_timeline.tex
	pdflatex Music_Man_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f Music_Man.txt ; rm -f Music_Man_microphones.tex ; rm -f Music_Man_timeline.tex ; rm copied_from_srcdir ; fi
