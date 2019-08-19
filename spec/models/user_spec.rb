require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it "should be valid" do
    expect(user).to be_valid
  end

  it "name should be present" do
  end
end
