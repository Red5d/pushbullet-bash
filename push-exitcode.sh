#!/bin/bash
# Partly inspired by pace (https://github.com/esamson/pace)

# Send a message through pushbullet after a command has finished.
# Can be called in two ways:
# apt-get update; pb # will just report the exit status.
# pb apt-get update # will send the command, time till exit and return code.

pb() {
	EXITCODE=$?

	if [ ! -z $1 ]; then
		# when called with arguments execute these
		START_TIME=$SECONDS
		eval $*
		EXITCODE=$?
		ELAPSED_TIME=$(($SECONDS - $START_TIME))
		TIME="$(($ELAPSED_TIME / 60)) min $(($ELAPSED_TIME % 60)) sec"
	else
		TIME="duration unknown"
	fi

	if [ $EXITCODE -eq 0 ] ; then
		PUSH_TITLE="SUCCESS!"
	else
		PUSH_TITLE="FAIL!"
	fi

	pushbullet push all note "$PUSH_TITLE Command completed on $(hostname)" "Finished $* in $TIME. Return code was $EXITCODE."
}
