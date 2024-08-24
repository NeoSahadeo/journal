#!/usr/bin/bash

source .venv/bin/activate
command_to_run="make html"
folder_to_search="source"
directories=`find $folder_to_search -type f`
files=()

# Get an initial timestamp for all files in folder
getTimeStamps()
{
	local_files=()
	for entry in $directories; do
		local_files+=("$(date -r $entry "+%m%d%Y%H%M%S")")
	done
	echo ${local_files[@]}
}

refreshMessage()
{
	echo "Refreshing build"
}

refreshMessage
$command_to_run
files=($(getTimeStamps))

echo "Watching file changes"
while true; do
	local_files=($(getTimeStamps))
	local_files_count=${#local_files[@]}

	files_count=${#files[@]}

	if [[ $files_count -ne $local_files_count ]]; then
		refreshMessage
		$command_to_run
		files=($(getTimeStamps))
		echo "Watching file changes"
		continue
	fi
	for index in "${!files[@]}"; do
		numb_1=${local_files[$index]}
		numb_2=${files[$index]}
		if [[ $numb_1 != $numb_2 ]]; then
			refreshMessage
			$command_to_run
			echo "Watching file changes"
			files=($(getTimeStamps))
			break
		fi
	done
	sleep 1
done
