require 'pg'

class Bookmark

  def self.all
    # connection = PG.connect dbname: "bookmark_manager", user: ENV["USER"]
    data = CONNECTION.exec("select * from bookmarks")
    result = []
    data.each {|saved_bookmark|
      result << saved_bookmark['url']
    }
    p result
  end

  private

  def self.dbname
    if ENV["ENVIRONMENT"] == "test"
      "bookmark_manager_test"
    else
      "bookmark_manager"
    end
  end

  def self.add(url)
    CONNECTION.exec("insert into bookmarks(url) values('#{url}')")
  end

  CONNECTION = PG.connect dbname: dbname, user: ENV["USER"]
end
