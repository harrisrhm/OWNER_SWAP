class HumansController < ApplicationController


  def destroy
    @human.destroy

    redirect_to humans_path
  end
end
