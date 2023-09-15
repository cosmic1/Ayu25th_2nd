set dropboxPath="%CosmicProjects%"
set projectName=231002_Ayu_25th_Season2

call git config --unset-all lfs.customtransfer.lfs-folder.path
call git config --unset-all lfs.customtransfer.lfs-folder.args
call git config --unset-all lfs.standalonetransferagent

call git config --add lfs.customtransfer.lfs-folder.path lfs-folderstore
call git config --add lfs.customtransfer.lfs-folder.args "%dropboxPath%/%projectName%/LFS"
call git config --add lfs.standalonetransferagent lfs-folder

call git reset --hard master
call git submodule init
call git submodule update