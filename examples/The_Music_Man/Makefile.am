dist_check_DATA = music_man_microphones.tex music_man_timeline.tex music_man.txt expected_output/music_man.txt.activities.tex expected_output/music_man.txt.actors.tex expected_output/music_man.txt.assignments.tex expected_output/music_man.txt.csv expected_output/music_man.txt.microphone_channels.tex expected_output/music_man.txt.microphone_labels.tex expected_output/music_man.txt.microphone_moves.tex expected_output/music_man.txt.microphone_switching.tex expected_output/music_man.txt.stage_manager_after_show.tex expected_output/music_man.txt.stage_manager_at_intermission.tex expected_output/music_man.txt.stage_manager_before_show.tex expected_output/music_man.txt.stage_manager_during_show.tex

dist_check_SCRIPTS = verify_files_template.sh

TESTS = verify_files.sh

verify_files.sh : $(srcdir)/verify_files_template.sh music_man_microphones.pdf music_man_timeline.pdf
	cp $(srcdir)/verify_files_template.sh verify_files.sh
	if [ ! -d "expected_output" ] ; then mkdir expected_output ; rsync -rv $(srcdir)/expected_output/ expected_output ; touch copied_from_srcdir ; fi
	chmod +x verify_files.sh

CLEANFILES = music_man_microphones.aux music_man_microphones.log music_man_microphones.pdf music_man_microphones.toc music_man_timeline.aux music_man_timeline.log music_man_timeline.pdf music_man_timeline.toc music_man.txt.activities.tex music_man.txt.actors.tex music_man.txt.assignments.tex music_man.txt.csv music_man.txt.microphone_channels.tex music_man.txt.microphone_labels.tex music_man.txt.microphone_moves.tex music_man.txt.microphone_switching.tex music_man.txt.microphone_switching_annotated.tex music_man.txt.stage_manager_after_show.tex music_man.txt.stage_manager_at_intermission.tex music_man.txt.stage_manager_before_show.tex music_man.txt.stage_manager_during_show.tex music_man.txt.X32TC.txt verify_files.sh

music_man.txt.activities.tex : music_man.txt
	if [ ! -r "music_man.txt" ] ; then cp -v $(srcdir)/music_man.txt . ; fi
	if [ ! -r "music_man_microphones.tex" ] ; then cp -v $(srcdir)/music_man_microphones.tex . ; fi
	if [ ! -r "music_man_timeline.tex" ] ; then cp -v $(srcdir)/music_man_timeline.tex . ; fi
	allocate_microphones music_man.txt --output-directory=.

music_man_microphones.pdf : music_man_microphones.tex music_man.txt.activities.tex
	pdflatex music_man_microphones.tex
	pdflatex music_man_microphones.tex

music_man_timeline.pdf : music_man_timeline.tex music_man.txt.activities.tex
	pdflatex music_man_timeline.tex
	pdflatex music_man_timeline.tex

clean-local: clean-local-check
.PHONEY: clean-local-check
clean-local-check:
	if [ -e "copied_from_srcdir" ] ; then rm -rf expected_output/* ; rm -f music_man.txt ; rm -f music_man_microphones.tex ; rm -f music_man_timeline.tex ; rm copied_from_srcdir ; fi

