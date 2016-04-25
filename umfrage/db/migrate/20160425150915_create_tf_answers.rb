class CreateTfAnswers < ActiveRecord::Migration
  def change
    create_table :tf_answers do |t|
      t.references :question, index: true, foreign_key: true
      t.text :value

      t.timestamps null: false
    end
  end
end
