class LeprechaunsController < ApplicationController

	before_action :get_leprechaun, only: [:show, :edit, :destroy]

	def index
		@leprechauns = Leprechaun.all
	end

	def show
	end

	def new
		@leprechaun = Leprechaun.new
	end

	def create
		@leprechaun = Leprechaun.create(leprechaun_params)
		redirect_to @leprechaun
	end

	def edit
	end

	def update
		@leprechaun.update(leprechaun_params)
		redirect_to @leprechaun
	end

	def destroy
		@leprechaun.destroy
		redirect_to leprechauns_path
	end

	private

	def get_leprechaun
		@leprechaun = Leprechaun.find(params[:id])
	end

	def leprechaun_params
		params.require(:leprechaun).permit(:name, :shoe, :horn)
	end

end
