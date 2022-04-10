
██████╗░███████╗██╗░░░██╗░██████╗  ░██████╗░░█████╗░███╗░░░███╗███████╗
██╔══██╗██╔════╝██║░░░██║██╔════╝  ██╔════╝░██╔══██╗████╗░████║██╔════╝
██║░░██║█████╗░░╚██╗░██╔╝╚█████╗░  ██║░░██╗░███████║██╔████╔██║█████╗░░
██║░░██║██╔══╝░░░╚████╔╝░░╚═══██╗  ██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░
██████╔╝███████╗░░╚██╔╝░░██████╔╝  ╚██████╔╝██║░░██║██║░╚═╝░██║███████╗
╚═════╝░╚══════╝░░░╚═╝░░░╚═════╝░  ░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝
# Devs Game
Gamify your daily job tasks, get better with git, bash, VS code, and more!

I started this to help me stay motivated, maybe it can do the same for you.

This is mostly for learning bash terminal currently, early alpha.

## Install
1. Clone the repo
2. Open your `~/.bashrc` file (`nano ~./bashrc` or `vi ~/.bashrc`)
3. Add the line `source <path>/devs-game/source/init` <br>
`<path>` is the location you cloned the repo to

## Commands
- pause/resume `dg_pause_game`
- show stats `dg_current_stats`
- show guide `guide`

### Screen shots
a|b|
--|--|
<kbd> ![image](https://user-images.githubusercontent.com/87285224/162610212-24e08a9d-3154-4f65-8dc2-5758d3596957.png)</kbd>|<kbd>![image](https://user-images.githubusercontent.com/87285224/162609655-0e5f2275-6aa6-430b-ab8c-9e6fe822f975.png)</kbd>|

a|b|
--|--|
<kbd>![image](https://user-images.githubusercontent.com/87285224/162610812-183661f1-d194-4bdd-8237-5eadd1530251.png)</kbd>|<kbd>![image](https://user-images.githubusercontent.com/87285224/162614733-6fafe1b4-1de8-4e4d-9e79-20fa2dfce1f5.png)</kbd>|

# Requirements
- BASH terminal with emoji support
- Maybe some basic unix scripts that most devs should have already

# Features
- Have more fun while working your software engineer or developer job
- Digital Rewards, Items, and new skills for doing what you already do
- Learn more and become more skilled and have fun while doing it
- Earn XP points by running commands and editing your files
- Find helpful "scrolls" (basically cheat sheets) and quick explainer videos by doing your everyday tasks
- Works with VSCode built in terminal and other dev software
- Perform simple commands to level up and more advanced commands when you're ready
- Pseudo procedural in nature, so that it changes as you progress and get's harder to level up
- Adds gamification to your current workflow, as opposed to being a seperate game
- simple install (you might need some dependencies, but I've kept it pretty barebones)

# Coming Soon (more info under the _design_ directory)
- Mazes: these nested folders and files will help you to level up in your downtime or find new skills/knowledge(side missions)
  - navigate folder and CRUD (Create, Read, Update, and Delete) files and folders
  - Read files (`less`) and look around (`ls`) to find out what to do or where to do go
  - CRUD files and folders to get other certain files to run
- Command Skills (Aliases): after leveling up, you are given the ability to add frequently used commands as an alias
  - for example if you used `cd ..` a lot your are offered to alias it to `..` or string of your choice (this is what power users do, so lets get there one command at a time)
    (if it's your choice then you will need to perform the action within the game to ensure you're skilled enough to decide on your own names)
  - (similar to atribution points in some games)
  - if you don't use it enough by the next level it could break the link (remove alias)
  - at lower levels commands will come from a file (limited choice) as you progress it just looks at commands you run
- Score Board
  - do a pull request to a repo with your encrypted scores file to see show off your stats!
  - will check decrypt files, validate, and merge with scoreboard file
  - view scoreboard online, or maybe I'll use github api to allow users to curl scoreboard url 
- Combos
  - enter the right sequence of commands to get bonus xp or hidden scrolls/items/videos (e.g. git status; git add; git commit; git push; etc.)

## Todo
- refactor messy code
- remove old alias'
- add new skills:
  - VSCode features
  - Test features (Jest/Cypress/etc.)
  - More Git/Github
  - Apt commands
  - Grep/Regex/Pipe
  - Basic file system
- scroll find logic
  - Scrolls should show after using a command X times (X will use simple alg. to use rand etc.)

