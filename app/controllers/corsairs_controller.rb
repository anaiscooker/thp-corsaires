class CorsairsController < ApplicationController
  def new
    @corsair = Corsair.new
  end

  def create
    @corsair = Corsair.new(user_params)
      if @corsair.save
        flash[:success] = "this is your profile"
        redirect_to corsairs_path
      else 
        puts "oups"
      end
  end

  def update
    @corsair = Corsair.find(params[:id])
    @corsair.update(user_params)
    redirect_to corsair_path(@corsair.id)
  end

  def edit 
    @corsair = Corsair.find(params[:id])
  end

  def destroy
    @corsair.destroy
  end

  def index
    @corsairs = Corsair.all
  end

  def show
    @corsair = Corsair.find(params[:id])
  end

  private

    def user_params
      params.require(:corsair).permit(:first_name, :age, :likeness, :bio, :slack_handle, :github)
    end
end
