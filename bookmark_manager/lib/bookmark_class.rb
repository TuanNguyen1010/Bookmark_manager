require 'pg'

class Bookmark

  attr_reader :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    # connection = PG.connect dbname: "bookmark_manager", user: ENV["USER"]
    data = CONNECTION.exec("select * from bookmarks")
    result = []
    data.each {|saved_bookmark|
      result << Bookmark.new(saved_bookmark['title'], saved_bookmark['url'])
    }
    result
  end

  def self.dbname
    if ENV["ENVIRONMENT"] == "test"
      "bookmark_manager_test"
    else
      "bookmark_manager"
    end
  end

  def self.add(title, url)
    CONNECTION.exec("insert into bookmarks(title, url) values('#{title}', '#{url}')")
  end

  CONNECTION = PG.connect dbname: dbname, user: ENV["USER"]
end
