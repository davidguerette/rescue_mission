class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(title: :asc)
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @answers = @question.answers.order(created_at: :asc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(user_params)
    if @question.save
      flash[:notice] = "Success!"
      redirect_to questions_path
    else
      flash[:notice] = "Sorry, please try again"
      render :new
    end
  end


  private

  def user_params
    params.require(:question).permit(:title, :description)
  end

end
