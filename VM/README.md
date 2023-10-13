#### Guide on how to run a COBOL Program using Virtual Machine
---

1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Kali Linux VM](https://www.kali.org/downloads/)

2. Open VirtualBox and click the Add button

3. Select the Kali Linux VM that you downloaded and click the Start button

4. Follow the instructions on the screen to install Kali Linux

5. After installing Kali Linux, open the terminal and update your system
    ```bash
    sudo apt update
    ```

6. Download a compiler that will compile your COBOL program
    ```bash
    # download the compiler for cobol
    sudo apt install gnucobol4
    ```

7. Make a COBOL program for displaying Hello World, and save it as main.cob or main.cbl
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

8. Compile and run the COBOL program
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
