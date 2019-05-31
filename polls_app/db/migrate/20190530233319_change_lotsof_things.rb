class ChangeLotsofThings < ActiveRecord::Migration[5.2]
  def change
    rename_column :polls, :author_id, :user_id
    rename_column :responses, :respondent_id, :user_id
    rename_column :responses, :answer_choice_id, :answer_id
  end
end
