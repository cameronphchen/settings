if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export PATH="/usr/local/git/bin:/usr/texbin"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/X11/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/Applications/MATLAB_R2012a.app/bin:$PATH"
#export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH"
export PATH="/Users/ChimatChen/anaconda/bin:$PATH"
export PATH="/Applications/git-annex.app/Contents/MacOS:$PATH"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home'


FSLDIR=/usr/local/fsl
. ${FSLDIR}/etc/fslconf/fsl.sh
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH

#/bin : For binaries usable before the /usr partition is mounted. This is used for trivial binaries used in the very early boot stage or ones that you need to have available in booting single-user mode. Think of binaries like cat, ls, etc.
#/sbin : Same, but for scripts with superuser (root) privileges required.
#/usr/bin : Same as first, but for general system-wide binaries.
#/usr/sbin : Same as above, but for scripts with superuser (root) privileges required.
#ls to be colourful
export CLICOLOR=1
#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
#export LSCOLORS="ExFxCxDxBxegedabagacad"

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
