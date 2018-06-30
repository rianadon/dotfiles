cs () { cd $(grep "^$1" /mnt/c/Users/Ryan/Documents/shortcuts.txt | sed -n -e "s/.* | //p") }
