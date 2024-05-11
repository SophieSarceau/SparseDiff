#!/bin/bash
#SBATCH -p vip_gpu_ailab
#SBATCH --gpus=4
#SBATCH -A ai4agr
#SBATCH -o /home/bingxing2/ailab/scxlab0064/Document/PPI/SparseDiff/outputs/slurm-out/protein.out

python main.py
