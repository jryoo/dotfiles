# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Add RVM
export PATH="$PATH:$HOME/.rvm/bin";

#######################################

# Alias hub as git
eval "$(hub alias -s)"

# Alias for git pull origin master
alias gpom='git pull origin master'

# Put storm in the path
export PATH=/opt/storm-0.9.1/bin:$PATH

# Put cassandra in the path
export PATH=/opt/cassandra-2.0.7/bin:$PATH

# Put csshX in the path
export PATH=/opt/csshX-0.74:$PATH

# Put parallel stuff in the path
export PATH=/opt/pssh-1.4.3:$PATH


# add Java 1.7 to path
export JAVA_HOME=/Library/java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home

# add Kafka to path
export KAFKA_HOME=/opt/kafka_2.9.2-0.8.1

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
