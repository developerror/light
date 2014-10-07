require 'spec_helper'

describe 'Static pages' do
  subject { page }
  before { visit static_pages_about_path }

  describe 'About page' do
    it "should have the content 'About'" do
      should have_content('About')
    end
  end
end