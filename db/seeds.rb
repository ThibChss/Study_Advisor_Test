# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'DESTROYING DB'
Quizz.destroy_all
Question.destroy_all
Answer.destroy_all

puts 'First Quizz in creation'
quizz = Quizz.create!({ title: 'Ruby Programming', description: 'The best programming quizz to discover Ruby smoothly.', difficulty: 'medium' })
# quizz_1.save!
puts 'First Question in creation'
question_1 = Question.create!(title: 'What is a class?', good_answer: 1, quizz_id: quizz.id)
p question_1
puts 'First Question in creation'
puts '1 answer'
answer_1_1 = Answer.create!(title: 'Generates objects', status: true, question_id: question_1.id )
puts '2 answer'
answer_1_2 = Answer.create!(title: 'A place', status: false, question_id: question_1.id)
puts '3 answer'
answer_1_3 = Answer.create!(title: 'A glass with a c', status: false, question_id: question_1.id)
puts '4 answer'
answer_1_4 = Answer.create!(title: 'Like a module', status: false, question_id: question_1.id)

puts 'Second Question in creation'
question_2 = Question.create!(title: 'What is a module?', good_answer: 4, quizz_id: quizz.id)

puts '1 answer'
answer_2_1 = Answer.create!(title: 'Like a class', status: false, question_id: question_2.id )
puts '2 answer'
answer_2_2 = Answer.create!(title: 'In the millennium falcon', status: false, question_id: question_2.id)
puts '3 answer'
answer_2_3 = Answer.create!(title: 'Chez Ruby doc !', status: false, question_id: question_2.id)
puts '4 answer'
answer_2_4 = Answer.create!(title: 'Store logic', status: true, question_id: question_2.id)

puts 'Third Question in creation'
question_3 = Question.create!(title: 'What is Ruby?', good_answer: 2, quizz_id: quizz.id)

puts '1 answer'
answer_3_1 = Answer.create!(title: 'A rock', status: false, question_id: question_3.id )
puts '2 answer'
answer_3_2 = Answer.create!(title: 'A programming language', status: true, question_id: question_3.id)
puts '3 answer'
answer_3_3 = Answer.create!(title: 'My wedding ring', status: false, question_id: question_3.id)
puts '4 answer'
answer_3_4 = Answer.create!(title: 'A Pokemon video game', status: false, question_id: question_3.id)

puts '1 QUIZZ is GENERATED'

puts '--------------------------------'

puts 'Second Quizz in creation'
quizz_2 = Quizz.create!({ title: 'Javascript Quizz', description: 'The best quizz about Javascript and the world of internet.', difficulty: 'easy' })
# quizz_1.save!
puts 'First Question in creation'
question_1_2 = Question.create!(title: 'What is a constructor?', good_answer: 1, quizz_id: quizz_2.id)

puts 'First Question in creation'
puts '1 answer'
answer_1_1_2 = Answer.create!(title: 'A Llego brick', status: false, question_id: question_1_2.id )
puts '2 answer'
answer_1_2_2 = Answer.create!(title: 'The cousin of a Boa', status: false, question_id: question_1_2.id)
puts '3 answer'
answer_1_3_2 = Answer.create!(title: 'JS initializer', status: true, question_id: question_1_2.id)
puts '4 answer'
answer_1_4_2 = Answer.create!(title: 'Bob the constructor', status: false, question_id: question_1_2.id)

puts 'Second Question in creation'
question_2_2 = Question.create!(title: 'Why is the advantage of an arrow function ?', good_answer: 4, quizz_id: quizz_2.id)

puts '1 answer'
answer_2_1_2 = Answer.create!(title: 'Shooting it easily', status: false, question_id: question_2_2.id )
puts '2 answer'
answer_2_2_2 = Answer.create!(title: 'The utilisation of this', status: true, question_id: question_2_2.id)
puts '3 answer'
answer_2_3_2 = Answer.create!(title: 'Knowing the direction', status: false, question_id: question_2_2.id)
puts '4 answer'
answer_2_4_2 = Answer.create!(title: 'Then answer D', status: false, question_id: question_2_2.id)

puts 'Third Question in creation'
question_3_2 = Question.create!(title: 'Is Javascript oriented object ?', good_answer: 2, quizz_id: quizz_2.id)

puts '1 answer'
answer_3_1_2 = Answer.create!(title: 'I would say yes', status: true, question_id: question_3_2.id )
puts '2 answer'
answer_3_2_2 = Answer.create!(title: 'Never', status: false, question_id: question_3_2.id)
puts '3 answer'
answer_3_3_2 = Answer.create!(title: 'Is it a language?', status: false, question_id: question_3_2.id)
puts '4 answer'
answer_3_4_2 = Answer.create!(title: 'Javascript is life', status: false, question_id: question_3_2.id)

puts '2 QUIZZ is GENERATED'

