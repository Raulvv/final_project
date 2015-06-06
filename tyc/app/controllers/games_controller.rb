class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	private
	def game_params
		params.require(:game).permit(:game_name, :summoner_id, :game_img)
	end
end
