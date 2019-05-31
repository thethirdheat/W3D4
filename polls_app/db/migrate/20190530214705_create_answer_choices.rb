class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.text :answer
      t.integer :question_id
    end
    add_index :answer_choices, :answer
    add_index :answer_choices, :question_id
  end
end
