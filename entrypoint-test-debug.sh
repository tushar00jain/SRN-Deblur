#!/bin/bash

python -m debugpy --listen 0.0.0.0:8003 --wait-for-client run_model.py \
	--input_path=/data/SOTIS/Stabilized --output_path=/cc/results