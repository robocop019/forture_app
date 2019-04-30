require "http"

class Api::FortunesController < ApplicationController
  def rand_fortune
    @fortunes = ["Good things lie in your path", 
                 "Dark times are ahead", 
                 "Unclear, try again later", 
                 "7 days..."
                ].sample
    render 'fortune_view.json.jbuilder'
  end

  def lottery
    @numbers = (1..60).to_a
    @lotto_nums = @numbers.sample(6).join(", ")

    # 6.times do
      # @lotto_nums << @numbers.sample(6)
      # @numbers.shuffle!
      # @lotto_nums << @numbers.pop
    # end

    render 'lottery_view.json.jbuilder'
  end

  def visits
    @visits = 0
    render 'visits_view.json.jbuilder'
  end

  def bottles
    @num = 99
    @song_lyrics = []
    @num.times do
      @song_lyrics << "#{@num} bottles of beer on the wall, #{@num} bottles of beer. Take one down, pass it around #{@num - 1} bottles of beer on the wall."
      @num -= 1
    end
    render 'bottles_view.json.jbuilder'
  end
end