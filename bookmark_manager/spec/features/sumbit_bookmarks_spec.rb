feature "submitting bookmarks" do
  scenario "user adds a new bookmark" do
    visit("/bookmarks")
    fill_in"new bookmark", with: "apple.com"
    click_on("submit")
    expect(page).to have_content("apple.com")
  end
end
