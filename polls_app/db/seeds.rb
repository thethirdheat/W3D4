# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

User.destroy_all
Question.destroy_all
Poll.destroy_all
Answer.destroy_all

User1 = User.create!(username: 'Emarson')
User2 = User.create!(username: 'T')
User3 = User.create!(username: 'HydroBro')
User4 = User.create!(username: 'mouseyboi')

Poll1 = Poll.create!(title:'What kind of liquid', user_id: User1.id) 
Poll2 = Poll.create!(title: 'What extensions', user_id: User2.id)
Poll3 = Poll.create!(title: 'Favorite game', user_id: User1.id) 

Question1 = Question.create!(question: 'Water or Soda?', poll_id: Poll1.id)
Question2 = Question.create!(question: 'VIM or Pry?', poll_id: Poll2.id)
Question3 = Question.create!(question: 'What is your favorite game', poll_id: Poll3.id)

Answers1 = Answer.create!(answer: 'Soda', question_id: Question1.id)
Answers2 = Answer.create!(answer: 'Water', question_id: Question1.id)
Answers3 = Answer.create!(answer: 'Neither, you suck', question_id: Question1.id)
Answers4 = Answer.create!(answer: 'VIM', question_id: Question2.id)
Answers5 = Answer.create!(answer: 'Pry', question_id: Question2.id)
Answers6 = Answer.create!(answer: 'Hearthstone', question_id: Question3.id)
Answers7 = Answer.create!(answer: 'WoW', question_id: Question3.id)

Response1 = Response.create!(user_id: User1.id, answer_id: Answers1.id)
Response2 = Response.create!(user_id: User2.id, answer_id: Answers1.id)

Response9 = Response.create!(user_id: User3.id, answer_id: Answers1.id)
Response10 = Response.create!(user_id: User4.id, answer_id: Answers1.id)

Response3 = Response.create!(user_id: User3.id, answer_id: Answers2.id)
Response4 = Response.create!(user_id: User4.id, answer_id: Answers3.id)
Response5 = Response.create!(user_id: User1.id, answer_id: Answers4.id)
Response6 = Response.create!(user_id: User2.id, answer_id: Answers4.id)
Response7 = Response.create!(user_id: User1.id, answer_id: Answers5.id)
Response8 = Response.create!(user_id: User2.id, answer_id: Answers5.id)


end

