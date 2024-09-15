#!/bin/bash

git clone https://github.com/IceClear/StableSR.git

cd StableSR

/usr/local/bin/pip3.9 install -r requirements.txt
/usr/local/bin/pip3.9 install -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers
/usr/local/bin/pip3.9 install -e git+https://github.com/openai/CLIP.git@main#egg=clip
/usr/local/bin/pip3.9 install -e .

wget https://huggingface.co/Iceclear/StableSR/resolve/main/vqgan_cfw_00011.ckpt
wget https://huggingface.co/Iceclear/StableSR/resolve/main/stablesr_turbo.ckpt

/usr/local/bin/pip3.9 install clip
/usr/local/bin/pip3.9 install taming-transformers-rom1504

mv ./scripts/sr_val_ddpm_text_T_vqganfin_oldcanvas_tile.py .
mv ./scripts/util_image.py .
