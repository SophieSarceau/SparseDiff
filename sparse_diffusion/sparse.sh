#!/bin/bash
#SBATCH --job-name=scxlab0064_job
#SBATCH --qos gpugpu
#SBATCH -N 2
#SBATCH --ntasks-per-node=4
#SBATCH --gres=gpu:4
#SBATCH -p vip_gpu_ailab
#SBATCH -A ai4agr
##SBATCH -w SH-IDC1-10-140-24-123
#SBATCH -o /home/bingxing2/ailab/scxlab0064/Document/PPI/SparseDiff/outputs/slurm-out/protein.out

export NCCL_ALGO=Ring
export NCCL_MAX_NCHANNELS=16
export NCCL_MIN_NCHANNELS=16
export NCCL_DEBUG=INFO
export NCCL_TOPO_FILE=/home/bingxing2/apps/nccl/conf/dump.xml
export NCCL_IB_HCA=mx5_0,mlx5_2
export NCCL_IB_GID_INDEX=3
export NCCL_IB_TIMEOUT=23
export NCCL_IB_RETRY_CNT=7

srun python main.py
