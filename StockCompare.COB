       IDENTIFICATION DIVISION.
       PROGRAM-ID. STOCK-CONTROLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.


       01 DEPOSIT1.
            05 PRODUCT-A      PIC 9(4) VALUE 0.
            05 PRODUCT-B      PIC 9(4) VALUE 0.
            05 PRODUCT-C      PIC 9(4) VALUE 0.

       01 DEPOSIT2.
            05 PRODUCT-A      PIC 9(4) VALUE 0.
            05 PRODUCT-B      PIC 9(4) VALUE 0.
            05 PRODUCT-C      PIC 9(4) VALUE 0.
       
       01 TOTAIS.
            05 TOTAL-A      PIC 9(4) VALUE 0.
            05 TOTAL-B      PIC 9(4) VALUE 0.
            05 TOTAL-C      PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.

              MOVE 10 TO PRODUCT-A OF DEPOSIT1 
              MOVE 15 TO PRODUCT-B OF DEPOSIT1
              MOVE 20 TO PRODUCT-c OF DEPOSIT1

              MOVE 5 TO PRODUCT-A OF DEPOSIT2 
              MOVE 10 TO PRODUCT-B OF DEPOSIT2
              MOVE 5 TO PRODUCT-c OF DEPOSIT2 


              ADD PRODUCT-A OF DEPOSIT1
                  PRODUCT-A OF DEPOSIT2
                  GIVING TOTAL-A

              ADD PRODUCT-B OF DEPOSIT2
                  PRODUCT-B OF DEPOSIT1
                  GIVING TOTAL-B

              ADD PRODUCT-C OF DEPOSIT1
                  PRODUCT-C OF DEPOSIT2
                  GIVING TOTAL-C


            DISPLAY "=== TOTAIS DE PRODUTOS ==="
            DISPLAY "PRODUTO A: " TOTAL-A
            DISPLAY "PRODUTO B: " TOTAL-B
            DISPLAY "PRODUTO C: " TOTAL-C.


            STOP RUN.
