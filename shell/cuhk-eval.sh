export CUDA_VISIBLE_DEVICES=0
python -m torch.distributed.launch --nproc_per_node=1 --use_env --rdzv_endpoint=127.0.0.1:29501 \
Retrieval.py \
--config configs/PS_cuhk_pedes.yaml \
--output_dir output/cuhk-pedes/evaluation \
--checkpoint ../MARS_checkpoint/MARS_cuhk_checkpoint.pth \
--eval_mAP \
--evaluate
