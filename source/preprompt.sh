
# load the main prompt stylings

dg_look(){
 xrs=`echo '' | tree -L 1 | tail -1`;
IFS=', ' read -ra ADDR <<< "$xrs";

 printf "$DG_ICON_RMAG You look around  ${DG_ANSI_LGRE}\""${PWD##*/}"\"${DG_ANSI_X_COL}  and see ${DG_ANSI_LBLU}${ADDR[2]} ${ADDR[3]}${DG_ANSI_X_COL} "and" ${DG_ANSI_LBLU}${ADDR[0]} ${ADDR[1]}${DG_ANSI_X_COL}\n\n" | pv -qL 60;
 # sleep 0.4;
}

mkdir -p $devgame_bdir/mazes
function before_command() {
if [[ $PWD == */mazes* ]]; then
  dg_items=${devgame_bdir}/my_items/
#else # this was to restrict dg_items to maze only
  #dg_items=''
fi

xrs=`echo '' | tree -L 1 | tail -1`;
IFS=', ' read -ra ADDR <<< "$xrs";
oldxp="${DG_USER_XP}"
oldlvl=$DG_USER_LEVEL

load_user_data # load it so we can save most recent

in_maze=0

## check if in maze
if [[ $user_updated = 1 ]]; then
  case $PWD/ in
    */mazes/beginner*)
      if [[ "${ADDR[0]}" = 0 ]]; then
        printf "\nYou hit a dead-end, ${DG_ANSI_LBLU}1 directory${DG_ANSI_X_COL} back the way you came in.\n\n" | pv -qL 60;
      else
        printf "\nYou see ${DG_ANSI_LBLU}${ADDR[0]} ${ADDR[1]}${DG_ANSI_X_COL} in front of you and 1 behind you\n\n" | pv -qL 60;
      fi
      printf "\n${DG_ANSI_BOLD}You're in the mazes, type ${DG_ANSI_BG_MAG}dg_maze_info${DG_ANSI_X_BG}${DG_ANSI_BOLD} for help...${DG_ANSI_X}"
      in_maze=1
    ;;
    */mazes*)
     # build the mazes
      if [[ $devgamemaze_bdir == '' ]]; then
        aplay /usr/share/sounds/sound-icons/cembalo-6.wav >/dev/null 2>&1 || true
        echo 'You need to enter your password to build and access the mazes'
        source $devgame_dir/mazes_source/beginner.sh
      fi
      printf "\n${DG_ANSI_BOLD}You're in the mazes, type ${DG_ANSI_BG_MAG}dg_maze_info${DG_ANSI_X_BG}${DG_ANSI_BOLD} for help...${DG_ANSI_X}"
      in_maze=1
    ;;

    #*) echo "not in the maze";;
  esac
fi

  case "$BASH_COMMAND" in
        $PROMPT_COMMAND)
          if [[ $2 = 0 && $user_updated = 1 ]]; then
            dg_current_stats
          fi
        ;;
        "pwd"*)
          x=`earned_xp 0.01`
          yop=`check_valid $2 $x`;
          if [[ $yop == 'good' ]]; then
            printf "You try to run ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_BALLOON + $x XP!\n"
            export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
          fi
        ;;
        "cd "*)
          x=`earned_xp 0.01`
          yop=`check_valid $2 $x`;
          if [[ $yop == 'good' ]]; then
            printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_BALLOON + $x XP!\n"
            export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
          fi
        ;;
        "cat "*|"cp "*|"rm "*|"touch "*)
          x=`earned_xp 0.01`
          yop=`check_valid $2 $x`;
          if [[ $yop == 'good' ]]; then
            printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_BALLOON + $x XP!\n"
            export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
          fi
        ;;
        "mv readme"*)
          if [[ $PWD == */mazes* ]]; then
            printf "${DG_ANSI_BG_RED}${DG_ICON_WARNING} That file can not be picked up or moved.${DG_ICON_WARNING}${DG_ANSI_X}\n"
          fi
          #exit
        ;;

        "less "*)
          x=`earned_xp 0.05`
          yop=`check_valid $2 $x`;
          if [[ $yop == 'good' ]]; then
            printf "You try to read a file with $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$DG_ICON_BALLOON + $x XP!\n"

            export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
          fi
        ;;
        "ls "*)
          x=`earned_xp 0.01`
          yop=`check_valid $2 $x`;
          if [[ $yop == 'good' ]]; then
            dg_icon=`dg_word_choice "$DG_ICON_BALLOON|$DG_ICON_STAR"`
            printf "You try to run $DG_ICON_WAND ${DG_ANSI_INVERT}$BASH_COMMAND${DG_ANSI_X_INVERT}\n$dg_icon + $x XP!\n"
            dg_look
            export DG_USER_XP=`echo $DG_USER_XP + $x | bc | xargs printf "%.2f"`
            create_link_file 'https://www.youtube.com/watch?v=I4EWvMFj37g' 'bash_video001'
            #(sleep 1 && create_link_file 'https://www.youtube.com/watch?v=I4EWvMFj37g' 'bash_video001')& >/dev/null 2>&1 || true
          fi
        ;;
        "git "*)
          source $devgame_bdir/source/cmds/git.sh
        ;;
        "code "*)
          source $devgame_bdir/source/cmds/vscode.sh
        ;;
        "heroku "*)
          source $devgame_bdir/source/cmds/heroku.sh
        ;;
        "docker "*)
          source $devgame_bdir/source/cmds/docker.sh
        ;;
        "ngrok "*)
          source $devgame_bdir/source/cmds/ngrok.sh
        ;;
        "python "*|"python3 "*)
          source $devgame_bdir/source/cmds/python.sh
        ;;
        "npx jest "*|"npm test"|"yarn test"|*"node"*"jest "*|"jest "*)
          source $devgame_bdir/source/cmds/jest.sh
        ;;
        *)
          # command wasn't recognized
          # echo "$BASH_COMMAND";
        ;;
  esac

 # this makes it so the current_stats are only shown if a status change happend
  if [[ $oldxp = $DG_USER_XP && $oldlvl = $DG_USER_LEVEL ]]; then
    user_updated=0
  else
    user_updated=1
  fi

  save_user_data # save it!
  level_check

}
# this isn't used, currently
trap 'before_command ${LINENO} ${?}' DEBUG

