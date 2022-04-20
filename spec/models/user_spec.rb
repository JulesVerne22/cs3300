require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations tests" do
    it 'is database authenticable' do
      user = User.create(email: 'user@example.com', password: '123456', password_confirmation: '123456')
      expect(user.valid_password?('123456')).to be_truthy
    end
  end
end
