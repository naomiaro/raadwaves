require 'rails_helper'

RSpec.describe "show_rules/new", :type => :view do
  before(:each) do
    assign(:show_rule, ShowRule.new())
  end

  it "renders new show_rule form" do
    render

    assert_select "form[action=?][method=?]", show_rules_path, "post" do
    end
  end
end
