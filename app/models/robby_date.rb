# t.boolean  "future"
# t.date     "cuddle_time"

class RobbyDate < ActiveRecord::Base
  before_save :check_future_date
  validates :cuddle_time, uniqueness: true

  def is_future?
    self.cuddle_time > Date.today
  end

  def check_future_date
    self.update(future: self.is_future?) if self.future.nil?
  end

  scope :future, -> { where(future: true).order(cuddle_time: :asc) }
end
