class IAnswersController < ApplicationController
	def create 
		@question = Question.find(params[:question_id])
		@ianswer = @question.ianswers.create(answer_params)
		redirect_to question_path(@question)
	end

	def answer_params
		params.require(:answer).permit(:title)
	end
end