# Devil Daggers Practice Tool

Devil Daggers Practice Tool is a command line tool that allows you to play and download different spawnsets for the game Devil Daggers

It is designed as a Linux alternative to the download and import features in [Devil Daggers Survival Editor](https://github.com/NoahStolk/DevilDaggersSurvivalEditor) 
![screenshot](https://cdn.discordapp.com/attachments/643540982154919966/945867763723939890/unknown.png)


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

## How it works
  the script checks if you have the chosen spawnset downloaded, if yes it copies it to be the "survival" file 
  if the spawnset is not downloaded, it will download it from devildaggers.info via wget and then copy it 
  
  this makes for a very smooth experience where the user doesn't have to deal with checking what is downloaded or not 
  
  the search function simply tries to download a spawnset from  devildaggers.info with the name you give it, for now there isn't a failure message so you need to make sure that you enter the correct name 
  if it successfully downloads a spawnset it will copy it to the survival file so that it's playable 
  if you search for the same spawnset that you have already downloaded once, the script will not download it again but simply use the already downloaded version 
  this leads to smoother usage but can clutter your dd folder if you go crazy.
  
  
  

## Contributing
You are welcome to open Issues, pull requests or forking this repo as you see fit

## License
[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
