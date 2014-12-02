require 'rails_helper'

RSpec.describe "show_rules/show", :type => :view do
  before(:each) do
    @show_rule = assign(:show_rule, ShowRule.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
