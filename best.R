best <- function(state, outcome) {
  ## Read outcome data
  outcome_all <- read.csv("outcome-of-care-measures.csv", 
                          colClasses = "character")
  
  ## Check that state and outcome are valid
  state_list <- unique(outcome_all[, 7])
  outcome_list <- c("heart attack", "heart failure", "pneumonia")
  if ((state %in% state_list) == FALSE) {
      stop("invalid state")
  }
  if ((outcome %in% outcome_list) == FALSE) {
      stop("invalid outcome")
  }
  
  ## Return hospital name in that state with lowest 30-day death
  
  ## rate
  
  state_list
}

