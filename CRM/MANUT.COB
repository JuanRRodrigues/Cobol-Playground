       IDENTIFICATION DIVISION.
       PROGRAM-ID. MANUT.

       ENVIRONMENT      DIVISION.
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
           SELECT ARQCRM ASSIGN TO '..\DADOS\ARQCRM.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS ARQCRM-FS
               RECORD KEY IS ARQCRM-CHAVE.


       DATA DIVISION.
       FILE SECTION.
       FD  ARQCRM.
       COPY  "#CRM".


       WORKING-STORAGE     SECTION.
       01 ARQCRM-FS       PIC XX VALUE SPACES.
       01 WRK-SEGURATELA      PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM INICIAR.
           PERFORM FINALIZAR.
           GOBACK.

       INICIAR   SECTION.
              OPEN INPUT ARQCRM
              DISPLAY "STATUS ABERTURA" ARQCRM-FS



             EVALUATE ARQCRM-FS
                  WHEN "00"
                      DISPLAY "ARQUIVO JA EXISTE " LINE 01 COLUMN 01
                  WHEN "35"
                      OPEN OUTPUT ARQCRM
                      DISPLAY "ARQUIVO FOI CRIADO julia" LINE 01 COLUMN 01
                  WHEN OTHER
                      DISPLAY "ERRO"               LINE 01 COLUMN 01
                      DISPLAY ARQCRM-FS            LINE 02 COLUMN 01
                      GOBACK
              END-EVALUATE.

           ACCEPT WRK-SEGURATELA.

       FINALIZAR  SECTION.
           CLOSE ARQCRM.
              

