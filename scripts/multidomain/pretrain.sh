dataset=/apdcephfs/private_jcykcai/multi_domain
python3 /apdcephfs/private_jcykcai/copyisallyouneed/pretrain.py --train_data ${dataset}/train/train.txt \
        --dev_data ${dataset}/dev.txt \
        --src_vocab ${dataset}/train/src.vocab \
        --tgt_vocab ${dataset}/train/tgt.vocab \
        --ckpt /apdcephfs/share_916081/jcykcai/mt.ckpts/multi_domain/ckpt.exp.pretrain \
        --world_size 1 \
        --gpus 1 \
        --dev_batch_size 128 \
        --layers 3 \
        --per_gpu_train_batch_size 128 \
        --bow
