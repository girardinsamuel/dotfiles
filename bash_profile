# python path
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/opt/rabbitmq/sbin

# -------
# Aliases
# -------
alias connect="ssh mediauser@192.168.1.13"
alias ip="curl icanhazip.com" # Your public IP address
alias grunner="gitlab-runner run"
alias archibien_app="ssh -i '/Users/samuel/.ssh/id_rsa_do_archibien_app' deployer@167.99.92.20"
alias archibien_site="ssh -i '/Users/samuel/.ssh/id_rsa_do_archibien_site' deployer@46.101.190.171"
alias archibien_dev="ssh -i /Users/samuel/.ssh/id_rsa_ssdnodes_preprod deployer@209.182.232.40"
alias archibien_app_preprod="ssh -i '/Users/samuel/.ssh/archibien/id_rsa_do_archibien_app_preprod' deployer@46.101.51.246"
alias archiservice="ssh root@archiservice.com"
alias claudiaanatella_prod="ssh -i '/Users/samuel/.ssh/id_rsa_claudiaanatella_prod' samuel@206.189.122.16"
alias ssh_home="ssh mediauser@176.148.214.6"
alias sgi_server="ssh -i '/Users/samuel/.ssh/id_rsa_sgi_server' deployer@209.182.232.70"
alias sonarr="ssh -L 8383:192.168.1.13:8989 176.148.214.6"
alias django-new-project="cookiecutter git@gitlab.com:samuelgirardin/cookiecutter-django.git"
alias django-new-app="ls"
alias postgres-start="pg_ctl -D /usr/local/var/postgres11.2 start"
alias dc="docker-compose"
alias work_archibien="cd Projets/Web/Archibien/"
alias work="cd Projets/Web"
alias rpiserver="ssh webuser@rpiserver"
alias ppt="python3 -m http.server"
alias archibien_site_preprod="ssh -i '/Users/samuel/.ssh/archibien/id_rsa_do_archibien_site_preprod' deployer@46.101.6.44"
alias archibien_s="export DJANGO_SETTINGS_MODULE=config.settings.local"
alias gpd="git push -o ci.variable='AUTO_DEPLOY=true'"
alias gpdd="git push -o ci.variable='AUTO_DEPLOY=true' -o ci.variable='AUTO_DEPLOY_PROD=true'"
alias ec2="ssh -i '/Users/samuel/.ssh/archibien/aws_ec2_t2_micro_samuel.pem' ec2-user@ec2-3-250-53-22.eu-west-1.compute.amazonaws.com"
alias aws_ec2="ssh -o StrictHostKeyChecking=no ec2-user@15.188.53.189"
alias addalias="nvim ~/.bash_profile"
alias s="spotify"
alias tb="nc termbin.com 9999"
alias n="nvim"
alias cc="echo '  Types of commits:
  * build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
  * ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
  * docs: Documentation only changes
  * feat: A new feature
  * fix: A bug fix
  * perf: A code change that improves performance
  * refactor: A code change that neither fixes a bug nor adds a feature
  * style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
  * test: Adding missing tests or correcting existing tests'"
alias gs="g s"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# pyenv and virtualwrapper
eval "$(pyenv init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# cookiecutter preferences
export COOKIECUTTER_CONFIG="/Users/samuel/.cookiecutter.yaml"

# golang
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
