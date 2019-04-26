# Save this script as install.sh and run it on a new machine. Do not save it as install_config.sh as that will lead to a conflict. Once installed, delete it. Or, just wget it from git hub and pipe the output to /bin/bash instead of actually saving it (curl -Llks <github raw URL> | /bin/bash)

git clone --bare  https://github.com/kanodiaayush/.cfg.git $HOME/.cfg

function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
