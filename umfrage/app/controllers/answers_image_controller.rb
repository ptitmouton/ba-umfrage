class AnswersImageController < ApplicationController
	def create 
		@question = Question.find(params[:question_id])
		@answer_image = @question.answers_image.create(answer_params)
		redirect_to question_path(@question)
	end

	def answer_params
		params.require(:answer_image).permit(:image, :value)
	end
end
