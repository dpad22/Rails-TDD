require 'rails_helper'
RSpec.describe User do
  # this is our control
  context "With valid attributes" do
    it "should save" do
      user = User.new(
        fname: 'David',
        lname: 'Padilla',
        email: 'dp@coding.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do

    it "should not save if fname field is blank" do
      user = User.new(
        fname: '',
        lname: 'Padilla',
        email: 'dp@coding.com'
      )
      expect(user).to be_invalid
    end
    
    it "should not save if lname field is blank" do
      user = User.new(
        fname: 'David',
        lname: '',
        email: 'dp@coding.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if email already exists" do
      user = User.new(
        fname: 'David',
        lname: 'Padilla',
        email: 'dp@coding.com'
      )
      expect(user).to be_valid
    end

    it "should not save if invalid email format" do
      user = User.new(
        fname: 'David',
        lname: '',
        email: 'invalidEmail'
      )
      expect(user).to be_invalid
    end
  end
end