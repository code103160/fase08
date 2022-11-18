class Api::V1::GainsController < ApplicationController
    def index
    end

    def show 
    end

    def create 
    end

    def update 
    end

    def destroy 
    end

    private 
        def gain_params 
            params.require(:gain).permit(:description, :value, :date)
        end
end
