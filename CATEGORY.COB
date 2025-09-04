       IDENTIFICATION DIVISION.
         PROGRAM-ID. CATEGORY.

         DATA DIVISION.
         WORKING-STORAGE SECTION.
         01 CATEGORY   PIC X.


         PROCEDURE DIVISION.
                DISPLAY "Digite a letra da categoria: "
                ACCEPT CATEGORY

                EVALUATE CATEGORY
                    WHEN "A"
                        DISPLAY "Alimento"
                    WHEN "V"
                        DISPLAY "Vestuario"
                    WHEN "E"
                        DISPLAY "ELletronico"
                    WHEN "M"
                        DISPLAY "Movel"
                    WHEN OTHER
                        DISPLAY "Categoria invalida"
                END-EVALUATE
    
             
    
                STOP RUN.
