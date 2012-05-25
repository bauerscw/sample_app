require 'spec_helper'

<<<<<<< HEAD
describe "User Pages" do
  subject { page }
  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1', text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end




=======
describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end
>>>>>>> 7c2f8581797b0b347f37ab2ac5371f5f5433ce1e
