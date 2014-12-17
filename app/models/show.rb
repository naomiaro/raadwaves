class Show < ActiveRecord::Base
  has_many :show_rules, dependent: :destroy
  has_many :show_instances, dependent: :destroy

  validates :name, :description, presence: true

  accepts_nested_attributes_for :show_rules,
    allow_destroy: true

  def generate(generate_until = nil)

    pop_until = Setting.getScheduleGeneratedUntil

    self.show_rules.each do |r|

      #if it doesn't start until later don't make a show
      next if r.start > generate_until

      unless r.repeats?
        show_instance = ShowInstance.new do |si|
          si.start = r.start
          si.end = r.end
          si.show_rule_id = r.id
          si.show_id = self.id
        end

        show_instance.save!

      else

        schedule = IceCube::Schedule.new(r.start, end_time: r.end) do |s|
          rule = r.rrule

          unless rule.terminating?
            rule.until(generate_until)
          end

          s.add_recurrence_rule(rule)
        end

        schedule.each_occurrence do |o|
          if (o.start_time > pop_until && o.start_time <= generate_until)
            show_instance = ShowInstance.new do |si|
              si.start = o.start_time
              si.end = o.end_time
              si.show_rule_id = r.id
              si.show_id = self.id
            end

            show_instance.save!
          end
        end
      end
    end

    Setting.setScheduleGeneratedUntil(pop_until)
  end
  handle_asynchronously :generate, :queue => 'generate_instances'

end
