export CUDA_VISIBLE_DEVICES=0
#export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:512

python3 train_bat.py --name pretrain_bat --dataroot ./flist --dataset_name sfhq \
                    --mask_type 6 --load_size 32 --z_dim 256 --max_dataset_size 5000 \
                    --netG Upsampler --batchSize 2 --use_vae \