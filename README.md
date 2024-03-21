# pongwars-C-Copperspice

## Compilation
I used ubuntu on the wsl to create this code and programm. 

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
