class CreateQuestionChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :question_choices do |t|
      t.references :question, foreign_key: true
      t.references :choice, foreign_key: true
      t.timestamps
    end
  end
end
