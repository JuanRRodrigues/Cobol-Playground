       IDENTIFICATION DIVISION.
         PROGRAM-ID. PROGRAM.

         DATA DIVISION.
         WORKING-STORAGE SECTION.
         01 HORARIO    PIC X(5).
         01 DIA-SEMANA PIC X(12).
         01 GENERO     PIC X(12).

         PROCEDURE DIVISION.
            DISPLAY "Digite a faixa horario (Manha, Tarde, Noite):".
            ACCEPT HORARIO.

            DISPLAY "E dia de semana? (Semana ou Fim de Semana): "
            ACCEPT DIA-SEMANA.

            DISPLAY "Qual seu genero preferido?"
            DISPLAY "(NOTICIAS, ENTRETENIMENTO OU FILMES):"
            ACCEPT GENERO.



            EVALUATE HORARIO ALSO DIA-SEMANA ALSO GENERO
                WHEN "NOITE" ALSO "SEMANA" ALSO "NOTICIAS"
                WHEN "MANHA" ALSO "FIM_DE_SEMANA" ALSO "NOTICIAS"
                    DISPLAY "Recomendacao: Jornal Nacional"
                
                WHEN "TARDE" ALSO "FIM_DE_SEMANA" ALSO "ENTRETENIMENTO"
                WHEN "NOITE" ALSO "SEMANA" ALSO "ENTRETENIMENTO"
                    DISPLAY "Recomendacao: Reality Show"

                WHEN "TARDE" ALSO ANY ALSO "FILMES"
                    DISPLAY "Recomendacao: Sessão da Tarde"

                WHEN "NOITE" ALSO "SEMANA" ALSO "ENTRETENIMENTO"
                    DISPLAY "Recomendacao: Novela"

                WHEN "MANHA" ALSO "FIM_DE_SEMANA" ALSO "ENTRETENIMENTO"
                    DISPLAY "Recomendacao: Desenho Animado"

               WHEN OTHER
                    DISPLAY "Recomendacao: Programa Variada"
              
              END-EVALUATE.
              
               STOP RUN.

