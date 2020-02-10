# 计算saliency准确率的方法 #

*测试此代码可令 DATASET_NAME 取 test*
1. 运行test_matlab_en.m，测试matlab环境
2. 要测得数据存放如下所示
   - 输入原图: input/images/[DATASET_NAME]
   - gt-fixation: input/bmaps/[DATASET_NAME]
   - gt-density-map: input/dmaps/[DATASET_NAME]
   - pred-density-map: input/smaps/[DATASET_NAME]/[MODEL_NAME] 
3. 运行下面的代码,
   ```matlab
    main('[DATASET_NAME',0)
    ```
4. 运行结果
    *ouput 文件夹目录*
   - [datasetname]_results_all.csv 代表了整体数据集的平均值
   - 其他的是每个样本对应准确率的值
