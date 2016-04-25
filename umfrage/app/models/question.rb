class Question < ActiveRecord::Base
	has_many :s_answers
	has_many :i_answers
	has_many :tf_answers
	# validates :title, presence: true, length: {minimum: 5}

	def answers
		return s_answers + i_answers + tf_answers
	end
end
