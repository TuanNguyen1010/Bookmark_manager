require 'pg'

class Bookmark
  def self.all
    connection = PG.connect dbname: "bookmark_manager", user: ENV["USER"]
    data = connection.exec("select * from bookmarks")
    result = []
    data.each {|saved_bookmark|
      result << saved_bookmark['url']
    }
    p result
  end
end
