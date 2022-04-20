#!/bin/bash

pip install pathlib
python datalist.py
python run_model.py --datalist /workdir/datalist_sotis_tv_tvl1.txt --phase=train --batch_size=10 --lr=1e-4 --epoch=311 --model sotis

