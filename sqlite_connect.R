# library ----
library(RSQLite)
# new db ----
# for a new db it is enough to write a new db name
con <- dbConnect(SQLite(), "baris2.db")
# connection ----
sqlitePath <- "baris.db"
con <- dbConnect(SQLite(), sqlitePath)
dbListTables(con)
dbWriteTable(con, "tr_sf.Rdata", tr_sf)
dbListFields(con, "mtcars")
dbReadTable(con, "mtcars")
res <- dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")
dbFetch(res)
dbClearResult(res)

dbReadTable(con, "mtcars") %>%
  names()