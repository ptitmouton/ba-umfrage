class CreateIAnswers < ActiveRecord::Migration
  def change
    create_table :i_answers do |t|
      t.string :image_front
      t.string :image_side
      t.references :question, index: true, foreign_key: true
      t.text :value

      t.timestamps null: false
    end
  end
end
