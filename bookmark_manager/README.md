```
As a user,
so I can see my saved bookmarks
I would like for my all bookmarks to be displayed on the page
```
| Client | Controller | Model | View|
|--------|------------|-------|-----|
|/bookmarks -> | app.rb ->| Bookmarks | |
||app.rb |<- Bookmarks||
||app.rb |->| bookmark.erb|
|/bookmark |<- app.rb | <- | bookmarks.erb|


Set up test database

In order to run the test, you would have to create a new test database.
from command line `createdb bookmark_manager_test`
open the bookmark manager test database `psql bookmark_manager_test`
create a table `create table bookmarks (id SERIAL PRIMARY KEY, url varchar(60));`
quit psql `\q`
