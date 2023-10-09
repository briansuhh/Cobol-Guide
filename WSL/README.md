#### Guide on how to run a COBOL Program using WSL (Windows Subsystem for Linux)

- Turn on the WSL feature on your windows machine
```bash
# open powershell as an administrator and run this command
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

- Open a terminal or command prompt to install WSL
```bash
# this will install the wsl
wsl --install -d Ubuntu

# after installing, it will prompt you to enter your password and username 
```

- NOTE: after installing the wsl it will automatically start the wsl for you, in case you closed the terminal and you want to open wsl again, you can do so by using this command on a terminal or command prompt
```bash
wsl -d Ubuntu
```

- Download a compiler that will compile your COBOL program
```bash
# first, update your system
sudo apt update 

# then download the compiler for cobol
sudo apt install gnucobol4
```

- Make a COBOL program for displaying Hello World, and save it as main.cob or main.cbl
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

- Compile and run the COBOL program
```bash
# the -x flag indicates that you want it to be compiled as an executable file
# the -o flag indicates the file name for the output
# main.cob is the program that you want to compile 
cobc -x -o output main.cob

# the first command compiled your program, now run the file you created
./output

# yey~!! nkapagrun na ng COBOL program
```

- NOTE: if you want to compile and run your program in one command, you can do so by using this command
```bash
cobc -x -o output main.cob && ./output
```

- NOTE: if you want to pick a different compiler like realia, you can follow the step by step instructions below<br>
[DosBox for compiling and running COBOL](/DOSBox/README.md)
