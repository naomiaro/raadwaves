class ShowRule < ActiveRecord::Base
  belongs_to :show

  serialize :rrule, Hash

  validates :start_date, :start_time, :end_date, :end_time, :timezone, :repeats, :rrule, presence: true
  validate :isIceCubeRule

  def isIceCubeRule
    begin
      r = RecurringSelect.dirty_hash_to_rule(:rrule)
      return true
    rescue
      return false
    end
  end

  def rrule=(new_rule)
    Time.use_zone(timezone) {
      r = RecurringSelect.dirty_hash_to_rule(new_rule)
      write_attribute(:rrule, r.to_hash)
    }
  end
end
