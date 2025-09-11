       IDENTIFICATION DIVISION.
       PROGRAM-ID. CRM.

       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC 9(01).

       SCREEN SECTION.
       01 TELA.
           05 BLANK SCREEN.

       PROCEDURE DIVISION.

              DISPLAY TELA
              DISPLAY "--- SISTEMA CRM  "      LINE 01 COLUMN 01
              DISPLAY "1-CADASTRO       "      LINE 06 COLUMN 01
              DISPLAY "2-VALIDACAO      "      LINE 07 COLUMN 01
              DISPLAY "3-ALTERACAO      "      LINE 08 COLUMN 01
              DISPLAY "4-EXCLUSAO       "      LINE 09 COLUMN 01
              DISPLAY "5-INATIVAR/ATIVAR"      LINE 10 COLUMN 01
              DISPLAY "6-REL ATIVOS     "      LINE 11 COLUMN 01
              DISPLAY "7-REL INATIVOS   "      LINE 12 COLUMN 01
              DISPLAY "8-SETUP SISTEMA  "      LINE 13 COLUMN 01
              DISPLAY "9-ENCERRAR       "      LINE 14 COLUMN 01
              DISPLAY "QUAL OPCAO   "          LINE 20 COLUMN 01.
                ACCEPT WRK-OPCAO               LINE 20 COLUMN 15.

              EVALUATE WRK-OPCAO
                    WHEN 1
                        CALL 'CADASTRO'
                    WHEN 2
                        CALL 'CONSULTA'
                    WHEN 3
                        CALL 'ALTERA'
                    WHEN 4
                        CALL 'EXCLUI'
                    WHEN 5
                        CALL 'STATUS'
                    WHEN 6
                        CALL 'RELAT'
                    WHEN 7
                        CALL 'RELATI'
                    WHEN 8
                        CALL 'MANUT'
                   END-EVALUATE

              STOP RUN.
