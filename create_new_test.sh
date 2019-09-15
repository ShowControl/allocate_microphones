#!/bin/bash
# Create a new test for allocate_microphones.
# File: create_new_test.sh, author: John Sauter, date: September 15, 2019.
#
# The parameter is the name of the new test.
testname=${1}

# Create a directory to hold the test.
if [ -d tests/${testname} ]; then
    echo "${testname} already exists."
    exit 1
fi
mkdir tests/${testname}

# Using the first test as a template, copy the necessary files into this
# new test directory.
rsync -a tests/test001/ tests/${testname}

# rename the files.
function rename_file () {
    local inner_file_name=$1
    if [ -d ${inner_file_name} ]; then
	for inner_inner_file_name in ${inner_file_name}/* ; do
	    rename_file "${inner_inner_file_name}"
	done
    else
	local prefix=${inner_file_name%/*}
	local old_suffix=${inner_file_name##*/}
	local new_suffix_a=${old_suffix%%test001*}
	local new_suffix_b=${old_suffix##*test001}
	if [ ".${old_suffix}." != ".${new_suffix_a}." ]; then
	       mv -v "${inner_file_name}" "${prefix}/${new_suffix_a}${testname}${new_suffix_b}"
	fi
    fi
}


for file_name in tests/${testname}/*; do
    rename_file "${file_name}"
done

# Edit the verious files.
# TODO

# End of file create_new_test.sh
