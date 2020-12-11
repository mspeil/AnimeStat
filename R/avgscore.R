#' avgscore
#'
#' @param data data frame of anime stats created with loop()
#'
#' @return tells you the average rating of animes in your data frame
#' @export
#'
#' @examples
avgscore = function(data){

  total = 0
  for(i in 1:length(data$total)){
    total = total + data$total[i]
  }
  ans = total/length(x$total)
  print("Average score is")
  print(ans)
  return(ans)

}
