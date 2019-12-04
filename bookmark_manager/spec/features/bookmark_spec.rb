feature "Bookmark page" do
  scenario " display 'bookmarks' on the page" do
    Bookmark.add('Google', "http://www.google.com")
    Bookmark.add('destroy', "http://www.destroyallsoftware.com")
    Bookmark.add('makers', "http://www.makersacademy.com")
    visit("/bookmarks")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
