class AnswersController < ApplicationController
	def create
		Answer.create(answer_params)
		redirect_to :back
	end

	def vote
		@answer = Answer.find(params[:answer_id])
		@vote_value = params[:vote_value].to_i
		@answer.update(vote_count: @answer.vote_count + @vote_value)
		redirect_to :back
	end

	private

    def answer_params
      params.require(:answer).permit(:body, :user_id, :question_id)
    end
end