
for g=1:length(gazes)

    params_folder_gazewise=params_folder;
%                 params_folder_gazewise.scanpaths_subfolder = [params_folder.scanpaths_subfolder '/gbg/' num2str(g)];
    params_folder_gazewise.scanpaths_subfolder = [params_folder.scanpaths_subfolder];
    params_folder_gazewise.bmaps_subfolder = [params_folder.bmaps_subfolder '/gbg/' num2str(g)];
    params_folder_gazewise.dmaps_subfolder = [params_folder.dmaps_subfolder '/gbg/' num2str(g)];
    params_folder_gazewise.baseline_subfolder = [params_folder.baseline_subfolder];
    params_folder_gazewise.mmaps_subfolder = [params_folder.mmaps_subfolder];
    params_folder_gazewise.smaps_subfolder = [params_folder.smaps_subfolder '/gbg/' num2str(g) ];
    params_folder_gazewise.scanpaths_predicted_subfolder = [params_folder.scanpaths_predicted_subfolder];

    %non-scanpath models -> link to static saliency maps
    if ~exist([params_folder.smaps_subfolder '/gbg/' ],'file')
        system(['mkdir ' params_folder.smaps_subfolder '/gbg/']);
    end
    if ~exist(params_folder_gazewise.smaps_subfolder,'file')
        system(['ln -s ' params_folder.smaps_subfolder ' ' params_folder_gazewise.smaps_subfolder]);
    end

    disp(['gaze=' num2str(g)]);

    for idx=1:length(n_metrics_gazewise)
        mt=n_metrics_gazewise(idx);
        %if exist(params_folder_gazewise.scanpaths_predicted_subfolder,'file')

            if find(n_missing_metrics_gazewise==mt)
                disp(['Computing  ' metrics_gazewise{mt}.name '... ' ]);
                [metrics_gazewise{mt}.score(g),metrics_gazewise{mt}.sdev(g),metrics_gazewise{mt}.score_all(g,:),metrics_gazewise{mt}.roc_all(g,:),metrics{mt}.score_submetric(g,:)] = feval(metrics_gazewise{mt}.type,metrics_gazewise{mt}.function, metrics_gazewise{mt}.baseline_type, metrics_gazewise{mt}.comparison_type,n_evaluations,metrics_gazewise{mt}.trials, metrics_gazewise{mt}.indexes_other,params_folder_gazewise);
            else
                %already calculated
            end
            if contains(metrics_gazewise{mt}.name,'AUC')>0 && ~isempty(find(n_missing_roc_gazewise==mt)) && isempty(find(n_missing_metrics_gazewise==mt)) %metric found but roc missing
                disp(['Computing  ROC ' metrics_gazewise{mt}.name '... ' ]);
                [~,~,~,metrics_gazewise{mt}.roc_all(g,:),~] = feval(metrics_gazewise{mt}.type,metrics_gazewise{mt}.function, metrics_gazewise{mt}.baseline_type, metrics_gazewise{mt}.comparison_type,n_evaluations,metrics_gazewise{mt}.trials, metrics_gazewise{mt}.indexes_other,params_folder_gazewise);
            else
                %already calculated
            end
        %end
    end
end


