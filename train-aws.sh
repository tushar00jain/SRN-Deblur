#!/bin/bash

python run_model.py --datalist /workdir/datalist_sotis2.txt --phase=train --batch_size=5 --lr=1e-4 --epoch=2000 --model sotis
