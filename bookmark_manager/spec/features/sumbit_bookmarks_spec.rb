feature "submitting bookmarks" do
  scenario "user adds a new bookmark" do
    visit("/bookmarks")
    fill_in"new bookmark", with: "apple.com"
    fill_in"title", with: "Mac"
    click_on("submit")
    expect(page).to have_content("apple.com")
    expect(page).to have_content("Mac")
  end
end
