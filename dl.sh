# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer1/2020_04_17_20_07_17/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer1
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer2/2020_04_17_20_15_19/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer2
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer3/2020_04_17_20_16_17/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer3
# scp -r hanshan@192.168.0.101:/home/hanshan/Data/DataCV/ScoreWriter/fixation/synthetic/dcn_layer4/2020_04_17_20_16_55/imgs/stage-0 /Volumes/data/Projects/CV-Projects/saliency/input/smaps/synthetic/dcn_layer4

dir="hanshan@192.168.0.101:"
# scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/synthetic/fixation/ /Volumes/data/Projects/CV-Projects/saliency/input/bmaps/synthetic
scp -r ${dir}/home/hanshan/Data/DataCV/DataSets/synthetic/saliency/ /Volumes/data/Projects/CV-Projects/saliency/input/dmaps/synthetic