#' loops
#'
#' @param start id of the first anime you want stats on
#' @param end id of the last anime you want stats on
#' @param reference
#' @param request
#'
#' @return returns data frame of stats on the selected anime
#' @export
#'
#' @examples
loop = function(start, end, reference = "anime", request = "stats"){

  data = data.frame()

  for(i in start:end){

    name = jikan_get(reference, i, "")
    p = jikan_get(reference, i, request)

    namehold = data.frame(name$title)
    studhold = data.frame(name$studios)
    premhold = data.frame(name$premiered)
    durhold = data.frame(name$duration)
    ephold = data.frame(name$episodes)

    q = as.data.frame(p)
    q = cbind(namehold, studhold, premhold, durhold, ephold, q)

    data = rbind(data,q)
  }

  return(data)
}
