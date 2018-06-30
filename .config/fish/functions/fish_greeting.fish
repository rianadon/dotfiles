function fish_greeting
  set_color aaaaaa

  set normal "$LINES" -gt 20 -a -z "$isvscode" 
  if [ $normal ]
      #echo $LINES
   set animals koala vader-koala luke-koala moose stegosaurus vader three-eyes apt C3PO R2-D2 armadillo clippy duck elephant2 fat-cow fox happy-whale owl octopus whale yoda seahorse sheep
  else
    set animals koala vader-koala luke-koala moose three-eyes apt duck duck duck duck elephant2 fat-cow owl owl owl
  end
  if [ normal -a (random 0 2) -eq 1 ]
    fortune -e bmc-fortunes literature | cowsay -f (random choice $animals) | lolcat -h 0.5
  else
    fortune -e bmc-fortunes literature | cowsay -f (random choice $animals)
  end

  # if pwd | grep -q '^/mnt/'
  #   rm 20
  # end

  set_color normal
end
