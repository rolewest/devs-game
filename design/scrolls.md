# Scroll

Scrolls should only be available (except starter scrolls)
after user runs commands based on the scroll
a certain a number is reached
pseudo code:
if (cmd_count / (level/2) - rnd[((level/2)*-1)..(level/2)] ) >= 10 then
show_scroll
end

- scrolls can also be given if VSCode/bash finds files with same extention in pwd by doing ls or cd
  - e.g. ls: "you also see a scroll for Ruby lying wedged between two folders"
  - e.g. cd: "while changing directories you trip over a ES6/Vue/SQL cheat sheet

user_scrolls will contain all available scrolls for the user
(todo: refactor `scroll` function to check this file and not
the scrolls directory and change name to `dg_scroll`)


# Starter Scrolls

- dg_guide which lists basic game commands
- and dg_journey which outlines the "first users" journey and tells how the game is played
- dg_setup is hard aliased and tells the user how to get things working

