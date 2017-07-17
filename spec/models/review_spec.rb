require 'rails_helper'

describe Review, type: :model do
  it { should validate_presence_of :author }
  it { should validate_length_of(:content) }
  it { should belong_to :place }

end
