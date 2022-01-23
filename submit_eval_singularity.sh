#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno01/lab5-container
#SBATCH -J Lab5-Luz
#SBATCH --output=RESULTADOS-Singularity.txt
#SBATCH --mail-type=END    #END/START/NONE
#SBATCH --mail-user=lmaria.agullo@um.es

module load singularity/3.8.0

# 13-mero:
echo "13-mer c++"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13
echo
echo "13-mer python"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py
echo
# 14-mero
echo "14-mer c++"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14
echo
echo "14-mer python"
echo
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py

module unload singularity/3.8.0
