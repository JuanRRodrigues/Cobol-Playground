       IDENTIFICATION DIVISION.
         PROGRAM-ID. CODE-PRODUCT.


       DATA DIVISION.
       WORKING-STORAGE SECTION.

         01 ETIQUETA.
            05 CODIGO     PIC 9(6) VALUE 0.
            05 FILLER     PIC X(1) VALUE "|".
            05 LOTE       PIC 9(4) VALUE 0.
            05 FILLER     PIC X(1) VALUE "|".
            05 VALIDADE   PIC 9(8) VALUE 0.

       PROCEDURE  DIVISION.

              MOVE 123456 TO CODIGO
              MOVE 9876 TO LOTE
              MOVE 20251231 TO VALIDADE

              DISPLAY "=== ETIQUETA DO PRODUTO ==="
              DISPLAY "ETIQUETA GERADA: " 
              DISPLAY ETIQUETA.


              STOP RUN.
