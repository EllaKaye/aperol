#' Tipsy Praise
#' 
#' Generates praise with [praise::praise()], then swaps some words.
#'
#' @param swaps int, number of word swaps to make
#' @param template character scalar, template for the (non-swapped) praise
#'
#' @export
#'
#' @examples tipsy()
#' @examples tipsy(2, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#' 
tipsy <- function(swaps = 1, template = "You are ${adverb} ${adjective}!") {
  praise <- praise::praise(template)
  praise_words <- strsplit(praise, " ")[[1]]
  n <- length(praise_words)

  if (swaps > n) swaps <- n

  swap_indicies <- sample(n, size = swaps + 1)
  swapped_indices <- sample(swap_indicies) 

  while (any(swap_indicies == swapped_indices)) {
    swapped_indices <- sample(swap_indicies) 
  }

  praise_words[swap_indicies] <- praise_words[swapped_indices]

  paste(praise_words, collapse = " ")
}

#' Drunk Praise
#' 
#' Generates praise with [praise::praise()], then repeats some words, and permutes them all.
#'
#' @param repeat_words int, number of words that get repeated
#' @param repeat_times int, number of times to repeat the repeated words
#' @param template character scalar, template for the (non-swapped) praise
#'
#' @export
#'
#' @examples drunk()
#' @examples drunk(2, 3, "You are ${creating} a ${adverb} ${adjective} ${rpackage}")
#' 
drunk <- function(repeat_words = 1, repeat_times = 2, template = "You are ${adverb} ${adjective}!") {
  praise <- praise::praise(template)
  praise_words <- strsplit(praise, " ")[[1]]
  n <- length(praise_words)

  words_to_repeat <- sample(1:n, repeat_words)
  all_words <- praise_words[c(1:n, rep(words_to_repeat, times = repeat_times - 1))]
  paste(sample(all_words), collapse = " ")
}