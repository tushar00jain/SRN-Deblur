#!/usr/bin/env bash
set -euxo pipefail

path=checkpoints/sotis/checkpoints

ls $path/deblur.model-$1.* | xargs -I {} aws s3 cp {} s3://sotis-oqx7lxgt/SRN-Deblur/{}
aws s3 cp $path/checkpoint s3://sotis-oqx7lxgt/SRN-Deblur/$path/checkpoint
