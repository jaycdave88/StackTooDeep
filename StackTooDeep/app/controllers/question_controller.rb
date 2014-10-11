class QuestionController < ApplicationController
	def show
		@answer = Answer.new
		@answers = Answer.all.order('vote_count DESC')
	end
end