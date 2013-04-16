#
# Add indeep completion if indeep is resolvable
#

which indeep &>/dev/null
if [ $? -eq 0 ]
then
	# Use of the standards --help returned by indeep
	compdef _gnu_generic indeep

fi