class HumansController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_humans, only: [:show, :edit, :update, :destroy]

    def index
        @humans = Human.all

        @markers = @humans.geocoded.map do |human|
            {
              lat: human.latitude,
              lng: human.longitude,
              infoWindow: render_to_string(partial: "/humans/info_window", locals: { human: human }),
              image_url: helpers.asset_url('dog.jpg')
            }
          end
    end
    
    def new
        @human = Human.new
    end
    
    def show
        @review = @human.reviews
        @markers = [
                    {
                    lat: @human.latitude,
                    lng: @human.longitude,
                    image_url: helpers.asset_url('dog.jpg')
                    }
        ]
    end

    def edit
    end

    def update
        if @human.update(human_params)
            redirect_to human_path(@human)
        else
            render 'edit'
        end
    end
    
    def create
        @human = Human.new(human_params)
        @human.user = current_user
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
        params.require(:human).permit(:name, :description, :address, :rate, :photo)
    end

end
