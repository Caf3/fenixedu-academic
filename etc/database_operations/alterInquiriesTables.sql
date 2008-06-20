alter table INQUIRIES_REGISTRY add column STATE varchar(250);

alter table INQUIRIES_STUDENT_EXECUTION_PERIOD add column WEEKLY_HOURS_SPENT_IN_CLASSES_SEASON int;

alter table INQUIRIES_REGISTRY add column WEEKLY_HOURS_SPENT_PERCENTAGE int;
alter table INQUIRIES_REGISTRY add column STUDY_DAYS_SPENT_IN_EXAMS_SEASON int;

alter table INQUIRIES_COURSE add column WEEKLY_HOURS_SPENT_PERCENTAGE int;
alter table INQUIRIES_COURSE add column STUDY_DAYS_SPENT_IN_EXAMS_SEASON int;

alter table INQUIRIES_COURSE add column ACTIVITY_PARTICIPATION int(11);
alter table INQUIRIES_COURSE add column CLASSIFICATION_IN_THIS_C_U text;
alter table INQUIRIES_COURSE add column COOPERATION_AND_COMUNICATION_CAPACITY int(11);
alter table INQUIRIES_COURSE add column CRITIC_SENSE_AND_REFLEXIVE_SPIRIT int(11);
alter table INQUIRIES_COURSE add column FAIR_EVALUATION_METHODS int(11);
alter table INQUIRIES_COURSE add column GLOBAL_CLASSIFICATION_OF_C_U int(11);
alter table INQUIRIES_COURSE add column GOOD_GUIDANCE_MATERIAL int(11);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_COMPLEX_PROJECTS tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_CURRICULAR_PROGRAM_EXTENSION tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_EXTENSE_PROJECTS tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_LACK_OF_ATTENDANCE_OF_LESSONS tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_LACK_OF_PREVIOUS_PREPARATION tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_MANY_PROJECTS tinyint(1);
alter table INQUIRIES_COURSE add column HIGH_WORK_LOAD_REASON_OTHER_REASONS text;
alter table INQUIRIES_COURSE add column KNOWLEDGE_AND_COMPREHENSION_OF_C_U int(11);
alter table INQUIRIES_COURSE add column KNOWLEDGE_APPLICATION_OF_C_U int(11);
alter table INQUIRIES_COURSE add column PREDICTED_PROGRAM_TEACHED int(11);
alter table INQUIRIES_COURSE add column PREVIOUS_KNOWLEDGE_ENOUGH_TO_C_U_ATTENDANCE int(11);
alter table INQUIRIES_COURSE add column RECOMENDEND_BIBLIOGRAPHY_IMPORTANCE int(11);
alter table INQUIRIES_COURSE add column WELL_STRUCTURED_OF_C_U int(11);

alter table INQUIRIES_TEACHER add column CLASSES_FREQUENCY int(11);
alter table INQUIRIES_TEACHER add column LOW_CLASSES_FREQUENCY_REASON_CONTENTS tinyint(1);
alter table INQUIRIES_TEACHER add column LOW_CLASSES_FREQUENCY_REASON_FLUNKEE_STUDENT tinyint(1);
alter table INQUIRIES_TEACHER add column LOW_CLASSES_FREQUENCY_REASON_OTHER tinyint(1);
alter table INQUIRIES_TEACHER add column LOW_CLASSES_FREQUENCY_REASON_SCHEDULE tinyint(1);
alter table INQUIRIES_TEACHER add column LOW_CLASSES_FREQUENCY_REASON_TEACHER tinyint(1);
alter table INQUIRIES_TEACHER add column SUITED_CLASSES_RYTHM int(11);
alter table INQUIRIES_TEACHER add column TEACHER_ACOMPLISHED_SCHEDULE_AND_ACTIVITIES int(11);
alter table INQUIRIES_TEACHER add column TEACHER_COMMITED int(11);
alter table INQUIRIES_TEACHER add column TEACHER_EXPOSED_CONTENTS_ATRACTIVELY int(11);
alter table INQUIRIES_TEACHER add column TEACHER_EXPOSED_CONTENTS_CLEARLY int(11);
alter table INQUIRIES_TEACHER add column TEACHER_GLOBAL_CLASSIFICATION int(11);
alter table INQUIRIES_TEACHER add column TEACHER_OPEN_TO_CLEAR_DOUBTS int(11);
alter table INQUIRIES_TEACHER add column TEACHER_SHOWED_SECURITY int(11);
alter table INQUIRIES_TEACHER add column TEACHER_STIMULATED_PARTICIPATION int(11);

alter table INQUIRIES_COURSE modify column STUDENT_CURRICULAR_YEAR int(11) unsigned;
alter table INQUIRIES_COURSE modify column KEY_EXECUTION_DEGREE_COURSE int(11) unsigned;
alter table INQUIRIES_COURSE modify column STUDENT_FIRST_ENROLLMENT smallint(1) unsigned;

