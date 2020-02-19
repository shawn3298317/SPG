#!/bin/sh

cd ../exper/


ROOT_DIR=/home/xiaolin/SPG


CUDA_VISIBLE_DEVICES=0,1 python train_frame.py \
	--arch=inception3_spg --epoch=5 --lr=0.001 --batch_size=8 \
	--num_gpu=1 --dataset=imagenet  \
	--img_dir=${ROOT_DIR}/data/ILSVRC/Data/CLS-LOC/train \
	--num_classes=2 \
	--snapshot_dir=../snapshots/inception_kitti_full_spg/
	#--restore_from=/home/xiaolin/.torch/models/vgg16-397923af.pth \

