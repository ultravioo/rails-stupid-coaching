class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if @ask.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @ask == 'I am going to work right now!'
      @answer = 'Great'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
