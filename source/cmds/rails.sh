
 case "$BASH_COMMAND" in
    "rails "*|*"bin/rails "*|"bin/rake "*)
      x=`earned_xp 1`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_SPARK"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_GEM $DG_ICON_RAILWAY\n$dg_icon + $x XP!\n";
        # export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        # create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "rvm "*|*"rbenv "*)
      x=`earned_xp 1`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_SPARK"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_GEM $DG_ICON_RAILWAY\n$dg_icon + $x XP!\n";
        # export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        # create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
  esac
