#STACK TOO DEEP

* Jay
* Herine
* Becca
* Devon

#MVP

###User Stories

- A user can sign up 
- A user can sign in 
- A user can sign out

- A user can post a question
- A user can delete a question
- A user can edit their question

- A user can answer a question
- A user can up vote and down vote on question or answer

##Schema:
####- User_table:
+ user name,
+ email,
+ password,
+ password hash, or salt

####- User_questions
+ user_id,
+ question_id

####- Question_table
+ title,
+ body,
+ vote_count(++)

####- Questions_Answers_table
+ question_id,
+ answer_id

####- Answer_table
+ body,
+ vote_count









