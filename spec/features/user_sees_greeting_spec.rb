require_relative '../spec_helper'

# RSpec.describe "When a user visits root" do
#   it "they see a welcome message" do
#     visit('/')

#     save_and_open_page
#     within('#greeting') do
#       expect(page).to have_content("Welcome")
#     end
#   end
# end

# RSpec.describe "When a user visits new" do
#   it "they see a form to create a new horse" do
#     visit('/horses/new')

#     save_and_open_page
#     within('h1') do
#       expect(page).to have_content("Create a New Horse")
#     end
#   end
# end

RSpec.describe "When a user visits horses index" do
  it "they see all the horses" do
    Horse.create(name: "Phil", age: 22, total_winnings: 3)
    Horse.create(name: "Penelope", age: 24, total_winnings: 4)
    visit('/horses')

    save_and_open_page
    within('h1') do
      expect(page).to have_content("All Horses")
    end
  end
end

# RSpec.describe "When a user visits jockeys index" do
#   it "they see a jockey's total winnings'" do
#     Jockey.create(name: "Roberto")
#     visit('/jockeys/1')

#     save_and_open_page
#     within('#total') do
#       expect(page).to have_content("457643")
#     end
#   end
# end