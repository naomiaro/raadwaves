require 'rails_helper'

RSpec.describe "show_instances/new", :type => :view do
  before(:each) do
    assign(:show_instance, ShowInstance.new())
  end

  it "renders new show_instance form" do
    render

    assert_select "form[action=?][method=?]", show_instances_path, "post" do
    end
  end
end
