# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Riders" do
    describe "Admin" do
      describe "riders", type: :feature do
        refinery_login

        describe "riders list" do
          before do
            FactoryGirl.create(:rider, :first_name => "UniqueTitleOne")
            FactoryGirl.create(:rider, :first_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.riders_admin_riders_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.riders_admin_riders_path

            click_link "Add New Rider"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "First Name", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Riders::Rider, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Riders::Rider, :count)

              expect(page).to have_content("First Name can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:rider, :first_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.riders_admin_riders_path

              click_link "Add New Rider"

              fill_in "First Name", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Riders::Rider, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:rider, :first_name => "A first_name") }

          it "should succeed" do
            visit refinery.riders_admin_riders_path

            within ".actions" do
              click_link "Edit this rider"
            end

            fill_in "First Name", :with => "A different first_name"
            click_button "Save"

            expect(page).to have_content("'A different first_name' was successfully updated.")
            expect(page).not_to have_content("A first_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:rider, :first_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.riders_admin_riders_path

            click_link "Remove this rider forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Riders::Rider.count).to eq(0)
          end
        end

      end
    end
  end
end
