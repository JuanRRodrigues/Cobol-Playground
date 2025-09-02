       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUM.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
         SPECIAL-NAMES.
              DECIMAL-POINT IS COMMA.   

           DATA DIVISION.
           WORKING-STORAGE SECTION.

           01 Variavel.
               05 NOME             pic X(20).
               05 DEPT             pic X(3).
               05 GROSS-SALARY     pic 9(5)v99.
               05 TAX              pic 9(5)v99.

           PROCEDURE DIVISION.

            MOVE "LUCAS" TO NOME.
            MOVE "RH1" TO DEPT  .
            MOVE 3200,50 TO GROSS-SALARY.
            MOVE 480,08 TO TAX.


            display "Employer: " NOME.
            display "Department: " DEPT.
            display "Gross Salary: " GROSS-SALARY.
            display "Tax: " TAX.





            STOP RUN.
