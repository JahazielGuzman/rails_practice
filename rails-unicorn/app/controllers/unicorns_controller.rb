class UnicornsController < ApplicationController

    def index
        @unicorns = Unicorn.all
        render json: @unicorns, status: :ok
    end

    def create
        @unicorn = Unicorn.new(unicorn_params)
        if @unicorn.valid?
            @unicorn.save
            render json: @unicorn
        else
            render json: @unicorn.errors.full_messages
        end
    end

    private

    def unicorn_params
        params.require(:unicorn).permit(:name, :shoe, :horn)
    end
end