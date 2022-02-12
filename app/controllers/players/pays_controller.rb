class Players::PaysController < ApplicationController
  def create
    @player = Player.find(params[:player_id])
    @player.touch(:pay_at)

    redirect_to match_url(@player.match_id), notice: 'El Jugador ha hecho su pago'
  end
end
