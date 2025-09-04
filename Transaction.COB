       IDENTIFICATION DIVISION.
         PROGRAM-ID. TRANSACTION.


            DATA DIVISION.
            WORKING-STORAGE SECTION.
            01 ORIGEM    PIC X(1).
            01 VALOR     PIC 9(5).
            01 CONDICAO  PIC X(30).

            PROCEDURE DIVISION.

                DISPLAY "Digite a origem da transacao (I/E):".
                ACCEPT ORIGEM.

                DISPLAY "Digite o valor da transacao: ".
                ACCEPT VALOR.

                EVALUATE ORIGEM ALSO VALOR
                    WHEN 'I' ALSO 0 THRU 1000
                        MOVE "Segura" TO CONDICAO
                    WHEN 'I' ALSO 1001 THRU 99999
                        MOVE "Revisar Valor Elevado" TO CONDICAO
                    WHEN 'E' ALSO 0 THRU 500
                        MOVE "Segura com atencao" TO CONDICAO
                    WHEN 'E' ALSO 5001 THRU 99999
                        MOVE "Alerta de seguranca" TO CONDICAO
                    WHEN OTHER
                        MOVE "Transacao invalida" TO CONDICAO
                END-EVALUATE.


                DISPLAY "Status: " CONDICAO

                STOP RUN.
