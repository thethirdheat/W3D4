class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :respondent_id
      t.integer :answer_choice_id
    end
    add_index :responses, :respondent_id
    add_index :responses,  :answer_choice_id
  end
end
