       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddTwoNumbers.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9(5).
       01 Num2 PIC 9(5).
       01 Result PIC 9(6).
       
       PROCEDURE DIVISION.
       A-PARA.
           PERFORM B-PARA 3 TIMES.                                      
           STOP RUN.
       
       B-PARA.
           DISPLAY "Enter the first number: " WITH NO ADVANCING.
           ACCEPT Num1.
           DISPLAY "Enter the second number: " WITH NO ADVANCING.
           ACCEPT Num2.
           COMPUTE Result = Num1 + Num2.
           DISPLAY "The sum of " Num1 " and " Num2 " is " Result.

