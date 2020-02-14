class UnicornsController < ApplicationController

    def index
        @unicorns = Unicorn.all
        render json: @unicorns, status: :ok
    end

    def create
        @unicorn = Unicorn.new(unicorn_params)
        if @unicorn.valid?
            @unicorn.save
            render json: @unicorn, status: :ok
        else
            render json: @unicorn.errors.full_messages
        end
    end

    def show
        @unicorn = Unicorn.find(params[:id])
        render json: @unicorn, status: 200
    end

    private

    def unicorn_params
        params.require(:unicorn).permit(:name, :shoe, :horn)
    end
end