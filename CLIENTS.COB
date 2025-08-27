      ******************************************************************
      * PROGRAMA: CLIENTS
      * OBJETIVO: DEMONSTRAR LEITURA DE ARQUIVO, VARIÁVEIS E PROCESSOS
      * AUTOR...: EXEMPLO AJUSTADO
      * VERSÃO..: 1.0
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTS.

      ******************************************************************
      * DEFINIÇÃO DO AMBIENTE
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.   *> Usa vírgula como separador decimal

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQ-CLIENTES ASSIGN TO 'INARQCLI.TXT'
                FILE STATUS IS FS-INARCLI.  *> Status do arquivo

      ******************************************************************
      * DECLARAÇÃO DE DADOS
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.

       FD ARQ-CLIENTES
              RECORDING MODE IS F.   *> Arquivo de registros fixos

       01 REGISTRO.        
           05 REG-AGENCIA         PIC X(04).
           05 REG-CONTA           PIC X(05).
           05 REG-NOME            PIC X(30).
           05 REG-GERENTE         PIC X(03).
           05 REG-TIPO-CONTA      PIC 9(01).
           05 REG-SALDO           PIC 9(10)V99.

       WORKING-STORAGE SECTION.
       01 FS-INARCLI             PIC 9(02).          *> Status do arquivo
       01 WRK-CONTADOR           PIC 9(03) COMP.     *> Contador de registros
       01 REG-SALDO-ED           PIC Z(10).99.       *> Saldo formatado

      ******************************************************************
      * INÍCIO DO PROCESSAMENTO
      ******************************************************************
       PROCEDURE DIVISION.

      *-------------------------- PROGRAMA PRINCIPAL
       0100-PRINCIPAL SECTION.
           PERFORM 0200-INICIAR  
           PERFORM 0300-PROCESSAR 
           PERFORM 0400-FINALIZAR
           STOP RUN.
       0100-FIM. EXIT.

      *-------------------------- ROTINA DE INICIALIZAÇÃO
       0200-INICIAR SECTION.

           OPEN INPUT ARQ-CLIENTES

           IF FS-INARCLI EQUAL 0
              DISPLAY "STATUS DO ARQUIVO: " FS-INARCLI
              READ ARQ-CLIENTES
              CLOSE ARQ-CLIENTES
           END-IF
 

      *    Exemplos comentados para entrada manual:
      *    DISPLAY "DIGITE SEU NOME: "
      *    ACCEPT REG-NOME
      *
      *    DISPLAY "CONTA 1-Santander 2-Itau 3-Bradesco"
      *    ACCEPT REG-TIPO-CONTA
      *
      *    DISPLAY "DIGITE SEU SALDO: "
      *    ACCEPT REG-SALDO

           DISPLAY "============================".
       0200-FIM. EXIT.

      *-------------------------- ROTINA DE PROCESSAMENTO
       0300-PROCESSAR SECTION.

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

          IF REG-SALDO >= 5000
             AND (REG-TIPO-CONTA = 1 OR REG-TIPO-CONTA = 2)
               MOVE REG-SALDO TO REG-SALDO-ED
               DISPLAY "NOME..: " REG-NOME
               DISPLAY "SALDO.: " REG-SALDO-ED
          ELSE
               DISPLAY "SALDO nao compativel"
          END-IF.

      *   Exemplos de operações matemáticas (comentados):
      *   ADD 500 TO REG-SALDO
      *   SUBTRACT 200 FROM REG-SALDO
      *   MULTIPLY REG-SALDO BY 2 GIVING REG-SALDO
      *   DIVIDE REG-SALDO BY 3 GIVING REG-SALDO
      *   COMPUTE REG-SALDO = REG-SALDO * 1,10

       0300-FIM. EXIT.

      *-------------------------- ROTINA DE FINALIZAÇÃO
       0400-FINALIZAR SECTION.
           DISPLAY "---------------------------"
           DISPLAY "AGENCIA: " REG-AGENCIA
           DISPLAY "CONTA..: " REG-CONTA
           DISPLAY "NOME...: " REG-NOME
           DISPLAY "GERENTE: " REG-GERENTE
           DISPLAY "TIPO...: " REG-TIPO-CONTA
           DISPLAY "SALDO..: " REG-SALDO
           DISPLAY "--- FIM DO PROGRAMA ---".
       0400-FIM. EXIT.
