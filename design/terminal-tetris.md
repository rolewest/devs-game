# Terminal Tetris mini game

  - files and folders are automatically created and you must sort them correctly
  - e.g. mv this file to this folder, copy this file from that (random structured)
  - e.g. this file is missing an empty line, add it, or remove the last line
  - (maybe need to run `dg_check` / `dg_done` after each completed action?)
  - type dg_help to get a hint for the last instruction:
    - e.g. type `tar -zcvf <compressed-name>.tar.gz <source-directory-name>` to compress a directory
  - you'll do `rm` command to clear the level when instructed, or to delete a compressed directory
  - newfile-[]; newfile-s; newfile-l; newfile-|
  - this shape is:
    - bottom heavy, remove the last line to rotate it down
    - top heavy, remove the top line to
  - or this shape is:
    - facing the wrong way, remove lines 6, 7, 11 to rotate it
    - ! best !  copy line 23 from your controls file and paste it on line 16
      - use a controls file to alter/rotate/move the shapes
      - different shapes could use different languages and your controls file has the missing lines for each
      - or it could be language specific?