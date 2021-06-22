#!/bin/bash

python run_model.py --datalist /workdir/datalist_sotis.txt --phase=train --batch_size=1 --lr=1e-4 --epoch=4000 --model sotis
