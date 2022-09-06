-- 1. Selezionare tutti gli studenti nati nel 1990 (160)

    SELECT * FROM `students` WHERE YEAR (`date_of_birth`) = '1990'; 

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)

    SELECT * FROM `courses` WHERE `cfu` > 10; 

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni

    SELECT * FROM `students` WHERE YEAR (`date_of_birth`) <= 1991

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

    SELECT * FROM `courses` WHERE `period` = 'I semestre' AND `year` = 1; 
    
-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

    SELECT * FROM `exams` WHERE `hour` >= '14:00:00' AND `date` = '2020-06-20'; 

-- 6. Selezionare tutti i corsi di laurea magistrale (38)

    SELECT * FROM `degrees` WHERE `level` = 'Magistrale'; 

-- 7. Da quanti dipartimenti è composta l'università? (12)

    SELECT COUNT(*) as 'Num_dipartimenti' FROM `departments`

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)

    SELECT COUNT(*) AS `Insegnanti_senza_num` FROM `teachers` WHERE `phone` IS NULL;
----------------------------------------------------------------------------------------------


-- 1. Contare quanti iscritti ci sono stati ogni anno

    SELECT COUNT(*) AS `num_studenti`, YEAR(`enrolment_date`) AS `anno` FROM `students` GROUP BY YEAR(`enrolment_date`)

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

    SELECT COUNT(*) AS `num_insegnanti`, `office_address` FROM `teachers` GROUP BY (`office_address`)

-- 3. Calcolare la media dei voti di ogni appello d'esame



-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento