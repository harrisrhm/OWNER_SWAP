class HumansController < ApplicationController

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

end
