class HumansController < ApplicationController
    def edit
        @human = Human.find(params[:id])
      end

    def update
        @human = Human.find(params[:id])
        @human.update(human_params)

    # no need for app/views/humans/update.html.erb
        redirect_to human_path(@human)
    end

    private

    def human_params
        params.require(:human).permit(:name, :description, :address, :rate)
    end
end
