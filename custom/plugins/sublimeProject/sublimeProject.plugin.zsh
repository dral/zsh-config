function stp() {
	local file="lectures.sublime-project"
	
	if [[ -a ${file} ]]; then
		st ${file}
	else
		st .
	fi
}