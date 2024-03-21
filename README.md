# pongwars_Cpp_Copperspice
This Project was created for my exam in the modul object orientated programming.

I got the insperation from this Project: [vnglst/pong-wars](https://github.com/vnglst/pong-wars).
He made the programm in JavaScript. 
You find in his Repository some links to Alternate Versions of this programm from other developers. 

## Build Enviroment
I develop this Project inside the wsl an Ubuntu

Ubuntu-Version: 22.04

The Copperspice Pre-Compiled Library i added are for this Version of Ubuntu.
I do not know if it works on other Versions.

I wrote the Code inside the  Texteditor [LunarVim](https://www.lunarvim.org/).


## Compilation
To compile this programm you need to follow these steps:

1.  Export the CopperSpice-library root to a shell variable. 
    Navigate to the pongwars-Cpp-Copperspice mainfolder an enter following Code.
    ```
    CSLIB=$(pwd)
    ```

2.  Create and navigate in to the build folder
    ```
    cd pongwars && mkdir build && cd build
    ```

4.  Run cmake to create the build enviroment
    ```
    cmake -DCMAKE_PREFIX_PATH=$CSLIB ..
    ```

5.  Run cmake to build the project binary tree
    ```
    cmake --build . 
    ```
    
6.  Run cmake to install the programm into the deploy directory 
    ```
    cmake --install . --prefix=deploy
    ```
7.  Run the programm 
    ```
    ./deploy/pongwars
    ```
