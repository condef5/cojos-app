class PlayersController < ApplicationController
  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to root_path, notice: 'Player was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def player_params
    params.require(:player).permit(:full_name, :match_id)
  end
end
