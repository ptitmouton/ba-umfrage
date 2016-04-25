class AddTitleToIAnswer < ActiveRecord::Migration
  def change
    add_column :i_answers, :title, :string
  end
end
