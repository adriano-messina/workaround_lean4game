## Attention

Execute this files at your own Risk.

I am not responsible for any damage those file does on your machine.

I am not responsible for any Content that is behind the links in this file.

You are responsible, what you do.

---

## Install Lean Game

### Requirements

- root privileges 
  *without also possible, but not recommended, since the dependencities may not fulfilled.*
- fresh Ubuntu 22.04 LTS
  *maybe it will work on newer or older ubuntu versions, or on debian too*
  *contact me if it works for some other distributions or versions, i will add them in the list*
- 1 GB free storage
- 4 GB RAM 
  *maybe less?*
  
### Instrucctions

1. Download this repository.
`git clone https://github.com/adriano-messina/workaround_lean4game.git`

2. Execute with root privileges.
`sudo sh ./installation.sh`

## Add custom GameSkeleton

You need your custom code in the VCS git, then execute the following command replaced the URL and MAIN_DIR_NAME
`sudo sh ./gameskeleton.sh "URL" "MAIN_DIR_NAME"`


## Run Lean Game

Execute after a sucessful installation the folowing script with root privileges.
`sudo sh run.sh`
You can reach the demo world whith [http://localhost:3000/#/g/local/GameSkeleton](http://localhost:3000/#/g/local/GameSkeleton).
Well if you had it on a server please edit the url and replace "localhost" by the ip-adress/hostname of your machine.
If you want to reach an other GameSkeleton, replace "GameSkeleton" by the name of the directory.

---

# FAQ
*Or something i want to mention.*

- **Why is the installer so messy?**
  *Lean4, Lean4game has those poor complicated messy instructions to set their software up.*
  
- **I don't like NVM, is there a way around nvm?**
  *Yes, if you prefer VSCode, this seems to be better documented.*
  
- **Really, only VSCode?**
  *Yes, or at least it seems so.*
  
- **Can you improve the installer?**
  *I don't want to take to much effort in those, but if you have some improvements add them.*

- **This installer don't work anymore.**
  *Look at their documentation, linked below.*
  
## Links

- [elan](https://github.com/leanprover/elan)
- [Lean4](https://lean-lang.org/lean4/doc/setup.html)
- [Lean4 Game](https://github.com/leanprover-community/lean4game/blob/main/doc/running_locally.md)

---

Have a high frustration tolerance, good luck.
