likes(ellen, reading).
likes(john, computers).
likes(john, badminton).
likes(john, photo).
likes(john, reading).
likes(leonard, badminton).
likes(eric, swimming).
likes(eric, reading).
likes(eric, chess).
likes(paul, swimming).

/*Составить вопрос и найти тех, кто имеет четыре хобби
has_four_hobbies(john).
result: Yes*/
has_four_hobbies(Person) :-
    likes(Person, Hobby1),
    likes(Person, Hobby2),
    Hobby1 \= Hobby2,
    likes(Person, Hobby3),
    Hobby1 \= Hobby3,
    Hobby2 \= Hobby3,
    likes(Person, Hobby4),
    Hobby1 \= Hobby4,
    Hobby2 \= Hobby4,
    Hobby3 \= Hobby4.

/*Составить вопрос и найти тех, у кого одинаковые хобби
similar_hobbies(john, eric).
result: Yes*/
similar_hobbies(X, Y) :- likes(X, Hobby), likes(Y, Hobby), X \= Y.