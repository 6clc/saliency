# Run metrics code 计算准确率的方法 #

This is the Matlab saliency code able to process saliency maps and metrics. 

Run metrics from "input/", Example for test dataset:  

在matlab中运行下面的代码，其中test是数据集的名字
    main('test',0);

This will export a csv in "output/" (main.m automatically runs see_results.m after storing results).

运行结果会输出在output文件夹中
    
Images, fixation maps and saliency maps should be saved in the following directories (by default):<br/>
    
    input/images/DATASET_NAME  输入原图
    input/bmaps/DATASET_NAME  gt fixation map
    input/dmaps/DATASET_NAME  gt density map
    input/smaps/DATASET_NAME/MODEL_NAME 自己的预测结果
    
Although only necessary folders for computing saliency metrics are "images", "bmaps", "dmaps" and "smaps". Other metrics require region binary masks "mmaps" or scanpaths ("input/smaps/DATASET_NAME/scanpaths" for GT, "input/smaps/DATASET_NAME/MODEL_NAME/scanpaths" for model scanpaths).<br/>
To run any dataset, copy your dataset files and make sure you have the same folder structure as in "test".<br/>

  *ouput 文件夹目录*
[datasetname]_results_all.csv 代表了整体数据集的平均值

其他的是每个样本对应准确率的值
   
# Run Saliency models #

Run saliency maps from "models/", Example for test dataset: 

    get_smaps('models',{'test'});
    
Before running saliency models, first try to delete them, e.g. "input/smaps/test/SIM"<br/>
Note: To add another model, make sure each model runs a matlab file with same format (input and output of function) and prefix "saliency_MODEL_NAME" as in "saliency_sim.m". You can also run shell commands through matlab for python-based models. We have included an example code of SIM (Murray et al., 2011, 2013) to make your tests.

# Download Datasets #

Use the shell commands (download_parse_datasets/DATASET_NAME/download.sh) for downloading and parsing eye-tracking data (images, fixation maps and scanpaths) of previous experiments of Toronto (Bruce & Tsotsos, 2006), MIT1003 (Judd et al., 2009), KTH (Kootstra et al., 2011), CAT2000 Pattern (Borji & Itti, 2015) and SID4VAM (Berga et al., 2019).
    
# This is a fork of official MIT metrics code #

Code from https://github.com/cvzoya/saliency is found in "include/saliency-master/"

Various code related to the MIT saliency benchmark website http://saliency.mit.edu will be found there. 
Please contact saliency@mit.edu with any questions.
If you use any of this code, please cite: 
<pre>
@article{salMetrics_Bylinskii,
    title    = {What do different evaluation metrics tell us about saliency models?},
    author   = {Zoya Bylinskii and Tilke Judd and Aude Oliva and Antonio Torralba and Fr{\'e}do Durand},
    journal  = {arXiv preprint arXiv:1604.03605},
    year     = {2016}
}
</pre>