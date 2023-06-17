python3 train_up.py --name modify_up --dataroot ./flist --dataset_name lfw  \
            --mask_type 6 --load_size 32 --niter 30 --niter_decay 30 \
            --netG upsampler --batchSize 10 --ngf 64 --n_layers_D 4 --input_nc 4 --output_nc 3 \
            --gan_mode hinge --use_attention --lambda_perceptual 0.001 --vgg_normal_correct --use_vae \
            --lambda_hole 6  --lambda_vgg 2 --lambda_style 0 --lr 2e-4 \
            --continue_train \
            # --upsampler --sample_path ./samples 