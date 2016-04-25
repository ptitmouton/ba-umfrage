class AddColumnTypeOrdnerToQuestion < ActiveRecord::Migration
  def change
  	add_column :questions, :position, :integer
  	add_column :questions, :kind, :string
  end
end
