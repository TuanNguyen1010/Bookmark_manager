require 'pg'

def refresh_db
  connection = PG.connect dbname: "bookmark_manager_test", user: ENV["USER"]
  connection.exec("truncate bookmarks")
  connection.close
end
