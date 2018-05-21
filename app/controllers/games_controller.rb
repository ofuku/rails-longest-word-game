class GamesController < ApplicationController

  def new
    @LETTERS = ('A'..'Z').to_a.sample(10)
  end

  def score
    # raise
    #can't be built out of the original grid
    @letters = params[:word].split(//)
    @letters.each do |letter|
      binding.pry
      params[:random_letters].delete(letter) if params[:random_letters].include?(letter)
      return params[:random_letters]
    end
    @result = params[:random_letters]

    #valid according to the grid, but is not a valid English word

    #valid according to the grid and is an English word

  end
end
