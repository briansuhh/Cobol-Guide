#### Guide on how to run a COBOL Program using WSL (Windows Subsystem for Linux)

1. Turn on the WSL feature on your windows machine
    ```bash
    # open powershell as an administrator and run this command
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    ```

2. Open a terminal to install WSL
    ```bash
    # this will install the wsl
    wsl --install -d Ubuntu

    # after installing, it will prompt you to enter your password and username for the wsl
    # after entering your password and username, it will ask you to restart your computer
    ```

3. Open a terminal to run the wsl
    ```bash
    wsl -d Ubuntu
    ```

4. Download a compiler that will compile your COBOL program
    ```bash
    # first, update your system
    sudo apt update 

    # then download the compiler for cobol
    sudo apt install gnucobol4
    ```

5. Make a COBOL program for displaying Hello World, and save it as main.cob or main.cbl
    ```cobol
        IDENTIFICATION DIVISION.
        PROGRAM-ID. HelloWorld.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 WS-HELLO-MESSAGE PIC X(14) VALUE "Hello, World!".

        PROCEDURE DIVISION.
            DISPLAY WS-HELLO-MESSAGE.
            STOP RUN.
    ```

6. Compile and run the COBOL program
    ```bash
    # the -x flag indicates that you want it to be compiled as an executable file
    # the -o flag indicates the file name for the output
    # main.cob is the program that you want to compile 
    cobc -x -o output main.cob

    # the first command compiled your program, now run the file you created
    ./output

    # you can combine the two commands above by using this command
    cobc -x -o output main.cob && ./output

    # yey~!! nkapagrun na ng COBOL program
    ```

You can also pick other options on how to run a COBOL program by visiting this [link](../README.md).
