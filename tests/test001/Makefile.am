dist_check_DATA = test001_microphones.tex \
test001_timeline.tex test001.txt \
expected_output/test001.txt.activities.tex \
expected_output/test001.txt.actors.tex \
expected_output/test001.txt.assignments.tex \
expected_output/test001.txt.csv \
expected_output/test001.txt.microphone_channels.tex \
expected_output/test001.txt.microphone_labels.tex \
expected_output/test001.txt.microphone_moves.tex \
expected_output/test001.txt.microphone_switching.tex \
expected_output/test001.txt.stage_manager_after_show.tex \
expected_output/test001.txt.stage_manager_at_intermission.tex \
expected_output/test001.txt.stage_manager_before_show.tex \
expected_output/test001.txt.stage_manager_during_show.tex \
expected_output/test001.txt.X32TC.txt \
expected_output/test001.txt.parameters.tex \
expected_output/test001.txt.DCA_usage.tex

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : verify_files_template.sh test001_microphones.pdf \
test001_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output/ ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = test001_microphones.aux test001_microphones.log \
test001_microphones.pdf test001_microphones.toc test001_timeline.aux \
test001_timeline.log test001_timeline.pdf test001_timeline.toc \
test001.txt.activities.tex test001.txt.actors.tex \
test001.txt.assignments.tex test001.txt.csv \
test001.txt.microphone_channels.tex test001.txt.microphone_labels.tex \
test001.txt.microphone_moves.tex test001.txt.microphone_switching.tex \
test001.txt.microphone_switching_annotated.tex \
test001.txt.stage_manager_after_show.tex \
test001.txt.stage_manager_at_intermission.tex \
test001.txt.stage_manager_before_show.tex \
test001.txt.stage_manager_during_show.tex \
test001.txt.X32TC.txt test001.txt.parameters.tex \
test001_microphones.out test001_timeline.out \
test001.txt.DCA_usage.tex verify_files.sh 

test001.txt.activities.tex : test001.txt
	if [ ! -r "test001.txt" ] ; then cp -v $(srcdir)/test001.txt . ; fi
	if [ ! -r "test001_microphones.tex" ] ; then cp -v $(srcdir)/test001_microphones.tex . ; fi
	if [ ! -r "test001_timeline.tex" ] ; then cp -v $(srcdir)/test001_timeline.tex . ; fi
	allocate_microphones test001.txt

test001_microphones.pdf : test001_microphones.tex test001.txt.activities.tex
	pdflatex test001_microphones.tex
	pdflatex test001_microphones.tex

test001_timeline.pdf : test001_timeline.tex test001.txt.activities.tex
	pdflatex test001_timeline.tex
	pdflatex test001_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f test001.txt ; rm -f test001_microphones.tex ; rm -f test001_timeline.tex ; rm copied_from_srcdir ; fi
