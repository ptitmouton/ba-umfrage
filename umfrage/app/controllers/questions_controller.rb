class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end
	
	def new 
		@question = Question.new
	end

	def edit
		@question = Question.find(params[:id])
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to Question.find(@question)
		else 
			render 'new'
		end
	end

	def update
		@question = Question.find(params[:id])

		if @question.update(question_params)
			redirect_to @question
		else 
			render 'edit'
		end
	end
	
	def show
		@question = Question.find(params[:id])
		@answer_selection = @question.s_answers
		@answer_image = @question.i_answers
		@answer_textfield = @question.tf_answers
	end

	def destroy 
		@question = Question.find(params[:id])
		@question.destroy

		redirect_to questions_path
	end

	def question_params
		params.require(:question).permit(:title, :text, :kind, :position)
	end

end
