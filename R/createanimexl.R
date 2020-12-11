#' createanimexl
#'
#' @param start id of the first anime you would like stats on
#' @param end id of the last anime you would like stats on
#' @param reference
#' @param request
#'
#' @return creates an excel spreadsheet of the data frame created with loop()
#' @export
#'
#' @examples
createanimexl = function(start,end, reference = "anime", request = "stats"){

  write_xlsx(loop(start,end, reference, request),"anime.xlsx")

}
