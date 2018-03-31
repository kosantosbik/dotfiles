#!/bin/bash

return_dir=`pwd`
case $2 in
    "emacs")
	case $1 in
	    "export") 
                cd emacs
		cp myinit.org init.el ~/.emacs.d/
		killall -9 emacs
		emacs --daemon
		;;
	    "import") 
		cp ~/.emacs.d/init.el ~/.emacs.d/myinit.org ./emacs/ 
		;;
	esac
	;;
    "bashrc")
	case $1 in
	    "export")
		cp bashrc ~/.bashrc
		source ~/.bashrc
		;;
	    "import")
		cp ~/.bashrc bashrc
		;;
	esac
	;;
esac
cd $return_dir
