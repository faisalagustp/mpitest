#!/bin/bash

mpicc -o vv1 vv_mult_blkstp_unf.c;
mpicc -o vv2 vv_mult_blk_cyclic.c;
mpicc -o mv1 mv_mult_checkerboard.c;
mpicc -o mv2 mv_mult_blkstp.c;
mpicc -o mm1 mpi_mm.c;
mpicc -o mm2 mm_mult_fox.c;

sbatch vv1;
sbatch vv2;
sbatch mv1;
sbatch mv2;
sbatch mm1;
sbatch mm2;
