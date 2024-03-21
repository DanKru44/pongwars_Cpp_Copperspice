# pongwars-C-Copperspice
This Project was created for my exam in the modul object orientated programming.

I got the insperation from this Project: [vnglst/pong-wars](https://github.com/vnglst/pong-wars)
He made the programm in JavaScript. 
You find in his Repository some links to Alternate Versions of this programm from other developers. 



## Compilation
I used ubuntu inside the wsl to create this code and programm. 

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

5.  Run cmake to build
    ```
    cmake --build . 
    ```
    
6.  Run cmake to install 
    ```
    cmake --install . --prefix=deploy
    ```
7.  Run the programm 
    ```
    ./deploy/pongwars
    ```
