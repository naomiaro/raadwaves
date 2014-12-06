class ShowRule < ActiveRecord::Base
  belongs_to :show

  serialize :rrule, Hash

  validates :start_date, :start_time, :end_date, :end_time, :timezone, presence: true
  validate :is_ice_cube_rule

  def is_ice_cube_rule
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

  def rrule
    IceCube::Rule.from_hash(read_attribute(:rrule))
  end

  def start
    make_datetime(:start_date, :start_time)
  end

  def end
    make_datetime(:end_date, :end_time)
  end

  private

  def make_datetime(date_attr, time_attr)
    d = read_attribute_before_type_cast(date_attr)
    t = read_attribute_before_type_cast(time_attr)

    Time.use_zone(self.timezone) do
      return Time.zone.parse("#{d} #{t}")
    end
  end
end
