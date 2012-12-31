# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "BrewingBeers" do
    describe "Admin" do
      describe "brewing_beers" do
        login_refinery_user

        describe "brewing_beers list" do
          before(:each) do
            FactoryGirl.create(:brewing_beer, :name => "UniqueTitleOne")
            FactoryGirl.create(:brewing_beer, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.brewing_beers_admin_brewing_beers_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.brewing_beers_admin_brewing_beers_path

            click_link "Add New Brewing Beer"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::BrewingBeers::BrewingBeer.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::BrewingBeers::BrewingBeer.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:brewing_beer, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.brewing_beers_admin_brewing_beers_path

              click_link "Add New Brewing Beer"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::BrewingBeers::BrewingBeer.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:brewing_beer, :name => "A name") }

          it "should succeed" do
            visit refinery.brewing_beers_admin_brewing_beers_path

            within ".actions" do
              click_link "Edit this brewing beer"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:brewing_beer, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.brewing_beers_admin_brewing_beers_path

            click_link "Remove this brewing beer forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::BrewingBeers::BrewingBeer.count.should == 0
          end
        end

      end
    end
  end
end
