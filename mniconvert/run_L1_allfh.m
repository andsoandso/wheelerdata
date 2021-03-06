addpath('~/src/wheelerdata/mniconvert/spm/')

DATAPATH = '/data/data2/meta_accumulate/fh'

Ss = {'fh09' 'fh11' 'fh13' 'fh14' 'fh15' 'fh17' 'fh19' 'fh21' 'fh23' 'fh24' 'fh25' 'fh26' 'fh27' 'fh28'}

NODS = {'fh009' 'fh011' 'fh013' 'fh014' 'fh015' 'fh017' 'fh019' 'fh021' 'fh023' 'fh024' 'fh025' 'fh026' 'fh027' 'fh028'}

for ii=1:size(Ss,2),
    disp(Ss{ii})
    datadir = fullfile(DATAPATH,Ss{ii})

    % ----
    disp('Calculating L1 motor')
    savedir = [Ss{ii} '_motor']
    [stat, meSs] = rmdir(fullfile(datadir,savedir), 's')  
    meta_L1(datadir,savedir,'warfh.nii', ...
        ['fidl/nod_' NODS{ii} '_motor_EF.mat'],'rp_fh0.txt',1.5,29,0)

    % ----
    disp('Calculating L1 noise')
    savedir = [Ss{ii} '_noise']
    [stat, meSs] = rmdir(fullfile(datadir,savedir), 's')  
    meta_L1(datadir,savedir,'warfh.nii', ...
        ['fidl/nod_' NODS{ii} '_noise_corr_EF.mat'],'rp_fh0.txt',1.5,29,0)

    % ----
    disp('Calculating L1 reaction time')
    savedir = [Ss{ii} '_rt']
    [stat, meSs] = rmdir(fullfile(datadir,savedir), 's')  
    meta_L1(datadir,savedir,'warfh.nii', ...
        ['fidl/nod_' NODS{ii} '_RT_corr_EF.mat'],'rp_fh0.txt',1.5,29,0)
end

exit;
