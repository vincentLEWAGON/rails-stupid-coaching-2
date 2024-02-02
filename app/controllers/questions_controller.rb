class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # Je crée une variable @question qui prend la valeur de params[:question]
    @question = params[:question]
    # Je crée une condition qui dit que si @question est
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @answer = ""
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
