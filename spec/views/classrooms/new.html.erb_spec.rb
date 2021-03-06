require 'rails_helper'

RSpec.describe "classrooms/new", type: :view do
  before(:each) do
    assign(:classroom, Classroom.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new classroom form" do
    render

    assert_select "form[action=?][method=?]", classrooms_path, "post" do

      assert_select "input#classroom_name[name=?]", "classroom[name]"

      assert_select "textarea#classroom_description[name=?]", "classroom[description]"
    end
  end
end
