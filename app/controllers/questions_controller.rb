class QuestionsController < ApplicationController
  def ask
  end

  def receive
    @question = params[:answer]
    if params[:answer] == "I am going to work"
      @reply = "Great!"
    elsif params[:answer][-1,1] == "?"
      @reply = "Silly question, get dressed and go to work!"
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
