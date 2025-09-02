       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.   *> Usa vírgula como separador decimal

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
        01 DADOS-SHOPS.
            05 SHOP1        PIC 9(4)V99. 
            05 SHOP2        PIC 9(4)V99. *> até 4 dígitos inteiros e 2 decimais
            05 TOTAL        PIC 9(4)V99.

       PROCEDURE DIVISION.

           MOVE 1023,45 TO SHOP1.
           MOVE 807,55 TO SHOP2.

           ADD SHOP1 SHOP2 GIVING TOTAL.



           DISPLAY "TOTAL:" TOTAL.
           
           STOP RUN.
