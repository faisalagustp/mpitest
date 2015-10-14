#!/bin/bash
#SBATCH -J mm2     # job name
#SBATCH -o mm2.o%j       # output and error file name (%j expands to jobID)
#SBATCH -n 16              # total number of mpi tasks requested
#SBATCH -p development     # queue (partition) -- normal, development, etc.
#SBATCH -t 01:30:00        # run time (hh:mm:ss) - 1.5 hours
#SBATCH --mail-user=faisalat@ui.ac.id
#SBATCH --mail-type=begin  # email me when the job starts
#SBATCH --mail-type=end    # email me when the job finishes
ibrun ./mm2        # run the MPI executable named a.out
