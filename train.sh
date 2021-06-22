#!/bin/bash

python run_model.py --datalist /workdir/datalist_sotis.txt --phase=train --batch=16 --lr=1e-4 --epoch=4000
