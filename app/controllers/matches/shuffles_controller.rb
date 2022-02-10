class Matches::ShufflesController < ApplicationController
  def index
    @match = Match.find(params[:match_id])
    @max_players = params[:max_players]&.to_i || 6
    @teams = @match.players.shuffle.each_slice(@max_players).to_a
  end
end
