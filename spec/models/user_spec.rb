require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validations" do
    it "is valid with valid attributes" do
      user = User.new
      user.email ="gk.987680@gmail.com"
      user.password="123456"
      user.password_confirmation="1234556"
      user.first_name = "karan"
      user.last_name = "gaba"
    expect(user).to_not be_valid
    expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "email existence error" do
      user = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "gk.987680@gmail.com", 
        password: "12345", 
        password_confirmation: "12345"})
      user2 = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "gk.987680@gmail.com", 
        password: "12345", 
        password_confirmation: "12345"})
      expect(user2).to_not be_valid
      expect(user2.errors.full_messages).to include("Email has already been taken")
    end

    it "min password length > 5 chars " do
      user = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "gsk.987680@gmail.com", 
        password: "125", 
        password_confirmation: "125"})
        expect(user).to_not be_valid
        expect(user.errors.full_messages).to include("Password is too short (minimum is 5 characters)")
    end

    it "min password length < 14 chars " do
      user = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "gsak.987680@gmail.com", 
        password: "123456789101112", 
        password_confirmation: "123456789101112"})
        expect(user).to_not be_valid
        expect(user.errors.full_messages).to include("Password is too long (maximum is 14 characters)")
    end
  end


  describe '.authenticate_with_credentials' do
    it "should fail if invalid email is used to login" do
      user = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "gk.987680@gmail.com", 
        password: "12345", 
        password_confirmation: "12345"})

      # user1 = User.authenticate_with_credentials("gk.987680@gmail.com","12345")
      expect(User.authenticate_with_credentials("gk.987680@gmail.com","12345")).to be

    end
    it "should pass even if email with uppercase and space is used for login and registration" do
      user = User.create({
        first_name: "karan",
        last_name:"gaba", 
        email: "   gk.987680@GMAil.com   ", 
        password: "12345", 
        password_confirmation: "12345"})

      # user1 = User.authenticate_with_credentials("gk.987680@gmail.com","12345")
      expect(User.authenticate_with_credentials("gk.987680@gmail.com","12345")).to be
      expect(user).to be_valid  
      
    end
  end
end