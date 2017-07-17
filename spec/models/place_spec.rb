require 'rails_helper'

describe Place, type: :model do
  it { should validate_presence_of :city }
  it { should have_many :reviews }
  it { should validate_presence_of :country }
end
