require 'rails_helper'

RSpec.describe "admin/tokens/new", type: :view do
  before(:each) do
    assign(:admin_token, Admin::Token.new(
      :access_token => "MyString",
      :refresh_token => "MyString",
      :expired_at => "MyString",
      :datatime => "MyString"
    ))
  end

  it "renders new admin_token form" do
    render

    assert_select "form[action=?][method=?]", admin_tokens_path, "post" do

      assert_select "input#admin_token_access_token[name=?]", "admin_token[access_token]"

      assert_select "input#admin_token_refresh_token[name=?]", "admin_token[refresh_token]"

      assert_select "input#admin_token_expired_at[name=?]", "admin_token[expired_at]"

      assert_select "input#admin_token_datatime[name=?]", "admin_token[datatime]"
    end
  end
end
