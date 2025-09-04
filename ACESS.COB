       IDENTIFICATION DIVISION.
         PROGRAM-ID. ACESS.


         DATA DIVISION.
         WORKING-STORAGE SECTION.
         01 NIVEL        PIC X.
         01 SETOR        PIC X.



         PROCEDURE DIVISION.
                DISPLAY "Digite o nivel do agente (A, B, C): "
                ACCEPT NIVEL
                DISPLAY "Digite o setor autorizado (x, y, z): "
                ACCEPT SETOR


                EVALUATE NIVEL ALSO SETOR
                    WHEN 'A' ALSO 'X'
                        DISPLAY "Acesso completo"
                    WHEN 'B' ALSO 'Y'
                        DISPLAY "Acesso intermediario"
                    WHEN 'C' ALSO 'Z'
                        DISPLAY "Acesso restrito"
                    WHEN OTHER
                        DISPLAY "Acesso negado".

                STOP RUN.
