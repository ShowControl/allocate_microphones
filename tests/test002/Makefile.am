dist_check_DATA = test002_microphones.tex \
test002_timeline.tex test002.txt \
expected_output/test002.txt.activities.tex \
expected_output/test002.txt.actors.tex \
expected_output/test002.txt.assignments.tex \
expected_output/test002.txt.csv \
expected_output/test002.txt.microphone_channels.tex \
expected_output/test002.txt.microphone_labels.tex \
expected_output/test002.txt.microphone_moves.tex \
expected_output/test002.txt.microphone_switching.tex \
expected_output/test002.txt.stage_manager_after_show.tex \
expected_output/test002.txt.stage_manager_at_intermission.tex \
expected_output/test002.txt.stage_manager_before_show.tex \
expected_output/test002.txt.stage_manager_during_show.tex \
expected_output/test002.txt.X32TC.txt \
expected_output/test002.txt.parameters.tex \
expected_output/test002.txt.DCA_usage.tex

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : verify_files_template.sh test002_microphones.pdf \
test002_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output/ ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = test002_microphones.aux test002_microphones.log \
test002_microphones.pdf test002_microphones.toc test002_timeline.aux \
test002_timeline.log test002_timeline.pdf test002_timeline.toc \
test002.txt.activities.tex test002.txt.actors.tex \
test002.txt.assignments.tex test002.txt.csv \
test002.txt.microphone_channels.tex test002.txt.microphone_labels.tex \
test002.txt.microphone_moves.tex test002.txt.microphone_switching.tex \
test002.txt.microphone_switching_annotated.tex \
test002.txt.stage_manager_after_show.tex \
test002.txt.stage_manager_at_intermission.tex \
test002.txt.stage_manager_before_show.tex \
test002.txt.stage_manager_during_show.tex \
test002.txt.X32TC.txt test002.txt.parameters.tex \
test002_microphones.out test002_timeline.out \
test002.txt.DCA_usage.tex verify_files.sh 

test002.txt.activities.tex : test002.txt
	if [ ! -r "test002.txt" ] ; then cp -v $(srcdir)/test002.txt . ; fi
	if [ ! -r "test002_microphones.tex" ] ; then cp -v $(srcdir)/test002_microphones.tex . ; fi
	if [ ! -r "test002_timeline.tex" ] ; then cp -v $(srcdir)/test002_timeline.tex . ; fi
	allocate_microphones test002.txt

test002_microphones.pdf : test002_microphones.tex test002.txt.activities.tex
	pdflatex test002_microphones.tex
	pdflatex test002_microphones.tex

test002_timeline.pdf : test002_timeline.tex test002.txt.activities.tex
	pdflatex test002_timeline.tex
	pdflatex test002_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f test002.txt ; rm -f test002_microphones.tex ; rm -f test002_timeline.tex ; rm copied_from_srcdir ; fi
