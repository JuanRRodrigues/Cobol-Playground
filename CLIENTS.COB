       IDENTIFICATION            DIVISION.
       PROGRAM-ID. CLIENTS.
       ENVIRONMENT             DIVISION.
       DATA                    DIVISION.
       WORKING-STORAGE         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT       IS COMMA.


       DATA                    DIVISION.
       WORKING-STORAGE         SECTION.
       01 WRK-NOME             PICTURE X(20) VALUE SPACES.
       01 WRK-SALDO            PICTURE S9(05) VALUE ZEROS.
       01 WRK-SALDO-ED         PICTURE ZZZZ9.

       PROCEDURE               DIVISION.
           DISPLAY "DIGITE SEU NOME "
              ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO"
              ACCEPT WRK-SALDO.
           
           ADD 500 TO WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO: " WRK-SALDO
           DISPLAY "-------------------".
           
           SUBTRACT 200 FROM WRK-SALDO 
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO: " WRK-SALDO
           DISPLAY "-------------------".

           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "-------------------".

           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "-------------------".

           STOP  RUN.