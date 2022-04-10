
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
  - Scrolls should show after using a command (random+repeated)
- shortcut skills (turn on shortners like `..` instead of `cd)
