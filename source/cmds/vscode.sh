
 case "$BASH_COMMAND" in
    "code -a"*|"code -d"*|"code -g"*)
      x=`earned_xp 3`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GEM"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_LAPTOP\n$dg_icon + $x XP!\n";

      fi
    ;;
    "code ."*)
      x=`earned_xp 1`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GEM"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_LAPTOP\n$dg_icon + $x XP!\n";

      fi
    ;;
    "code "*)
      x=`earned_xp 2`
      yop=`check_valid $2 $x`;
      if [[ $yop == 'good' ]]; then
        dg_icon=`dg_word_choice "$DG_ICON_GEM"`
        printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT} $DG_ICON_LAPTOP\n$dg_icon + $x XP!\n";

      fi
    ;;
  esac
