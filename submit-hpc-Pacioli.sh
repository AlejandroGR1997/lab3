#!/bin/bash

#SBATCH -p hpc-bio-nikola
#SBATCH --workdir=/home/alumno07/lab3
#SBATCH -J Job
#SBATCH --cpus-per-task=8


# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=8
#12

# Establecer la ruta relativa para el programa y argumentos,
# respecto al espacio de trabajo que hayas definido (workdir)

for (( i=1; i <=4; i++)); do 
find -type f -name "Sample[$i].fastq" | parallel ./file-cut.sh 
done 



