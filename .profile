export EDITOR=vim
export BROWSER=chromium
export PAGER=less
export LESSHISTFILE=-

if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
	startx &> /dev/null
fi
