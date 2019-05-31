# == Schema Information
#
# Table name: questions
#
#  id       :bigint           not null, primary key
#  question :text
#  poll_id  :integer
#

class Question < ApplicationRecord
  validates :question, presence: true

belongs_to :poll,
primary_key: :id,
foreign_key: :poll_id,
class_name: :Poll
#optional: true

has_many :answers,
primary_key: :id,
foreign_key: :question_id,
class_name: :Answer

has_many :responses,
through: :answers,
source: :responses

end

