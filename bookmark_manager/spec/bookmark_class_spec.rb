require 'bookmark_class'
require 'pg'
describe Bookmark do
  let(:database_info) {{dbname: "bookmark_manager_test", user: ENV["USER"]}}
  let(:bookmark) {Bookmark.new("apple", "http://www.apple.com")}

  it "has a title" do
    expect(bookmark.title).to eq("apple")
  end

  it "has a url" do
    expect(bookmark.url).to eq("http://www.apple.com")
  end

  describe ".add_bookmkark" do
    it "adds new bookmark to the bookmark table" do
      Bookmark.add('Tuna', "http://www.tuna.com")

      bookmarks = Bookmark.all.map { |bookmark| bookmark.url}
      expect(bookmarks).to include("http://www.tuna.com")

    end
  end

  describe " .all" do

    it "displays a array of Bookmark instances" do
      Bookmark.add('Google', "http://www.google.com")
      Bookmark.add('destroy', "http://www.destroyallsoftware.com")
      Bookmark.add('makers', "http://www.makersacademy.com")
      bookmarks = Bookmark.all.map { |bookmark| bookmark.url}
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.makersacademy.com")
    end
  end

end
