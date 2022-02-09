class HomeController < ApplicationController
  def index
    @current_match = Match.first
    @players = Player.all
    @new_player = Player.new
  end
end
