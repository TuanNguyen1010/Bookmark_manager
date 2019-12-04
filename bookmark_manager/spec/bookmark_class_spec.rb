require 'bookmark_class'
require 'pg'
describe Bookmark do
  let(:database_info) {{dbname: "bookmark_manager_test", user: ENV["USER"]}}

  describe ".add_bookmkark" do
    it "adds new bookmark to the bookmark table" do
      Bookmark.add("http://www.tuna.com")
      expect(Bookmark.all).to include("http://www.tuna.com")

    end
  end

  describe " .all" do

    it "displays a array of Bookmark instances" do
      Bookmark.add("http://www.google.com")
      Bookmark.add("http://www.destroyallsoftware.com")
      Bookmark.add("http://www.makersacademy.com")
      expect(Bookmark.all).to include("http://www.google.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.makersacademy.com")
    end
  end

end
