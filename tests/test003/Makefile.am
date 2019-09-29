dist_check_DATA = test003_microphones.tex \
test003_timeline.tex test003.txt \
expected_output/test003.txt.activities.tex \
expected_output/test003.txt.actors.tex \
expected_output/test003.txt.assignments.tex \
expected_output/test003.txt.csv \
expected_output/test003.txt.microphone_channels.tex \
expected_output/test003.txt.microphone_labels.tex \
expected_output/test003.txt.microphone_moves.tex \
expected_output/test003.txt.microphone_switching.tex \
expected_output/test003.txt.stage_manager_after_show.tex \
expected_output/test003.txt.stage_manager_at_intermission.tex \
expected_output/test003.txt.stage_manager_before_show.tex \
expected_output/test003.txt.stage_manager_during_show.tex \
expected_output/test003.txt.X32TC.txt \
expected_output/test003.txt.parameters.tex \
expected_output/test003.txt.DCA_usage.tex

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : verify_files_template.sh test003_microphones.pdf \
test003_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output/ ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = test003_microphones.aux test003_microphones.log \
test003_microphones.pdf test003_microphones.toc test003_timeline.aux \
test003_timeline.log test003_timeline.pdf test003_timeline.toc \
test003.txt.activities.tex test003.txt.actors.tex \
test003.txt.assignments.tex test003.txt.csv \
test003.txt.microphone_channels.tex test003.txt.microphone_labels.tex \
test003.txt.microphone_moves.tex test003.txt.microphone_switching.tex \
test003.txt.microphone_switching_annotated.tex \
test003.txt.stage_manager_after_show.tex \
test003.txt.stage_manager_at_intermission.tex \
test003.txt.stage_manager_before_show.tex \
test003.txt.stage_manager_during_show.tex \
test003.txt.X32TC.txt test003.txt.parameters.tex \
test003_microphones.out test003_timeline.out \
test003.txt.DCA_usage.tex verify_files.sh 

test003.txt.activities.tex : test003.txt
	if [ ! -r "test003.txt" ] ; then cp -v $(srcdir)/test003.txt . ; fi
	if [ ! -r "test003_microphones.tex" ] ; then cp -v $(srcdir)/test003_microphones.tex . ; fi
	if [ ! -r "test003_timeline.tex" ] ; then cp -v $(srcdir)/test003_timeline.tex . ; fi
	allocate_microphones test003.txt

test003_microphones.pdf : test003_microphones.tex test003.txt.activities.tex
	pdflatex test003_microphones.tex
	pdflatex test003_microphones.tex

test003_timeline.pdf : test003_timeline.tex test003.txt.activities.tex
	pdflatex test003_timeline.tex
	pdflatex test003_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f test003.txt ; rm -f test003_microphones.tex ; rm -f test003_timeline.tex ; rm copied_from_srcdir ; fi
