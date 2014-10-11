class QuestionsController < ApplicationController

  def index
    @question = Question.new
    @questions = Question.all
  end

  def create
    Question.create(question_params)
    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = Answer.all.order('vote_count DESC')
  end

  private

    def question_params
      params.require(:question).permit(:title, :body)
    end
end