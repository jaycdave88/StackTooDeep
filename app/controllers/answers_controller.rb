class AnswersController < ApplicationController
	def create
		Answer.create(answer_params)
		redirect_to :back
	end

	private

    def answer_params
      params.require(:answer).permit(:body, :user_id, :question_id)
    end
end