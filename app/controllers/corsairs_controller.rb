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
  end

  def edit 
    @corsair = Corsair.find(params[:id])
    if @corsair.save
        flash[:success] = "saved changes"
        redirect_to edit_corsair_path
      else
        puts "oups"
      end
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
      params.require(:corsair).permit(:first_name, :age)
    end
end
