#!/bin/bash

# dir of script 
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
# parent dir of that dir
PARENT_DIRECTORY="${DIR%/*}"
echo "----> Enter ${PARENT_DIRECTORY}"
cd $PARENT_DIRECTORY
export PYTHONPATH=$PARENT_DIRECTORY:$PYTHONPATH


##### >---------------> Project Parameters <-----------------------< ####
script=utils/generate_cityscapes_domain.py

checkpoint_dir=checkpoint/cityscapes_step9.ckpt
output_dir=image_output/cityscapes_generated_domain_ALDM
seed=1234
data_from=0
cur_split_id=0
num_per_split=500 # in total 2000 validation images
##### >---------------> Project Parameters <-----------------------< ####


python $script --checkpoint_dir $checkpoint_dir  --seed $seed  --output_dir $output_dir  --data_from $data_from --num_per_split $num_per_split --cur_split_id $cur_split_id  