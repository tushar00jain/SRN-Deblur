## Docker

### Build

```bash
docker build -t srn:0.0.1 .
```

### Debug

```bash
docker run -it --gpus all --name srn -p 8003:8003 -v /media/DataDrive/:/data -v $(pwd):/workdir srn:0.0.1 /bin/bash
./checkpoints/download_model.sh
```

> Train

```bash
./train.sh
```

> Debug Testing

```bash
./entrypoint-test-debug.sh
```

### Run

> Train

```bash
docker run -d --gpus all --name srn -v /media/Data/:/data -v $(pwd):/workdir tushar00jain/srn:0.0.1 ./train-aws.sh
docker logs srn --tail 100 -f
```

> Test

```
docker run -d --gpus all --name srn-test -v /media/Data/:/data -v $(pwd):/workdir tushar00jain/srn:0.0.1 ./entrypoint-test.sh
docker logs srn-test --tail 100 -f
```
