
 case "$BASH_COMMAND" in
    "git init"*|"git clone"*|)
      x=`earned_xp 25`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_WAND $DG_ICON_BOX ${DG_ANSI_GRE}=${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;

    "git "*"push"*)
      x=`earned_xp 10`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_ROCKET + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"rebase"*|"git "*"merge"*)
      x=`earned_xp 7`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_FOLDERS\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"fetch"*|"git "*"pull"*)
      x=`earned_xp 5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_PULL${DG_ANSI_X} $DG_ICON_FOLDERS\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
      fi
    ;;
    "git "*"branch "*|"git "*"checkout -b"*|"git "*"merge "*)
      x=`earned_xp 5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_SEEDLING\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"checkout"*|"git "*"branch"*)
      x=`earned_xp 3`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_SEEDLING\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git stash list")
      x=`earned_xp 1.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_PINCH\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"stash"*)
      x=`earned_xp 3`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_FIRE|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_UNI_GIT ${DG_ANSI_GRE}$DG_ICON_UNI_BRANCH${DG_ANSI_X} $DG_ICON_PINCH\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"commit -am"*)
      x=`earned_xp 4.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_BALLOON|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} ${DG_ANSI_GRE}$DG_ICON_DISK \U2192${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"commit "*)
      x=`earned_xp 3`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_BALLOON|$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} ${DG_ANSI_GRE}$DG_ICON_DISK \U2192${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"add"*)
      x=`earned_xp 1.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} ${DG_ANSI_GRE}$DG_ICON_DISK \U2192${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"reset"*)
      x=`earned_xp 1.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} ${DG_ANSI_RED}$DG_ICON_DISK \U2190${DG_ANSI_X} $DG_ICON_UNI_GIT\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
    "git "*"status"*|"git "*"diff "*)
      x=`earned_xp 1.5`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GSTAR|$DG_ICON_RAISE|$DG_ICON_CLAP"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;

    "git "*)
      x=`earned_xp 1`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_BALLOON"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$dg_icon + $x XP!\n";
        export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
        create_link_file 'https://www.youtube.com/watch?v=HkdAHXoRtos' 'git_video001'
      fi
    ;;
  esac
