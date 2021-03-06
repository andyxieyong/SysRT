
echo "Setting LIBRARY PATHS!"

# define the SYSRT home directory
export SYSRT; SYSRT=/home/jun/Downloads/SysRT
echo $SYSRT

# extend the search path for dynamically-linked libraries
if [ -z "$LD_LIBRARY_PATH" ]; then
	export LD_LIBRARY_PATH; LD_LIBRARY_PATH=$SYSRT/lib;
else
	export LD_LIBRARY_PATH; LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SYSRT/lib;
fi
