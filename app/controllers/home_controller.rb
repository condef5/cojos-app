class HomeController < ApplicationController
  def index
    @current_match = Match.last
    @players = @current_match.players if @current_match
    @new_player = Player.new
  end
end
