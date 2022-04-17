 n=$((100*DG_USER_LEVEL))
  nmo=$((100*((DG_USER_LEVEL-1))))



  xp_next=$(($nmo+$n))
  if [[ $DG_USER_LEVEL == 2 ]]; then
  nmx=$((100*((DG_USER_LEVEL-1))))
  xp_last=$(($n+$nmx*(DG_USER_LEVEL-3)))
  else
  nmx=$((100*((DG_USER_LEVEL))))
  xp_last=$(($n+$nmx))
  fi


  xp_needed=`echo $xp_next - $DG_USER_XP | bc -l | xargs printf "%.2f"`
  xp_earned=`echo $xp_last + $DG_USER_XP | bc -l | xargs printf "%.2f"`

printf "${DG_ANSI_BG_GRE}"
repeat_str 32 "$DG_ICON_SPARK"
printf "${DG_ANSI_X_BG}\n"

repeat_str 32 "$DG_ICON_BALLOON"
#printf "${DG_ANSI_BLINK}${DG_ICON_BOOK_RED}${DG_ANSI_X_BLINK}"
printf "
██╗░░░░░███████╗██╗░░░██╗███████╗██╗░░░░░  ██╗░░░██╗██████╗░██╗
██║░░░░░██╔════╝██║░░░██║██╔════╝██║░░░░░  ██║░░░██║██╔══██╗██║
██║░░░░░█████╗░░╚██╗░██╔╝█████╗░░██║░░░░░  ██║░░░██║██████╔╝██║
██║░░░░░██╔══╝░░░╚████╔╝░██╔══╝░░██║░░░░░  ██║░░░██║██╔═══╝░╚═╝
███████╗███████╗░░╚██╔╝░░███████╗███████╗  ╚██████╔╝██║░░░░░██╗
╚══════╝╚══════╝░░░╚═╝░░░╚══════╝╚══════╝  ░╚═════╝░╚═╝░░░░░╚═╝
"

printf "Congradulations, you are now on ${DG_ANSI_LYEL}Level $DG_USER_LEVEL${DG_ANSI_X_COL}! Keep up the great work!\n"
#printf "\t\tYou've earned $xp_earned xp already\n "
printf "\t\tOnly $xp_needed more xp to reach level $(( $DG_USER_LEVEL+1 ))"
printf "\n"
repeat_str 32 "$DG_ICON_BALLOON"
printf "\n"
printf "${DG_ANSI_BG_GRE}"
repeat_str 32 "$DG_ICON_SPARK"
printf "${DG_ANSI_X_BG}\n"
aplay /usr/share/sounds/sound-icons/hash >/dev/null 2>&1 || true


