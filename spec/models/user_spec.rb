require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end
  it 'is invalid without email' do
    expect(build(:user, email: nil)).to_not be_valid
  end
  it 'is invalid without role' do
    expect(build(:user, role: nil)).to_not be_valid
  end
  it 'is invalid without status' do
    expect(build(:user, status: nil)).to_not be_valid
  end
  it 'is invalid without password' do
    expect(build(:user, password: nil)).to_not be_valid
  end
end
