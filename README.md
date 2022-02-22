# Devil Daggers Practice Tool

Devil Daggers Practice Tool is a command line tool that allows you to play and download different spawnsets for the game Devil Daggers

It is designed as a Linux alternative to the download and import features in [Devil Daggers Survival Editor](https://github.com/NoahStolk/DevilDaggersSurvivalEditor) 



## Installation



```bash
git clone https://github.com/Evelyn1337/Devil-Daggers-Practice-Tool
cd Devil-Daggers-Practice-Tool
sudo chmod +x ddpracticetool.sh 
```

## Usage
run it with 
```bash
./ddpracticetool.sh
```
or add it to your $PATH 

if you have Devil Daggers installer in any other path than /home/<user>/.local/share/Steam/steamapps/common you need to edit the $DD variable (found on the second line in this script) so that it points to steamapps/common/devildaggers/dd 

you also need to the first time setup the first time you run this script (option number 10) 

do not run the first time setup after you have started using this tool

if your devil daggers install gets messed upp, clear your dd folder instide common/devildaggers and validate your game files

I am not responsible for anything that happens to your game, your account or you 



## Contributing
You are welcome to open Issues, pull requests or forking this repo as you see fit

## License
[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
