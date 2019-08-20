require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it "ユーザーは有効であるか" do
    expect(user).to be_valid
  end

  it "ユーザーは存在するか" do
    user.name = ""
    expect(user).to_not be_valid
  end

  it "メールは存在するか" do
    user.email = ""
    expect(user).to_not be_valid
  end

  it "名前は50文字以下か" do
    user.name = "a" * 51
    expect(user).to_not be_valid
  end

  it "メールは252文字以下か" do
    user.email = "a" * 244 + "@example.com"
    expect(user).to_not be_valid
  end

  it "有効なメールフォーマットか" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      user.email = valid_address
      expect(user).to be_valid, "#{valid_address.inspect} should be valid"
    end
  end
end
