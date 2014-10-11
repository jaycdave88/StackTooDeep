class AnswersController < ApplicationController
	def create
		Answer.create(body: params[:answer][:body])
		redirect_to :back
	end
end