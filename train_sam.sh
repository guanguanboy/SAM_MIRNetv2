#!/usr/bin/env bash

CONFIG=$1

python -m torch.distributed.launch --nproc_per_node=2 --master_port=4321 basicsr/train_sam.py -opt $CONFIG --launcher pytorch