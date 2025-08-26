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
       01 WRK-TIPO-CONTA  PIC 9 VALUE 0.

       PROCEDURE DIVISION.


       0100-PRINCIPAL    SECTION.
             PERFORM 0200-INICIAR  
             PERFORM 0300-PROCESSAR UNTIL WRK-TIPO-CONTA EQUAL 9.
             PERFORM 0400-FINALIZAR
      
           STOP RUN.
       0100-FIM. EXIT.


       0200-INICIAR      SECTION.
      *-------------------------- INICIAR
           DISPLAY "DIGITE SEU NOME: "
           ACCEPT WRK-NOME.

           DISPLAY "DIGITE SEU SALDO: "
           ACCEPT WRK-SALDO.

           DISPLAY "CONTA 1-Santander 2-Itau 3-Bradesco"
           ACCEPT WRK-TIPO-CONTA.


           
       0200-FIM. EXIT.

      *-------------------------- PROCESSAR

       0300-PROCESSAR    SECTION.

          EVALUATE WRK-TIPO-CONTA
               WHEN 1
                   DISPLAY "CONTA SANTANDER"
                WHEN 2
                   DISPLAY "CONTA ITAU"
                WHEN 3
                   DISPLAY "CONTA BRADESCO"
                WHEN OTHER
                   DISPLAY "CONTA INVALIDA" 
           END-EVALUATE

       
           IF WRK-SALDO GREATER THAN OR equal 5000 And 
                (WRK-TIPO-CONTA EQUAL 1 OR WRK-TIPO-CONTA EQUAL 2)
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

                PERFORM 0200-INICIAR
           ELSE
                DISPLAY "SALDO nao compativel"
           END-IF.


       0300-FIM. EXIT.

      *-------------------------- FINALIZAR
       0400-FINALIZAR   SECTION.
           DISPLAY "---------------------------".
           DISPLAY "--- FIM DO PROGRAMA ---".

       0400-FIM. EXIT.
           

           

       
