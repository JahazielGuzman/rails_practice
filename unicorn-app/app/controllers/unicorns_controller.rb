class UnicornsController < ApplicationController

	def index
		@unicorns = Unicorn.all
	end

	def show
		@unicorn = Unicorn.find(params[:id])
	end

	def new
		@unicorn = Unicorn.new
	end

	def create
		@unicorn = Unicorn.create(unicorn_params)
		redirect_to @unicorn
	end

	def edit
		@unicorn = Unicorn.find(params[:id])
	end

	def update
		@unicorn = Unicorn.find(params[:id])
		@unicorn.update(unicorn_params)
		redirect_to @unicorn
	end

	def destroy
		@unicorn = Unicorn.find(params[:id])
		@unicorn.destroy
		redirect_to unicorns_path
	end

	private

	def unicorn_params
		params.require(:unicorn).permit(:name, :shoe, :horn)
	end

end