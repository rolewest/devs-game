devgamemaze_bdir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd .. && cd .. && pwd )
dg_base_dir=${devgamemaze_bdir}
dg_maze_dir=${devgamemaze_bdir}/mazes
dg_eof() {
# all readables end with this
  printf "\nPress the 🅀 key to stop reading this file\n\n\n\t  --end of file--"
}
# create all the folders

mkdir -p $dg_maze_dir/beginner/tutorial/start/
mkdir -p $dg_maze_dir/beginner/tutorial/start/red_door/green_door/{blue_door,/purple_door/teal_door}
#mkdir -p $dg_maze_dir/beginner/tutorial/start/red_door/{left/{left/,up/},right/up/{right/,up/},up/left,down/{left/,up/}}
#mkdir -p $dg_maze_dir/beginner/tutorial/start/blue_door/{left/{left/,up/},right/up/{right/,up/},up/left,down/{left/,up/}}
#mkdir -p $dg_maze_dir/beginner/tutorial/start/green_door/{left/{left/,down/down/down},right/down/{right/,down/},up/left,down/{left/,up/}}

# add readme
file_name=$dg_maze_dir"/beginner/tutorial/readme"
if test -f $file_name; then
    unlock_file
    rm $file_name
fi
cat $dg_base_dir/ascii/tutorial > $file_name
printf "Enter the 🅂 🅃 🄰 🅁 🅃 directory to begin\n" >> $file_name
`printf dg_eof` >> $file_name
lock_file

# add next read me
file_name=$dg_maze_dir"/beginner/tutorial/start/red_door/readme"
if test -f $file_name; then
    unlock_file
    rm $file_name
fi
cat $dg_base_dir/ascii/tutorial > $file_name
printf "Enter the 🅂 🅃 🄰 🅁 🅃 directory to begin!!!\n" >> $file_name
`printf dg_eof` >> $file_name
lock_file

lock_file() {
  if dg_os=="mac"; then
    sudo chflags uchg $file_name
  else
    sudo chattr +i $file_name
  fi
}
unlock_file() {
  if dg_os=="mac"; then
    chflags nouchg $file_name
  else
    sudo chattr -i $file_name
  fi
}
#chmod 400 $dg_maze_dir/beginner/tutorial/readme