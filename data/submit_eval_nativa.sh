#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno01/lab5
#SBATCH -J Lab5-Luz
#SBATCH --exclusive
#SBATCH --output=RESULTADOS.txt
#SBATCH --mail-type=END    #END/START/NONE
#SBATCH --mail-user=lmaria.agullo@um.es

echo "13-mer c++"
echo
time ./k-mer13
echo
echo "13-mer python"
echo
time python ./k-mer13.py
echo
echo "14-mer c++"
echo
time ./k-mer14
echo
echo "14-mer python"
echo
time python ./k-mer14.py
