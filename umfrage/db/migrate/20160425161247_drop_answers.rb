class DropAnswers < ActiveRecord::Migration
  def change
  	drop_table :answers
  	drop_table :answer_image_textboxes
  	drop_table :answer_images
  	drop_table :answer_textfields
  end
end
