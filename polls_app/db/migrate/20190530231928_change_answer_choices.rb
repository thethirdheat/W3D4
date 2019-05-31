class ChangeAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    rename_table :answer_choices, :answers
  end
end
