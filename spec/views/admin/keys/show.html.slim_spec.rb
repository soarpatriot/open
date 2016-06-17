require 'rails_helper'

RSpec.describe "admin/keys/show", type: :view do
  before(:each) do
    @admin_key = assign(:admin_key, Admin::Key.create!(
      :client_id => "Client",
      :client_secret => "Client Secret"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Client Secret/)
  end
end
