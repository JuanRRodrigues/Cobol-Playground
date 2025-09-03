       IDENTIFICATION DIVISION.
       PROGRAM-ID. CPF.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.


       01 CPF.
              05 PARTE1       PIC 9(3).
              05 FILLER       PIC X VALUE ".".
              05 PARTE2       PIC 9(3).
              05 FILLER       PIC X VALUE ".".
              05 PARTE3       PIC 9(3).
              05 FILLER       PIC X VALUE "-".
              05 DIGITO       PIC 9(2).

       PROCEDURE DIVISION.

              MOVE 123 TO PARTE1.
              MOVE 456 TO PARTE2.
              MOVE 789 TO PARTE3.
              MOVE 10 TO  DIGITO.


              DISPLAY "CPF: " PARTE1 "." PARTE2 "." PARTE3 "-" DIGITO 


              STOP RUN.
