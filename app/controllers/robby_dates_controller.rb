class RobbyDatesController < ApplicationController
  def index
    @cuddle_dates = RobbyDate.future.all
    @new_cuddle_date = RobbyDate.new
  end

  def create
    @new_cuddle_date = RobbyDate.new(cuddle_params)
    unless @new_cuddle_date.save
      flash[:error] = 'Something fucked up.'
    end
    redirect_to robby_dates_path
  end

  def update
  end

  def destroy
    @cuddle_date = RobbyDate.find(params[:id])
    unless @cuddle_date.destroy
      flash[:error] = 'Something fucked up.'
    end
    redirect_to robby_dates_path
  end

  private

  def cuddle_params
    params.require(:robby_date).permit(:cuddle_time)
  end
end
