class PagesController < ApplicationController
  def index
  end

  def ask
    @title = "Stupid coaching"
  end

  def answer
    @title = "Stupid coaching"
    @ask = params[:input]

    @answer = if @ask.include?('?')
      "Silly question, get dressed and go to work!"
    elsif @ask == "I am going to work"
      "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
