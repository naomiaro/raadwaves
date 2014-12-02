module ShowsHelper
  def setup_show(show)
    1.times { show.show_rules.build }
    show
  end
end
