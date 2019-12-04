feature "Bookmark page" do
  scenario " display 'bookmarks' on the page" do
    Bookmark.add("http://www.google.com")
    Bookmark.add("http://www.destroyallsoftware.com")
    Bookmark.add("http://www.makersacademy.com")
    visit("/bookmarks")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
