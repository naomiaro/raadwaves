class Setting < ActiveRecord::Base

  def self.getScheduleGeneratedUntil
    record = self.find_by key: 'schedule_generated_to'

    if record.nil?
      return Time.now.utc
    else
      Time.use_zone('UTC') do
        return Time.zone.parse("#{record.value}")
      end
    end
  end

  def self.setScheduleGeneratedUntil(time)
    s = Setting.where(key: 'schedule_generated_to').first_or_initialize
    s.value = time.to_s
    s.save!
  end

end
