require 'spec_helper'

describe 'User' do
  it "should require an email" do
    user = User.new
    user.should_not be_valid
  end
end
