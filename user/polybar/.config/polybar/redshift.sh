#!/bin/sh

_help() {
	echo "$0 [status|toggle]"
	exit 1
}

_status() {
	if systemctl --user is-active redshift >/dev/null; then
		echo ""
		return 0
	else
		echo "盛"
		return 1
	fi
}

_toggle() {
	if _status >/dev/null; then
	    systemctl --user stop redshift
	else
	    systemctl --user start redshift
	fi
}

case "$1" in
	status)  _status ;;
	toggle)  _toggle ;;
	*)       _help   ;;
esac
