export CUDA_VISIBLE_DEVICES=0

python3 train_up.py --name pretrain_up --dataroot ./flist --dataset_name sfhq  --max_dataset_size 10000\
                    --mask_type 6 --load_size 256 --niter 5 --niter_decay 2 \
                    --netG Upsampler --batchSize 4 --ngf 64 --n_layers_D 4 --input_nc 4 --output_nc 3 \
                    --gan_mode hinge --use_attention --lambda_perceptual 0.001 --vgg_normal_correct \
                    --lambda_hole 6  --lambda_vgg 2 --lambda_style 0 --lr 2e-4 --use_vae \
                    --continue_train \
            # --upsampler --sample_path ./samples 