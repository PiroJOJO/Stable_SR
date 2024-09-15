#!/bin/bash

/usr/bin/python3.9 sr_val_ddpm_text_T_vqganfin_oldcanvas_tile.py --config configs/stableSRNew/v2-finetune_text_T_512.yaml --ckpt ./stablesr_turbo.ckpt --init-img ./inputs/test_example/ --outdir ../output/ --ddpm_steps 4 --dec_w 0.5 --seed 42 --n_samples 1 --vqgan_ckpt ./vqgan_cfw_00011.ckpt --colorfix_type wavelet --upscale 2