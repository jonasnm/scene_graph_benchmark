#!/bin/bash

docker run \
-v /home/AD.NORCERESEARCH.NO/jonm/Documents/git/scene_graph_benchmark/:/sgg \
-v /ssd_data/visualgenome:/ssd_data/visualgenome \
-v /ssd_data/openimages_v5c:/ssd_data/openimages_v5c \
-v /ssd_data/glove:/ssd_data/glove \
-v /etc/ssl/certs/:/etc/ssl/certs \
--workdir /sgg/ \
-it \
jonasnm/sgg:pip /bin/bash -c \
"
export TORCH_CUDA_ARCH_LIST=7.0; \
python setup.py build develop; \
python tools/demo/demo_image.py \
--config_file sgg_configs/vg_vrd/rel_danfeiX_FPN50_nm.yaml \
--img_file demo/counting_hero_images/out7.jpeg \
--save_file demo/ch_test.jpg \
MODEL.ROI_RELATION_HEAD.DETECTOR_PRE_CALCULATED False  \
DATASETS.LABELMAP_FILE "datasets/visualgenome/VG-SGG-dicts-danfeiX-clipped.json"  \
DATA_DIR datasets \
MODEL.ROI_RELATION_HEAD.USE_BIAS True  \
MODEL.ROI_RELATION_HEAD.FILTER_NON_OVERLAP True  \
MODEL.ROI_HEADS.DETECTIONS_PER_IMG 64  \
MODEL.ROI_RELATION_HEAD.SHARE_BOX_FEATURE_EXTRACTOR False  \
MODEL.ROI_RELATION_HEAD.NEURAL_MOTIF.OBJ_LSTM_NUM_LAYERS 0  \
MODEL.ROI_RELATION_HEAD.NEURAL_MOTIF.EDGE_LSTM_NUM_LAYERS 2  \
MODEL.ATTRIBUTE_ON True \
TEST.IMS_PER_BATCH 2 \
" 
# --img_file demo/1024px-Gen_Robert_E_Lee_on_Traveler_at_Gettysburg_Pa.jpg \
# --visualize_attr  \
# --visualize_relation  \