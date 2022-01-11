#!/bin/bash

docker run \
-v /home/AD.NORCERESEARCH.NO/jonm/Documents/git/scene_graph_benchmark/:/sgg \
-v /ssd_data/visualgenome:/ssd_data/visualgenome \
-v /ssd_data/openimages_v5c:/ssd_data/openimages_v5c \
-v /ssd_data/glove:/ssd_data/glove \
-v /etc/ssl/certs/:/etc/ssl/certs \
--workdir /sgg \
-it \
jonasnm/sgg:pip bash