puts '--------------------------------'

puts 'Third Quizz in creation'
quizz_3 = Quizz.create!({ title: 'React Quizz', description: 'The best quizz on React, this trendy Javascript diamond.', difficulty: 'hard' })
puts 'First Question in creation'
question_1_3 = Question.create!(title: 'What is a React?', good_answer: 1, quizz_id: quizz_3.id)
puts 'First Question in creation'
puts '1 answer'
answer_1_1_3 = Answer.create!(title: 'A Javascript framework', status: false, question_id: question_1_3.id )
puts '2 answer'
answer_1_2_3 = Answer.create!(title: 'A Javascript library', status: true, question_id: question_1_3.id)
puts '3 answer'
answer_1_3_3 = Answer.create!(title: 'The begining of a reactor', status: false, question_id: question_1_3.id)
puts '4 answer'
answer_1_4_3 = Answer.create!(title: 'A reflex of the human being', status: false, question_id: question_1_3.id)

puts 'Second Question in creation'
question_2_3 = Question.create!(title: 'What is the purpose of React?', good_answer: 4, quizz_id: quizz_3.id)

puts '1 answer'
answer_2_1_3 = Answer.create!(title: 'Decomposing code in components', status: true, question_id: question_2_3.id )
puts '2 answer'
answer_2_2_3 = Answer.create!(title: 'Learning a new Javascript trend', status: false, question_id: question_2_3.id)
puts '3 answer'
answer_2_3_3 = Answer.create!(title: 'Using faster Javascript', status: false, question_id: question_2_3.id)
puts '4 answer'
answer_2_4_3 = Answer.create!(title: 'Not using the virtual DOM', status: false, question_id: question_2_3.id)

puts 'Third Question in creation'
question_3_3 = Question.create!(title: 'Who created React?', good_answer: 2, quizz_id: quizz_3.id)

puts '1 answer'
answer_3_1_3 = Answer.create!(title: 'Yukihiro Matsumoto', status: false, question_id: question_3_3.id )
puts '2 answer'
answer_3_2_3 = Answer.create!(title: 'Jordan Walke', status: true, question_id: question_3_3.id)
puts '3 answer'
answer_3_3_3 = Answer.create!(title: 'Evan You', status: false, question_id: question_3_3.id)
puts '4 answer'
answer_3_4_3 = Answer.create!(title: 'Linus Torvalds', status: false, question_id: question_3_3.id)

puts '3 QUIZZ is GENERATED'

puts '--------------------------------'

puts 'Fourth Quizz in creation'
quizz_4 = Quizz.create!({ title: 'Rails Quizz', description: 'An exclusive quizz for junior software developers looking to learn Rails.', difficulty: 'medium' })
puts 'First Question in creation'
question_1_4 = Question.create!(title: 'What is a helper?', good_answer: 1, quizz_id: quizz_4.id)
puts 'First Question in creation'
puts '1 answer'
answer_1_1_4 = Answer.create!(title: 'Something that helps', status: false, question_id: question_1_4.id )
puts '2 answer'
answer_1_2_4 = Answer.create!(title: 'A cleric', status: false, question_id: question_1_4.id)
puts '3 answer'
answer_1_3_4 = Answer.create!(title: 'A class used to making developer life easier', status: false, question_id: question_1_4.id)
puts '4 answer'
answer_1_4_4 = Answer.create!(title: 'A module to refacto front logic', status: true, question_id: question_1_4.id)

puts 'Second Question in creation'
question_2_4 = Question.create!(title: 'What is the gem used for jobs?', good_answer: 4, quizz_id: quizz_4.id)

puts '1 answer'
answer_2_1_4 = Answer.create!(title: 'Sideqick', status: true, question_id: question_2_4.id )
puts '2 answer'
answer_2_2_4 = Answer.create!(title: 'Solar', status: false, question_id: question_2_4.id)
puts '3 answer'
answer_2_3_4 = Answer.create!(title: 'Redis', status: false, question_id: question_2_4.id)
puts '4 answer'
answer_2_4_4 = Answer.create!(title: 'Pundit', status: false, question_id: question_2_4.id)

puts 'Third Question in creation'
question_3_4 = Question.create!(title: 'What is a Service?', good_answer: 2, quizz_id: quizz_4.id)

puts '1 answer'
answer_3_1_4 = Answer.create!(title: 'A way to refacto logic from model or controller', status: false, question_id: question_3_4.id )
puts '2 answer'
answer_3_2_4 = Answer.create!(title: 'A simple act made with kindness', status: true, question_id: question_3_4.id)
puts '3 answer'
answer_3_3_4 = Answer.create!(title: 'An external plugin', status: false, question_id: question_3_4.id)
puts '4 answer'
answer_3_4_4 = Answer.create!(title: 'Some precious data', status: false, question_id: question_3_4.id)

puts '4 QUIZZ is GENERATED'
