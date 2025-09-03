       IDENTIFICATION DIVISION.
         PROGRAM-ID. CLIENTE-ADDRESS.


       DATA DIVISION.
       WORKING-STORAGE SECTION.


       01 CLIENTE.
              05 ENDERECO.
                 10 RUA       PIC x(30) VALUE SPACES.
                 10 NUMERO    PIC 9(3) VALUE 0.
                 10 CEP       PIC 9(8) VALUE 0.
           
       PROCEDURE DIVISION.

                MOVE "Avenida Paulista" TO RUA    OF ENDERECO.
                MOVE 25                 TO NUMERO OF ENDERECO.
                MOVE 01311000           TO CEP    OF ENDERECO.


                DISPLAY "=== DADOS DO CLIENTE ===".
                DISPLAY "RUA: " RUA          OF ENDERECO
                DISPLAY "NUMERO: " NUMERO    OF ENDERECO
                DISPLAY "CEP: " CEP          OF ENDERECO.

                STOP RUN.
