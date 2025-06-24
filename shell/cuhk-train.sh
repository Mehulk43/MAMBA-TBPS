export CUDA_VISIBLE_DEVICES=0,1

python -m torch.distributed.run --nproc_per_node=2 --rdzv_endpoint=127.0.0.1:29501 \
Retrievalcopy.py \
--config configs/PS_cuhk_pedes.yaml \
--output_dir output/cuhk-pedes/train \
--checkpoint MARS_cuhk.pth \
--eval_mAP
