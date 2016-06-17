require 'rails_helper'

RSpec.describe "admin/keys/new", type: :view do
  before(:each) do
    assign(:admin_key, Admin::Key.new(
      :client_id => "MyString",
      :client_secret => "MyString"
    ))
  end

  it "renders new admin_key form" do
    render

    assert_select "form[action=?][method=?]", admin_keys_path, "post" do

      assert_select "input#admin_key_client_id[name=?]", "admin_key[client_id]"

      assert_select "input#admin_key_client_secret[name=?]", "admin_key[client_secret]"
    end
  end
end
