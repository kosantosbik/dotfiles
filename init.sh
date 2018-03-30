#!/bin/bash

case $2 in
    "emacs")
	case $1 in
	    "export")
		return_dir=`pwd`
		cd emacs
		cp myinit.org init.el ~/.emacs.d/
		killall -9 emacs
		emacs --daemon
		cd $return_dir
		;;
	    "import")
		return_dir=`pwd`
		cp ~/.emacs.d/init.el ~/.emacs.d/myinit.org ./emacs/
		cd $return_dir
		;;
	esac
esac
