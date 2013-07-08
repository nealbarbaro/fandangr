# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  it "can create new user" do
    user = User.new(:email => "test@test.com")
    user.save
    users = User.all
    expect(users).to include(user)
  end

end
