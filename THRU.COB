       IDENTIFICATION DIVISION.
         PROGRAM-ID. THRU.

         DATA DIVISION.
         WORKING-STORAGE SECTION.
         01 CARACTERE    PIC X.

         PROCEDURE DIVISION.
                DISPLAY "Digite um caractere: "
                ACCEPT CARACTERE

                EVALUATE CARACTERE
                    WHEN "A" THRU "Z"
                        DISPLAY "Maiusculo"
                    WHEN "a" THRU "z"
                        DISPLAY "Minusculo"
                    WHEN "0" THRU "9"
                        DISPLAY "Digito"
                    WHEN OTHER
                        DISPLAY "Outro"
                  END-EVALUATE

                STOP RUN.
