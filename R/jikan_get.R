#' jikin_get
#'
#' @param reference
#' @param id id number of the anime series you would like data on
#' @param request
#' @param parameter
#'
#' @return
#' @export
#'
#' @examples
jikan_get = function(reference = "anime", id = "1", request = "", parameter = ""){


  URL = "https://api.jikan.moe/v3/"

  parameters = paste(
    reference, "/", id, "/", request,
    sep = ""
  )

  PATH = paste0(URL, parameters)

  print(PATH)

  initialquery = fromJSON(PATH)

  return(initialquery)
}
