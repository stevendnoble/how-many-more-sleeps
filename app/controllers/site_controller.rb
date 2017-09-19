class SiteController < ApplicationController
  def index
    dates = RobbyDate.future
    dates.each(&:check_future_date)
    next_cuddle = RobbyDate.future.first.try(:cuddle_time)
    @days_left = next_cuddle ? (next_cuddle - Date.today).to_i : 0
  end
end
