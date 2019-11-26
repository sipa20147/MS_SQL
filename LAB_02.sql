use EDUCATION

select upper(STUDENT_ID) + char(59) + ' ' + upper(SURNAME) + char(59) + ' ' + upper(fname) + char(59) + ' ' + upper(STIPEND) + char(59) +  ' ' + upper(KURS) + char(59) from STUDENT

select (left(fname,1) + char(46) + surname + char(58) + 'местожительства' + char(45) + city + char(59) + 'родился' + char(45) + BIRTHDAY) as svedenia from STUDENT where CITY is not null and BIRTHDAY is not null

select fname + ' ' + surname +  ' родился в' + right(BIRTHDAY,4) + ' году' from STUDENT where KURS in (1,2,4)

select surname, fname, stipend * 100 as stipend from STUDENT
