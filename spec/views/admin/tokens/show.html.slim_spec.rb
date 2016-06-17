require 'rails_helper'

RSpec.describe "admin/tokens/show", type: :view do
  before(:each) do
    @admin_token = assign(:admin_token, Admin::Token.create!(
      :access_token => "Access Token",
      :refresh_token => "Refresh Token",
      :expired_at => "Expired At",
      :datatime => "Datatime"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Access Token/)
    expect(rendered).to match(/Refresh Token/)
    expect(rendered).to match(/Expired At/)
    expect(rendered).to match(/Datatime/)
  end
end
