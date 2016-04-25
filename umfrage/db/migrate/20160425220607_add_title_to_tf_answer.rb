class AddTitleToTfAnswer < ActiveRecord::Migration
  def change
    add_column :tf_answers, :title, :string
  end
end
