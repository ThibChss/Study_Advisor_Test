## Setup
For the first launch please run the following command :

```
bundle install
```
```
yarn install
```

Create the DB

```
rails db:create
```

Run the migrations

```
rails db:migrate
```
Run the seed

```
rails db:seed
```
You can use this user to connect

```
email: thibault@gmail.com ; password: azerty
```

## DB
- Here is the DB I went with for this project

![](app/assets/images/quizz_db.png)

## Guidelines
- Fork this repository
- You can add any framework, library or plugin you'd like
- In short: Do whatever you want to get the job done
- Make sure the application works out-of-the box once you're done
- Push changes to your git fork
- Add a short description on how to run your program in the Setup section above. (A person ariving new to the project should be able to follow your instructions and run it)
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done
- Assignment :
  - You are asked to build a simple Quizz App

## User
 [x] A user can log in with a valid username and password through a login screen

 [x] A user can see a collection of quizzes

 [x] A user can start a quizz

 [x] A user can answer 3 questions on a quizz

 [x] A user can see the scores of his quizzes


## Quizz
 [x] A quizz has a Title

 [x] A quizz has a maximum of 3 questions

 [x] A quizz is considered passed if +60% of questions are answered correctly

## Question
 [x] A question has a maximum of 4 answers

 [x] A question has only 1 possible correct answer


## Bonus
- Some nice to haves, when there is time to spare.

 [x] A quizz can have a dificulty level

 [x] Add admin role

 [ ] A user with admin role can create and edit quizzes

 [ ] A user can come back to a started quizz at the question he stopped

 [ ] Add or improve a feature of your own choice
