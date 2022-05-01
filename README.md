
![image](https://user-images.githubusercontent.com/87285224/165759240-6d56d1b3-114f-4496-a663-cda4e8efc3fb.png)
# Devs Game
Gamify your daily job tasks, get better with git, bash/terminal, VS code, and more!

If you're a software developer it's kind of like an RPG for your life.

I started this to help me learn more about bash etc., and stay motivated when coding, maybe it can do the same for you?
This is mostly for learning bash terminal and git/github, currently, early alpha.

Almost full support for:
- Git/Github
- Bash terminal commands

Partial terminal support for:
- VSCode
- Heroku
- Docker
- Ngrok
- Python
- Jest
- npm/yarn
- Ruby on Rails
- more to come. Suggestions?

EARLY ALPHA, lots to do and to come.
This is my "weekends" project.
## Install Linux (Ubuntu)
1. Clone the repo
2. Open your `~/.bashrc` file (`nano ~./bashrc` or `vim ~/.bashrc` or even `gedit ~/.bashrc` if you want a GUI)
3. Add the line `source <path>/devs-game/source/init` <br>
`<path>` is the location you cloned the repo to
4. Open a new terminal window, or run `bash --login` from your current bash shell
5. Tree not installed? Install tree with `sudo apt install tree`

## Install MacOS
1. Clone the repo
2. Open your `/etc/profile` file `sudo nano /etc/profile`
3. Add the line `source <path>/devs-game/source/init mac` <br>
`<path>` is the location you cloned the repo to
4. Open a new terminal window, or run `bash --login` from your current bash shell
5. Tree not installed? Install tree with `brew install tree`

## Install Windows
Untested. Probably works through GitBash

## Commands
- pause/resume `dg_pause_game`
- show stats   `dg_current_stats`
- show guide   `dg_guide`
- show items   `dg_show_items`
- show scrolls `dg_scrolls`
- leave maze   `dg_maze_quit`

# Requirements
- BASH terminal with emoji support
- Maybe some basic unix scripts that most devs should have already
- Should work on:
  - Ubuntu (built on Ubuntu 21.10)
  - MacOS *no sound*
  - Windows under GitBASH (https://gitforwindows.org/) *untested, probably need to tweak the code*

### Screen shots
a|b|
--|--|
<kbd> ![image](https://user-images.githubusercontent.com/87285224/162610212-24e08a9d-3154-4f65-8dc2-5758d3596957.png)</kbd>|<kbd>![image](https://user-images.githubusercontent.com/87285224/162609655-0e5f2275-6aa6-430b-ab8c-9e6fe822f975.png)</kbd>|

c|d|
--|--|
<kbd>![image](https://user-images.githubusercontent.com/87285224/162610812-183661f1-d194-4bdd-8237-5eadd1530251.png)</kbd>|<kbd>![image](https://user-images.githubusercontent.com/87285224/162614733-6fafe1b4-1de8-4e4d-9e79-20fa2dfce1f5.png)</kbd>|

# Features
- Have more fun while working your software engineer or developer job, especially if you use bash terminal often
- Digital Rewards, Items, and new skills for doing what you already do
  - such as cool guides, cheat sheets, concise hidden training videos and more!
- Learn more and become more skilled, and have fun while doing it
- Earn XP points by running commands, editing your files, and doing the things you already do
- Works with VSCode built in terminal and other common developer software and terminal commands (more to come, have suggestions?)
- Perform simple commands to level up, and more advanced commands when you're ready
- Game changes as you progress and get's harder as you learn more
- Adds gamification to your current workflow, as opposed to being a seperate game
- simple install (you might need some dependencies, but I've kept it pretty barebones)
- Retro style for that old-timey feel!

#

# Coming Soon (more info under the _design_ directory)
- Mazes: (in progress) these nested folders and files will help you to level up in your downtime or find new skills/knowledge(side missions)
  - navigate folder and CRUD (Create, Read, Update, and Delete) files and folders
  - Read files (`less`) and look around (`ls`) to find out what to do or where to do go
  - CRUD files and folders to get other certain files to run
- Command Skills (Aliases): after leveling up, you are given the ability to add frequently used commands as an alias
  - for example if you used `cd ..` a lot your are offered to alias it to `..` or string of your choice (this is what power users do to save time, so lets get there one command at a time)
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
- Terminal Tetris - Mini Game
  - files and folders are generated during the game, and you need to sort them or perform actions on them as fast as possible

## Getting started
  After following the install instructions and/or trying some or all of the commands still not sure what to do?
  - try clicking the link from when the game starts, if you don't see it type `dg_welcome` and press enter/return:
![image](https://user-images.githubusercontent.com/87285224/163726314-f6880281-c62a-4251-bc8b-f98131309ed3.png)
  - read that webpage/file/link as it will tell you all of commands you need to get started and to progress

## Todo
- refactor messy code
- remove old alias' junk
- add new skills:
  - VSCode features
  - Test features (Jest/Cypress/etc.)
  - More Git/Github
  - Apt commands
  - Grep/Regex/Pipe
  - Basic file system
- scroll find logic
  - Scrolls should show after using a command X times (X will use simple alg. w/ semi-rand etc.)

