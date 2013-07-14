
[[ -f ~/.bashrc ]] && source ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source "$HOME/.tmuxinator/scripts/tmuxinator"
[[ -s "$HOME/dotfiles/git-completion.bash" ]] && source "$HOME/dotfiles/git-completion.bash"

export PATH=~/bin:$PATH

if [[ $(uname) == "Darwin" ]]; then
  # macos env
  export M2_HOME=$(brew --cellar maven)/3.0.4/libexec
  export EDITOR='mvim'
  alias mou=/Applications/Mou.app/Contents/MacOS/Mou
  #alias mvim='rvm default do /usr/local/bin/mvim $@'
else
  # linux env
  puts "linux"
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[00m\]\u@\h\[\033[01;34m\] \W \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_FREE_MIN=$RUBY_HEAP_FREE_MIN

export JRUBY_OPTS="-Xcext.enabled=true -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1"
export JAVA_OPTS="-Xmn128m -Xms512m -Xmx512m -XX:MaxPermSize=256m -XX:+UseCompressedOops -Xss4m"

export MAVEN_OPTS="-Xms128m -Xmx1024m -XX:MaxPermSize=256m"

export JAVA_HOME7='/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/'
export JAVA_HOME6='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home'
export JAVA_HOME=$JAVA_HOME7
export PATH=$JAVA_HOME/bin:$PATH

# terminal colors
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"
export CLICOLOR="auto"

# some alias
alias ls="ls -G"
alias ltop='top -F -R -o cpu'

function curlh {
    curl --dump-header /dev/stderr $1 > /dev/null
}

function psgrep() {
  ps aux | grep -i $1
}
