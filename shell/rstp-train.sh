export CUDA_VISIBLE_DEVICES=0,1

torchrun --nproc_per_node=2 \
Retrievalcopy.py \
--config configs/PS_rstp_reid.yaml \
--output_dir output/rstp-reid/train \
--checkpoint MARS_cuhk.pth \
--eval_mAP
