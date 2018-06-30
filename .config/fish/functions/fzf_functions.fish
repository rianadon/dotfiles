function fkill
  set -l pid (ps -ef | sed 1d | fzf -m | awk '{print $2}')
  if test -n $pid
    echo $pid | xargs kill -9
  end
end

function fshow
  git log --graph --color=always \
      --format='%C(auto)%h%d %s %C(#777777)%C(bold)%cr' $argv | fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
end
