class AddQuestionToSAnswer < ActiveRecord::Migration
  def change
    add_reference :s_answers, :question, index: true, foreign_key: true
  end
end
