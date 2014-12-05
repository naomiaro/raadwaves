module ShowsHelper
  def setup_show(show)
    1.times {show.show_rules.build({
      rrule: IceCube::Rule.daily
    })}
    show
  end
end
