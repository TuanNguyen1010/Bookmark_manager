require 'bookmark_class'

describe Bookmark do

  it "displays a array of hard-coded Bookmark instances" do
    expect(Bookmark.all).to include("http://www.google.com")
    expect(Bookmark.all).to include("http://www.yahoo.com")
    expect(Bookmark.all).to include("http://www.bing.com")
  end

end
