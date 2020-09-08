class HumansController < ApplicationController
<<<<<<< HEAD
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
=======

    def create
        @human = Human.new(human_params)
        if @human.save
            redirect_to human_path(@human)
        else
            render 'new'
        end
    end

    private
    
    def human_params
        params.require(:human).permit(:decription, :address, :rate)
    end


  def destroy
    @human.destroy

    redirect_to humans_path
  end

>>>>>>> master
end
