"could be fun to have a thin wrapper around `devtools::check` and/or a function
to run a gh actions that provides affirmation after X consecutive calls or
X calls in Y minutes."


#' Title
#'
#' @param runs Numeric. Number of runs in time frame before praise
#' @param minutes Numeric. Number of minutes in time frame
#' @param template Character. Praise template
#' @param func Function. Something you expect to run multiple times
#'
#' @return
#' @export
#'
#' @examples
spritz <- function(runs = 3, minutes = 10, template = "You are ${adverb} ${adjective}!",
                   func =  devtools::check()){

  if(!exists("spritz_count")){
    spritz_count<<- data.frame(count = 1,time = as.numeric(Sys.time()))
  } else {
    spritz_count <<- rbind(spritz_count,data.frame(count = 1,time = as.numeric(Sys.time())))
  }

  # fitler by time
  time_frame <- (as.numeric(Sys.time())-(minutes*60))

  spritz_count_filtered  <- spritz_count[spritz_count$time >= time_frame, ]
  # check number of runs

   runs_in_time_frame <- sum(spritz_count_filtered$count)

   # normal praise
  if(runs_in_time_frame == runs){
    praise <- praise::praise(template = template)
    print(praise)
  }

   diff_runs  <- runs_in_time_frame - runs

   # tipsy praise
   if(diff_runs < 3 & diff_runs > 0 ){
     print(tipsy(template = template))
   }

   # drunk praise
   if(diff_runs >= 3){
     print(drunk(template = template))
   }

  func
}
