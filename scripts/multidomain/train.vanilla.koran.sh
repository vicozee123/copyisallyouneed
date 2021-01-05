dataset=/apdcephfs/private_jcykcai/multi_domain
python3 /apdcephfs/private_jcykcai/copyisallyouneed/train.py --train_data ${dataset}/train/koran.train.txt \
        --dev_data ${dataset}/dev/koran.dev.txt \
        --test_data ${dataset}/test/koran.test.txt \
        --src_vocab ${dataset}/train/src.vocab \
        --tgt_vocab ${dataset}/train/tgt.vocab \
        --ckpt /apdcephfs/share_916081/jcykcai/mt.ckpts/multi_domain/ckpt.vanilla.koran \
        --world_size 2 \
        --gpus 2 \
        --arch vanilla \
        --dev_batch_size 2048 \
        --per_gpu_train_batch_size 4096
