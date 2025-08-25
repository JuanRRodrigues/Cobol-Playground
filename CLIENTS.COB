       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NOME        PIC X(20) VALUE SPACES.
       01 WRK-SALDO       PIC S9(10) COMP VALUE ZEROS.
       01 WRK-SALDO-ED    PIC Z(9)9,99.

       PROCEDURE DIVISION.
           DISPLAY "DIGITE SEU NOME: "
           ACCEPT WRK-NOME.

           DISPLAY "DIGITE SEU SALDO: "
           ACCEPT WRK-SALDO.
       
           IF WRK-SALDO GREATER THAN OR equal 5000
                DISPLAY WRK-NOME 
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY "SALDO: " WRK-SALDO-ED

                ADD 500 TO WRK-SALDO
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY WRK-NOME
                DISPLAY "SALDO: " WRK-SALDO-ED
                DISPLAY "-------------------"

                SUBTRACT 200 FROM WRK-SALDO
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY WRK-NOME
                DISPLAY "SALDO: " WRK-SALDO-ED
                DISPLAY "-------------------"

                MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY WRK-NOME
                DISPLAY "SALDO: " WRK-SALDO-ED
                DISPLAY "-------------------"

                DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY WRK-NOME
                DISPLAY "SALDO: " WRK-SALDO-ED
                DISPLAY "-------------------"

                COMPUTE WRK-SALDO = WRK-SALDO * 1,10
                MOVE WRK-SALDO TO WRK-SALDO-ED
                DISPLAY "SALDO COM JUROS: " WRK-SALDO-ED
           ELSE
                DISPLAY "SALDO nao compativel"
           END-IF.

           STOP RUN.
