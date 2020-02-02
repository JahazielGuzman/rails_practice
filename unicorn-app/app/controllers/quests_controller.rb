class QuestsController < ApplicationController

	before_action :get_quest, only: [:show, :edit, :destroy]

	def index
		@quests = Quest.all
	end

	def new
		@quest = Quest.new
	end

	def create
		@quest = Quest.create(quest_params)
		redirect_to @quest
	end

	private

	def get_quest
		@quest = Quest.find(params[:id])
	end

	def quest_params
		params.require(:quest).permit(:name, :unicorn_id, :leprechaun_id)
	end


end
