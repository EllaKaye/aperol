# create a new environment and an object called spritz count
the <- new.env(parent = emptyenv())
the$spritz_count <- data.frame(count = numeric(),time = numeric(),func = character())


#' Spritz
#'
#' A thin wrapper around a function (e.g devtools::check())
#' that provides affirmation after X calls in Y minutes. Praise
#' gets drunker as the number of actual runs exceeds the number of
#' runs in the time frame.
#'
#' @param runs Numeric. Number of runs in time frame before praise
#' @param minutes Numeric. Number of minutes in time frame
#' @param template Character. Praise template
#' @param func Character. A function you expect to run multiple times
#'
#' @return Returns the output of func
#' @export
#'
#' @examples
#' \dontrun{
#'
#' # default is to run devtools::check()
#' spritz()
#' ## change rate depending on speed of devtools::check()
#' spritz(runs = 4, minutes = 15)
#'
#' ## custom function
#' sleep_add <- function(){
#'   Sys.sleep(2)
#'   out <- 1+1
#'   return(out)
#' }
#'
#' spritz(func = "sleep_add()")
#'
#'
#' }
#'
#'
spritz <- function(runs = 3, minutes = 10, template = "You are ${adverb} ${adjective}!",
                   func =  "devtools::check()"){


  # fitler by time
  time_frame <- (as.numeric(Sys.time())-(minutes*60))

  spritz_count_filtered  <- the$spritz_count[the$spritz_count$time >= time_frame & the$spritz_count$func >= func, ]
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
   praise_length <- length(strsplit(template, " ")[[1]])
   rep_n <- min(diff_runs - 2, praise_length)

   if (diff_runs >= 3) {
     print(drunk(repeat_words = rep_n, repeat_times = 2:(rep_n + 1), template = template))
   }

   # increment the spritz count
   increment_spritz_count(func)

   # run the function
   out  <- eval(parse(text = func))

  return(out)
}


#' Increment the spritz count
#'
#' Adds a row to the spritz count variable in the `the` environment
#'
#' @param func Character. Function to be evaluated
#'
#' @return Invisible. Data frame for spritz_count
#' @export
#'
#' @examples
#'  increment_spritz_count(func = "1+1")
#'
increment_spritz_count <- function(func){
  count_item <- data.frame(count = 1,time = as.numeric(Sys.time()),func = func)
  old <- the$spritz_count
  the$spritz_count <- rbind(old,count_item)
  invisible(old)
}

