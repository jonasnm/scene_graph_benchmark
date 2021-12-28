#!/bin/bash

docker run \
-v /home/AD.NORCERESEARCH.NO/jonm/Documents/git/scene_graph_benchmark/datasets:/scene_graph_benchmark/datasets \
-v /home/AD.NORCERESEARCH.NO/jonm/Documents/git/scene_graph_benchmark/models:/scene_graph_benchmark/models \
-v /ssd_data/visualgenome:/ssd_data/visualgenome \
-v /ssd_data/openimages_v5c:/ssd_data/openimages_v5c \
-v /ssd_data/glove:/ssd_data/glove \
-v /etc/ssl/certs/:/etc/ssl/certs \
--workdir /scene_graph_benchmark/ \
-it \
jonasnm/sgg bash