function after_command() {
  case "$1" in
        $PROMPT_COMMAND)
         echo '';
          ;;
       *)
       # echo "$BASH_COMMAND";
       ;;
  esac
}
# make sure the xp level up is above zero, otherwise user level is too high for cmd xp
function check_valid() {
  if [ $1 == 0 ] && (( $(echo "$2 > 0.00" | bc -l) )); then
    eval 'echo "good"'
  else
    eval 'echo "bad"'
  fi
}

function dg_maze_info() {
  printf "\n"
  source $devgame_bdir/ascii/mazes
  printf "\n"
}

function dg_maze_quit() {
printf "${DG_ANSI_BG_RED}${DG_ICON_WARNING} Are you sure [y/n]? ${DG_ICON_WARNING}${DG_ANSI_X_BG}\n"
read -rep $'You will be transported out of the mazes: ' choice

case "$choice" in
  y|Y )
    cd $devgame_bdir/mazes
    printf "${DG_ANSI_BG_BLU}${DG_ICON_TORNADO} You have been transported to the root of the mazes ${DG_ICON_TORNADO} ${DG_ANSI_X_BG}\n"
  ;;
  * )
    echo "Good luck on your travels!"
  ;;
esac

#   read -p "" -n 1 -r
#   printr "\n"  # move to a new line
# if [[ $REPLY =~ ^[Yy]$ ]]
# then
#     cd $devgame_bdir/mazes
# fi

}

function dg_current_stats() {
  printf "\n"
  n=$((100*DG_USER_LEVEL))
  nmo=$((100*(DG_USER_LEVEL-1)))
  xp_next=$(($n+$nmo))
  xp_needed=`echo $xp_next - $DG_USER_XP | bc -l | xargs printf "%.2f"`
  printf "${DG_ANSI_BG_BLU}"
  repeat_str 64 "#"
  printf "${DG_ANSI_X_BG}\n"
  printf "current level: ${DG_USER_LEVEL}\t\t\t";
  printf "current xp: ${DG_USER_XP}/${xp_needed}\t";
  printf "\n"
  printf "${DG_ANSI_BG_BLU}"
  repeat_str 64 "#"
  printf "${DG_ANSI_X_BG}${DG_ANSI_X}"
  printf "\n"
}

function level_check() {
  load_user_data # load it so we can save most recent
  n=$((100*DG_USER_LEVEL))
  nmo=$((100*(DG_USER_LEVEL-1)))
  xp_next=$(($n+$nmo))
  xp_needed=`echo $xp_next - $DG_USER_XP | bc -l | xargs printf "%.2f"`
  if (( $(echo "$xp_needed <= 0.00" | bc -l) )); then
    export DG_USER_XP=0.00
    export DG_USER_LEVEL=$((DG_USER_LEVEL+1))
    save_user_data
    source $devgame_dir/levelup.sh $xp_next
  fi
}
# level_check
function earned_xp() {
  x=`echo $1 / $DG_USER_LEVEL | bc -l | xargs printf "%.2f"`
    printf $x

}
# just a word spinner for randomizing: keep things fresh
function dg_word_choice() {
  # input should be dg_word_choice "word1|word2|word3"
  IFS='|' read -r -a array <<< "$1"
  r=$(( RANDOM % $((${#array[@]})) ))
  printf ${array[$r]}
}
