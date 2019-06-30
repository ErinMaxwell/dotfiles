# ~/.profile: executed by the command interpreter for login shells.
#
echo "***********************************************************"
echo "-> There are" $(users | wc -w) "users logged in."

CFLAGS="-O2 -pipe";	export CFLAGS
CXXFLAGS=${CFLAGS};	export CXXFLAGS
MAKEOPTS="-j2";		export MAKEOPTS

EDITOR=vi;	export EDITOR
BLOCKSIZE=K;	export BLOCKSIZE
PAGER=more;	export PAGER

# the default umask is set in /etc/profile
umask 022

KILL="^U"; export KILL
stty kill $KILL
stty hupcl ixon ixoff

case $(uname -s) in
"Linux")
	echo "Configuring environment for Linux"
	# put linux-specific tweaks here
	PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin:/opt/vmware-server/bin:/opt/vmware-server/sbin
	export PATH

	# Aliases that are OS-specific
	alias ls='ls -FC --color=none'
;;
"Darwin")
	echo "Configuring environment for MacOS X"
	LANG=en_US.UTF-8
	# MacPorts Setup
	if [ -d /opt/local/bin ]; then
		echo "Setting up MacPorts..."
		PATH=$PATH:/opt/local/bin:/opt/local/sbin:${HOME}/bin
	fi
	# Fink setup
	if [ -x /sw/bin/init.sh ]; then
		echo "Setting up Fink..."
		. /sw/bin/init.sh
	fi

	# Aliases that are OS-specific
	alias ls='ls -FC'
;;
*)
	echo "Configuring for UNKNOWN OS"
;;
esac

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f ~/.bashrc ]; then
	. ~/.bashrc
    fi
elif [ -f ~/.kshrc ]; then # ksh
	ENV=~/.kshrc
	export ENV
fi

# Setting PATH for Python 3.7
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
