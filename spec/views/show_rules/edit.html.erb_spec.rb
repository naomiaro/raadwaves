require 'rails_helper'

RSpec.describe "show_rules/edit", :type => :view do
  before(:each) do
    @show_rule = assign(:show_rule, ShowRule.create!())
  end

  it "renders the edit show_rule form" do
    render

    assert_select "form[action=?][method=?]", show_rule_path(@show_rule), "post" do
    end
  end
end
