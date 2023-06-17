export CUDA_VISIBLE_DEVICES=0
#export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:512

python3 train_bat.py --name modify_bat --dataroot ./flist --dataset_name lfw \
                                            --mask_type 6 --load_size 32 --z_dim 32 --max_dataset_size 4000 \
                                            --netG Upsampler --batchSize 4 \