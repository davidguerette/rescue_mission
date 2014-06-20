class AnswersController < ApplicationController

  def create

    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    # @answer.question = @question

    if @answer.save
      flash[:notice] = "Thanks for the answer!"
      redirect_to question_path(@question)
    else
      flash[:notice] = "Sorry, that didn't work. Please try again."
      @answers = @question.answers.all
      render :'questions/show'
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
