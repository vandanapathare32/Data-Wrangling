# Data-Wrangling
Data cleaning
This is a dataset and from the real time project.It is a part of a whole data analytic project.
Goal:
We have a raw file which has a row that has names of teachers and then we have column names which
specify the question and a unique code of that question.
each column is populated with the answers given by each teacher for that given question.
Then we have a refrence file which has that unique code for the question,all the types of answers
expected for each question and CORRESPONDING MARKS.
Based on this refrence file which is an xlsx and has four sheets for 4 types of question sets, 
we have to replace the answers in raw file with their respective marks.

the code has been given to deal with sheet1(EVA) of the refrnce file,similar steps applies to all other sheets(CEA,MOS,GEK).

implementation.
first and for most ,make the data from both the files relevant to the problem statement.delete the unnecessary row and columns.
the code till line number 19 focuses on the same.
later after that,
we have used for loops and indexing in order to achieve our goal.
(note that we can always use different ways to reach the solution. the use of sql library is one of the methods.)

for executing for loops,we have focused on columns : UID,ANSWERS,MARKS from refrence file and all the columns having 
EVA questions from raw file.
We first used grep function to match the string of UID and Column name ,which resulted in column number as output.
Later we matched the ANSWERS with the answers given in raw file by using the indexes.Once the match is found we would replace the answers 
given in raw file with the corresponding marks in refrence file.

AND TADA!!!
