#!/bin/bash

# Start slurm
sudo -u munge munged
slurmd
slurmctld

RUNARGS=""
if [ "x$*" != "x" ]
then
    RUNARGS=" -c $*"
fi

exec /bin/bash
