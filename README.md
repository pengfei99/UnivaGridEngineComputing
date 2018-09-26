# UGE job launchers 

This project aims to submit multiple uge(Univa Grid engine) jobs with same logic and different arguments. 


### Prerequisites

This tool only requires bash


### Supported OS


Linux  


### Installing

The script contains three parts: 
- `main.sh` : the main script which takes config file path as input. It reads the config file, parse the file line by line to a list of arguments for each lines. And for each list of arguments, call the command.sh script to run the specific logic. 
- `command.sh` : contains the script which calls the program which user wants to run on UGE
- `config` : config file contains the inputs of command.sh. One row must contains enough argument to run the command.sh script. By default, In one line, arguments are seprated by ';'. It can be modified in the main.sh
 
## Running the tool

```
sh main.sh path/to/config
```



## Versioning

The current stable version is 1.0

## Authors

* **Pengfei Liu** 


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
