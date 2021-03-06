require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Chained Freedom" }

	describe "Home page" do
		it "should have the content 'Chained Freedom' " do
			visit '/static_pages/home'
			expect(page).to have_content('Chained Freedom')
		end
		it "should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("Chained Freedom | Home")
		end
		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end
	describe "About page" do
		it "should have the content 'About" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end
		it "should have the title 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("Chained Freedom | About")
		end
	end
		describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end
		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
		  	expect(page).to have_title("Chained Freedom | Contact")
		  end
		end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
		  	expect(page).to have_title("Chained Freedom | Help")
		  end
		end


end
