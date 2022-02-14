class HomeController < ApplicationController
  def index
    @current_match = Match.where('time > ?', Time.now).first
    @players = @current_match.players.order(created_at: :desc) if @current_match
    @new_player = Player.new
  end
end
