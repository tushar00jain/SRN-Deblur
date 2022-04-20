#!/bin/bash

set -euxo pipefail

python run_model.py \
	--input_path=/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/TV-LK --output_path=/workdir/results-pretraining --height 256 --width 256 --model gray

python run_model.py \
	--input_path=/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/TV-TVL1 --output_path=/workdir/results-pretraining --height 256 --width 256 --model gray

# python run_model.py \
# 	--input_path=/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/TV-LK --output_path=/workdir/results-retraining --height 256 --width 256 --model sotis

# python run_model.py \
# 	--input_path=/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/TV-TVL1 --output_path=/workdir/results-retraining --height 256 --width 256 --model sotis
