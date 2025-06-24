export CUDA_VISIBLE_DEVICES=0,1
torchrun --nproc_per_node=2 --rdzv_endpoint=127.0.0.1:29501 \
Retrievalcopy.py \
--config configs/PS_rstp_reid.yaml \
--output_dir output/rstp-reid/evaluation/ \
--checkpoint output/rstp-reid/train/checkpoint_best.pth \
--eval_mAP \
--evaluate
