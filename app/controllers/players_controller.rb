class PlayersController < ApplicationController
  before_action :set_player, only: %i[destroy]

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to root_path, notice: 'Player was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    match_id = @player.match_id
    @player.destroy

    redirect_to match_url(match_id), notice: 'Jugador Eliminado'
  end

  private

  def player_params
    params.require(:player).permit(:full_name, :match_id)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
