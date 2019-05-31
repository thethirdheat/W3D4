# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  answer      :text
#  question_id :integer
#

class Answer < ApplicationRecord
  validates :answer, presence: true

belongs_to :question,
primary_key: :id,
foreign_key: :question_id,
class_name: :Question
# optional: true

has_many :responses,
primary_key: :id,
foreign_key: :answer_id,
class_name: :Response

end

