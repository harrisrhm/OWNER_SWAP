class HumansController < ApplicationController
    before_action :set_humans, only: [:show, :edit, :update, :destroy]

    skip_before_action :authenticate_user!, only: :index

    def index
        @humans = Human.all
    end
    
    def new
        @human = Human.new
    end
    
    def show
    end

    def edit
    end

    def update
        @human.update(human_params)

        redirect_to human_path(@human)
    end
    
    def create
        @human = Human.new(human_params)
        if @human.save
            redirect_to human_path(@human)
        else
            render 'new'
        end
    end

    def destroy
        @human.destroy
        redirect_to humans_path
    end

    private

    def set_humans
        @human = Human.find(params[:id])
    end

    def human_params
        params.require(:human).permit(:name, :description, :address, :rate)
    end

end
