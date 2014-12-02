require 'rails_helper'

RSpec.describe "show_rules/index", :type => :view do
  before(:each) do
    assign(:show_rules, [
      ShowRule.create!(),
      ShowRule.create!()
    ])
  end

  it "renders a list of show_rules" do
    render
  end
end
