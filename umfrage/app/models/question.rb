class Question < ActiveRecord::Base
	has_many :sanswers
	has_many :ianswers
	has_many :tfanswers
	# validates :title, presence: true, length: {minimum: 5}
end
