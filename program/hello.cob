       IDENTIFICATION DIVISION.
       PROGRAM-ID. HelloWorld.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-HELLO-MESSAGE PIC X(14) VALUE "Hello, World!".

       PROCEDURE DIVISION.
           DISPLAY WS-HELLO-MESSAGE.                                    
           STOP RUN.
