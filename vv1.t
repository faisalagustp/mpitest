#!/bin/bash
#SBATCH -J vv1     # job name
#SBATCH -o vv1.o%j       # output and error file name (%j expands to jobID)
#SBATCH -n 16              # total number of mpi tasks requested
#SBATCH -p normal     # queue (partition) -- normal, development, etc.
#SBATCH -t 01:30:00        # run time (hh:mm:ss) - 1.5 hours
#SBATCH --mail-user=faisalat@ui.ac.id
#SBATCH --mail-type=begin  # email me when the job starts
#SBATCH --mail-type=end    # email me when the job finishes
ibrun ./vv1        # run the MPI executable named a.out
