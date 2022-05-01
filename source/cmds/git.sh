
 case "$BASH_COMMAND" in
    "git "*"push"*)
      x=`earned_xp 10`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_ROCKET + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"rebase"*|"git "*"merge"*)
      x=`earned_xp 7`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_FOLDERS\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"branch "*|"git "*"checkout -b"*)
      x=`earned_xp 5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_SEEDLING\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"fetch"*|"git "*"pull"*)
      x=`earned_xp 5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_PULL${DG_ANSI_X} $DG_ICON_FOLDERS\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"checkout"*)
      x=`earned_xp 3`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_SEEDLING\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"commit"*)
      x=`earned_xp 2`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_BALLOON|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} ${DG_ANSI_GRE}$DG_ICON_DISK \U2192${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"status"*)
      x=`earned_xp 1.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*)
      x=`earned_xp 1`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You ran $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
  esac
