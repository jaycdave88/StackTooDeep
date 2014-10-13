class QuestionsController < ApplicationController

  def index
    @user = User.find_by(email: params[:email])
    @question = Question.new
    @questions = Question.all.order('created_at DESC')
  end

  def create
    Question.create(question_params)
    redirect_to root_path
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = Answer.where(question_id: params[:id]).order('vote_count DESC')
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    puts "Testing update params"
    p params
    @question = Question.find(params[:id])
    p @question
    @question.update(title: params[:question][:title], body: params[:question][:body])
    redirect_to root_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :user_id)
  end
end