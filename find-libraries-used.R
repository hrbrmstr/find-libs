find_libraries_used <- function(path) {

  require(purrr)

  s_parse <- purrr::safely(parse) # prevents parse() from borking on malformed R files

  path.expand(path) %>%
    list.files( pattern=".*\\.[Rr]$", full.names=TRUE, recursive = TRUE) %>% # sub out for your own dir
    purrr::map(s_parse) %>% # parse!
    purrr::map("result") %>%  # we used safely() so need to get to get to the "result"
    purrr::discard(is.null) %>%  # get rid of empty results 
    unlist() %>%  # we don't care which file the library() calls are in
    purrr::keep(is.language) %>% # I'm 99% sure only the next line is required but it's not like we're moving slowly
    purrr::discard(is.symbol) %>% # get rid of symbols
    purrr::keep(~.x[[1]] == "library") %>% # match for a library call
    purrr::map(~match.call(library, .x)) %>% # formalize it since folks cld be using named parameters in any order
    purrr::map_chr(~as.character(.x[2])) %>%  # get the package names as a character vector
    unique() %>% # only care abt unique ones
    sort() # i blame sesame street for me wanting these in alphabetical order

}
