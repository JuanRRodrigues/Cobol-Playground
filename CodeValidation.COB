       IDENTIFICATION DIVISION.
          PROGRAM-ID. CODE-VALIDATION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
            01 CODIGO-PRODUTO  PIC 9(3).
            01 CATEGORIA       PIC X(15).


         PROCEDURE DIVISION.

              DISPLAY "Digite o codigo do produto (100 A 999): "
              ACCEPT CODIGO-PRODUTO

              EVALUATE CODIGO-PRODUTO
                  WHEN 100 THRU 199
                      MOVE "ALIMENTACAO" TO CATEGORIA
                  WHEN 200 THRU 399
                      MOVE "Higiene" TO CATEGORIA
                  WHEN 400 THRU 799
                      MOVE "Limpeza" TO CATEGORIA
                  WHEN 800 THRU 999
                      MOVE "Eletronicos" TO CATEGORIA
                  WHEN OTHER
                      MOVE "CODIGO INVALIDO" TO CATEGORIA
              END-EVALUATE

              DISPLAY "CATEGORIA: " CATEGORIA.

              STOP RUN.
