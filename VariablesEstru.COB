       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMPLOYERS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Área de armazenamento de dados
        01 DADOS-EMPLOYERS.
         05 NOME           PIC A(30).
         05 CODIGO         PIC 9(04).

       



       PROCEDURE DIVISION.

              MOVE "JOANA SILVA" TO NOME.
              MOVE 1023 TO CODIGO.
              DISPLAY "NOME: " NOME.
              DISPLAY "CODIGO: " CODIGO.

              STOP RUN.
