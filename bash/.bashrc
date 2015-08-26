
####################################
# Enviromental variable definition #
####################################

export EDITOR=/usr/bin/emacs
export PATH=$PATH:$HOME/bin
export MANPATH=$MANPATH:$HOME/man
# form mac
#export VMDFILECHOOSER=FLTK 
# creating enviroment variable for forcefield files (top and par)
export FFIELD=$HOME/FF

# QD-tools
export QDLIB=$HOME/lib

# quantumHDF5
##export BASISCP2K=

## gromacs env vars
#export GMX_MAXBACKUP=4

# shortcuts
export QDRUN=${HOME}/lavoro/projects/quantumDots/MD-runs
export LQDRUN=/home/cosseddu/lavoro/projects/quantumDots/MD-runs
export BQDRUN=/home/scosseddu/projects/quantumDots/MD-runs

# source line
# aliases
test -s ~/.alias && . ~/.alias || true
test -s ~/.queuetools && . ~/.queuetools || true
test -s ~/.bashtools && . ~/.bashtools || true

#----------------


if test -z "$ADFHOME"; then
    export ADFHOME=$HOME/Programmi/ADF/unstable/ADF2014.07.r46708.app/Contents/MacOS/ADF.app/Contents/Resources/adfhome
    export ADFBIN=$ADFHOME/bin
    export ADFRESOURCES=$ADFHOME/atomicdata
    export SCMLICENSE=$HOME/adflicense.txt
    export PATH=$PATH:$ADFHOME/bin
fi

function adfdevelop () {
    export ADFHOME=$HOME/lavoro/projects/development/quantumDots/ADF/ADF2MD
    export ADFBIN=$ADFHOME/bin
    export ADFRESOURCES=$ADFHOME/atomicdata
    export SCMLICENSE=$HOME/adflicense.txt
    export PATH=$PATH:$ADFHOME/bin
}

