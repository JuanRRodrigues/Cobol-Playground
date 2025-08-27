       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQ-CLIENTES ASSIGN TO 'INARQCLI.TXT'

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 REGISTRO.        
           05 REG-AGENCIA         PICTURE X(04).
           05 REG-CONTA           PICTURE X(05).
           05 REG-NOME            PICTURE X(30).
           05 REG-GERENTE         PICTURE X(03).
           05 REG-TIPO-CONTA      PICTURE X(01).
           05 REG-SALDO           PICTURE X(10)V99.
           01 WRK-CONTADOR        PICTURE 9(03) USAGE COMP.


       PROCEDURE DIVISION.


       0100-PRINCIPAL    SECTION.
             PERFORM 0200-INICIAR  
             PERFORM 0300-PROCESSAR 
             PERFORM 0400-FINALIZAR
      
           STOP RUN.
       0100-FIM. EXIT.


       0200-INICIAR      SECTION.
      *-------------------------- INICIAR
           DISPLAY "DIGITE SEU NOME: "
           ACCEPT REG-NOME.

           DISPLAY "CONTA 1-Santander 2-Itau 3-Bradesco"
           ACCEPT REG-TIPO-CONTA.

           DISPLAY "DIGITE SEU SALDO: "
           ACCEPT REG-SALDO.

           DISPLAY "============================"


           
       0200-FIM. EXIT.

      *-------------------------- PROCESSAR

       0300-PROCESSAR    SECTION.

          EVALUATE REG-TIPO-CONTA
               WHEN 1
                   DISPLAY "CONTA SANTANDER"
                WHEN 2
                   DISPLAY "CONTA ITAU"
                WHEN 3
                   DISPLAY "CONTA BRADESCO"
                WHEN OTHER
                   DISPLAY "CONTA INVALIDA" 
           END-EVALUATE

       
           IF REG-SALDO GREATER THAN OR equal 5000 And 
                (REG-TIPO-CONTA EQUAL 1 OR REG-TIPO-CONTA EQUAL 2)
                DISPLAY REG-NOME 
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY "SALDO: " REG-SALDO-ED

                ADD 500 TO WRK-SALDO
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY REG-NOME
                DISPLAY "SALDO: " REG-SALDO-ED
                DISPLAY "-------------------"

                SUBTRACT 200 FROM REG-SALDO
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY REG-NOME
                DISPLAY "SALDO: " REG-SALDO-ED
                DISPLAY "-------------------"

                MULTIPLY REG-SALDO BY 2 GIVING REG-SALDO
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY REG-NOME
                DISPLAY "SALDO: " REG-SALDO-ED
                DISPLAY "-------------------"

                DIVIDE REG-SALDO BY 3 GIVING REG-SALDO
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY REG-NOME
                DISPLAY "SALDO: " REG-SALDO-ED
                DISPLAY "-------------------"

                COMPUTE REG-SALDO = REG-SALDO * 1,10
                MOVE REG-SALDO TO REG-SALDO-ED
                DISPLAY "SALDO COM JUROS: " REG-SALDO-ED

                PERFORM 0200-INICIAR
           ELSE
                DISPLAY "SALDO nao compativel"
           END-IF.


       0300-FIM. EXIT.

      *-------------------------- FINALIZAR
       0400-FINALIZAR   SECTION.
           DISPLAY "---------------------------".
           DISPLAY REGISTRO
           DISPLAY "--- FIM DO PROGRAMA ---".

       0400-FIM. EXIT.
           

           

       
