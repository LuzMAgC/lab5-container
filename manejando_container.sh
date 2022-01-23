#!/bin/bash

module load singularity/3.8.0

#a) Versión sistema operativo
echo "Version del sistema operativo:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo

#b) Contenido del directorio
echo "Contenido del directorio incluyendo los ocultos:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls -a
echo

#c) Path del directorio
echo "Ruta del directorio:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo

#d) Versión de python
echo "Versión de python:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version
echo

#e) Versión del compilador de C++
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version

#f) Ejecutar k-mer13 de C++ y medir tiempo
echo "El tiempo de ejecución de 13-mer en C++ es:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13

module unload singularity/3.8.0
