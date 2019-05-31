# == Schema Information
#
# Table name: responses
#
#  id        :bigint           not null, primary key
#  user_id   :integer
#  answer_id :integer
#

class Response < ApplicationRecord

belongs_to :respondent,
primary_key: :id,
foreign_key: :user_id,
class_name: :User

belongs_to :answer_choice,
primary_key: :id,
foreign_key: :answer_id,
class_name: :Answer

has_one :question,
through: :answer_choice,
source: :question

def sibling_responses
  Response
    .select( :user_id, :answer_id)
    .joins(:question)
    #.where()
    #.where( 'responses.answer_id != self.id')
end



end

