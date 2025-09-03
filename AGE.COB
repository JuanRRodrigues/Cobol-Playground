       IDENTIFICATION DIVISION.
         PROGRAM-ID. AGE.

         DATA  DIVISION.
         WORKING-STORAGE SECTION.
         01 IDADE    PIC 99.


         PROCEDURE DIVISION.
            DISPLAY "DIGITE SUA IDADE: "
            ACCEPT IDADE

            EVALUATE TRUE
                WHEN IDADE < 12
                    DISPLAY "CRIANCA"
                WHEN IDADE >= 12 AND IDADE < 17
                    DISPLAY "ADOLESCENTE"
                WHEN IDADE >= 18 AND IDADE < 59
                    DISPLAY "ADULTO"
                WHEN IDADE >= 60
                    DISPLAY "IDOSO"
                END-EVALUATE.

                STOP RUN.
