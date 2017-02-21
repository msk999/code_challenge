class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :distractor1
      t.string :distractor2
      t.string :distractor3

      t.timestamps
    end
  end
end
