# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "BeerLocations" do
    describe "Admin" do
      describe "beer_locations" do
        login_refinery_user

        describe "beer_locations list" do
          before(:each) do
            FactoryGirl.create(:beer_location, :name => "UniqueTitleOne")
            FactoryGirl.create(:beer_location, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.beer_locations_admin_beer_locations_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before(:each) do
            visit refinery.beer_locations_admin_beer_locations_path

            click_link "Add New Beer Location"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::BeerLocations::BeerLocation.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::BeerLocations::BeerLocation.count.should == 0
            end
          end

          context "duplicate" do
            before(:each) { FactoryGirl.create(:beer_location, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.beer_locations_admin_beer_locations_path

              click_link "Add New Beer Location"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::BeerLocations::BeerLocation.count.should == 1
            end
          end

        end

        describe "edit" do
          before(:each) { FactoryGirl.create(:beer_location, :name => "A name") }

          it "should succeed" do
            visit refinery.beer_locations_admin_beer_locations_path

            within ".actions" do
              click_link "Edit this beer location"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before(:each) { FactoryGirl.create(:beer_location, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.beer_locations_admin_beer_locations_path

            click_link "Remove this beer location forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::BeerLocations::BeerLocation.count.should == 0
          end
        end

      end
    end
  end
end
