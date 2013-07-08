require 'spec_helper'

describe User do
  it "can create new user" do
    user = User.new(:email => "test@test.com")
    user.save
    users = User.all
    expect(users).to include(user)
  end

end
