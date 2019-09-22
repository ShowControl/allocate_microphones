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
# new test directory, renaming them and updating their contents.

# copy and update a file or directory.
function copy_and_update_file () {
    local inner_file_name=$1
    local inner_target_file_name=$2
    #echo "inner file name: ${inner_file_name}."
    #echo "inner target file name: ${inner_target_file_name}."
    if [ -d ${inner_file_name} ]; then
	local new_directory_name=${inner_target_file_name}
	mkdir ${new_directory_name}
	#echo "make directory ${new_directory_name}."
	for inner_inner_file_name in ${inner_file_name}/* ; do
	    #echo "inner inner file name: ${inner_inner_file_name}."
	    local base_inner_file_name=${inner_inner_file_name##*/}
	    #echo "base inner file name: ${base_inner_file_name}."
	    local base_inner_target_file_name=${base_inner_file_name//test001/${testname}}
	    #echo "base inner target file name: ${base_inner_target_file_name}."
	    local inner_inner_target_file_name="${new_directory_name}/${base_inner_target_file_name}"
	    #echo "inner inner target file name: ${inner_inner_target_file_name}."
	    copy_and_update_file ${inner_inner_file_name} ${inner_inner_target_file_name}
	done
    else
	#echo " new file: ${inner_target_file_name}."
	gawk --source="{ gsub(/test001/, \"${testname}\"); print }" \
	     ${inner_file_name} >${inner_target_file_name}
    fi
}


for file_name in tests/test001/*; do
    target_file_name=${file_name//test001/${testname}}
    copy_and_update_file "${file_name}" "${target_file_name}"
done

# Update configure.ac and tests/Makefile.am to include the new test.

gawk --source="/test001/{print;print \"\t\t tests/${testname}/Makefile\";next}1" configure.ac >configure_temp.ac
rm configure.ac
mv configure_temp.ac configure.ac

echo -n "SUBDIRS =" >Makefile_temp.ac
for file_name in tests/*; do
    if [ -d ${file_name} ]; then
	test_name=${file_name##*/}
	echo -n "${test_name} " >> Makefile_temp.ac
    fi
done
echo "" >>Makefile_temp.ac
rm tests/Makefile.am
mv Makefile_temp.ac tests/Makefile.am

# Rebuild the Makefiles.
./bash autogen.sh --download
./configure
make
make check
make distcheck

# End of file create_new_test.sh
