require 'bookmark_class'
require 'pg'
describe Bookmark do
  let(:database_info) {{dbname: "bookmark_manager", user: ENV["USER"]}}

  describe " .all" do
    # it "connects to a database" do
    #   expect(PG).to receive(:connect).with(database_info)
    #   Bookmark.all
    # end

    it "displays a array of Bookmark instances" do
      expect(Bookmark.all).to include("http://www.google.com")
      expect(Bookmark.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmark.all).to include("http://www.makersacademy.com")
    end

    # it " returns an array of bookmark from the database" do
    #   connection = PG.connect database_info
    #   expect(connection).to receive(:exec).with("select * from bookmarks")
    #   Bookmark.all
    # end
  end
end
