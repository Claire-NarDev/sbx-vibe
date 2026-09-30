# Vibe sandbox
# sbx run $KIT --name $(basename "$1") vibe "$1"
function vibe() {
	local arg=${1:-$PWD}
	if [ -d "$arg" ]; then
		local dir=$(realpath $arg)
		local name="$(basename $dir)"
		sbx run --kit "$KIT" --name "$name" vibe "$dir"
	else
		echo "$arg is not a directory."
	fi
}
export -f vibe
