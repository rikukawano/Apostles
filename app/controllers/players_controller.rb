class PlayersController < ApplicationController
	def index
		@players = Player.all
	end

	def new 
		@player = Player.new
	end

	def create
		@player = Player.create(player_params)
		redirect_to root_path
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])
		return redirect_to root_path if @player.update(player_params)
		redirect_to edit_player_path(params[:id])
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to players_path
	end

	def player_params
		params.require(:player).permit(:name, :year, :number)
	end

end