require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }


    it { expect(user).to be_valid }

  pending "add some examples to (or delete) #{__FILE__}"
end
