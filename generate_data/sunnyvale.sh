#!/bin/bash -l
#PBS -l nodes=1:ppn=1
#PBS -q workq
#PBS -r n
#PBS -l walltime=48:00:00
#PBS -N stab9999
# EVERYTHING ABOVE THIS COMMENT IS NECESSARY, SHOULD ONLY CHANGE nodes,ppn,walltime and my_job_name VALUES
cd $PBS_O_WORKDIR
module load gcc/5.4.0
source /mnt/raid-cita/dtamayo/venvstab/bin/activate
python runresonant.py 9999 0009999.bin
