# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer1/2020_04_17_20_07_17/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer1
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer2/2020_04_17_20_15_19/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer2
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer3/2020_04_17_20_16_17/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer3
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer4/2020_04_17_20_16_55/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer4

dir="hanshan@192.168.0.101:"
name="CAT2000"
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/MIT/train/fixation/ /Volumes/data/Projects/CV-Projects/saliency/input/bmaps/MIT
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/MIT/train/saliency/ /Volumes/data/Projects/CV-Projects/saliency/input/dmaps/MIT
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/MIT/train/images/ /Volumes/data/Projects/CV-Projects/saliency/input/images/MIT
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/MIT/fixation/ /Volumes/data/Projects/CV-Projects/saliency/input/smaps/MIT
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/${name}/train/fixation/ /Volumes/data/Projects/CV-Projects/saliency/input/bmaps/${name}
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/${name}/train/saliency/ /Volumes/data/Projects/CV-Projects/saliency/input/dmaps/${name}
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/${name}/train/images/ /Volumes/data/Projects/CV-Projects/saliency/input/images/${name}

s_dir="/home/hanshan/Data/test/MIT_VALICON"
d_dir="/Volumes/data/Projects/CV-Projects/saliency/input/smaps/MIT"

scp -r ${dir}${s_dir} ${d_dir}