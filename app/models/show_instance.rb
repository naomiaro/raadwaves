class ShowInstance < ActiveRecord::Base
  belongs_to :show

  def self.start_between(start_date, end_date)
    where("start >= ? AND start < ?", start_date, end_date)
  end

  def self.end_between(start_date, end_date)
    where("end > ? AND end <= ?", start_date, end_date)
  end

  def self.occurs_between(start_date, end_date)
  end
end
