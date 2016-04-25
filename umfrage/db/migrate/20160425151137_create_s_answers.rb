class CreateSAnswers < ActiveRecord::Migration
  def change
    create_table :s_answers do |t|
      t.string :title
      t.integer :position

      t.timestamps null: false
    end
  end
end
