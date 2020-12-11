#' isthereonepiece
#'
#' @param data data frame created with loop function of anime data
#'
#' @return returns true of One Piece is one of the anime in the data frame, false if it is not
#' @export
#'
#' @examples
isthereonepiece = function(data){

  answer = "One Piece" %in% data$name.title
  return(answer)

}
