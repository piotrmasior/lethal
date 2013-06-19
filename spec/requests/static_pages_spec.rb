require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Lethal') }
    it { should have_content('coming soon...') }
  end

end