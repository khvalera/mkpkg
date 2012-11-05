#!/bin/bash
# This script runs tests 

TESTS="build_stop_on_error"

build_stop_on_error() {
	( cd build-stop-on-error
		mkpkg 2>/dev/null >/dev/null
		ret=$?
		if [ "$ret" != "0" ] ; then
			echo "OK"
		else
			echo "FAILED"
		fi
	)

}

for i in $TESTS ; do
	echo $i: $($i)
done
