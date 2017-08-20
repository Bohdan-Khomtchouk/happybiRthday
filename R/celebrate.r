globalVariables(c("V4", "num"))

#' Celebrating software birthdays
#'
#' Accesses all public repositories belonging to a specific Github user and prints each repository's respective name, age, creation date of initial commit (i.e., repository birthday date), and time remaining until upcoming birthday.
#'
#' @param github_username Character vector of one Github username handle (e.g., "some_username_here").
#'
#' @return Returns data frame with repository name, age, creation date, and time remaining until upcoming birthday.
#'
#'
#' @importFrom lubridate month year mday as.duration
#' @import gh
#' @importFrom data.table as.data.table
#' @import tidyr
#' @importFrom dplyr arrange
#'
#' @examples
#' celebrate("Bohdan-Khomtchouk")
#' 
#' @export

celebrate <- function(github_username) {

  oopts = options(warn=-1)
  on.exit(options(oopts))
	allrepos <- gh::gh("/users/:username/repos", username = github_username, type = "public", .limit = Inf)
	Repo_Name <- sapply(allrepos, "[[", "name")
	dates <- sapply(allrepos, "[[", "created_at")
	cleandates <- gsub("\\T.*", "", dates)
	Repo_Birthday <- cleandates
	age <- lubridate::as.duration(Sys.Date() - as.Date(cleandates))
	Repo_Age <- gsub(".*\\((.*)\\).*", "\\1", age)
	cyear <- lubridate::year(Sys.Date())
	cmonth <- lubridate::month(cleandates)
	cday <- lubridate::mday(cleandates)
	cdate <- as.Date(paste(cyear, cmonth, cday, sep='-'))

	before_or_after <- function(x) {
		if ((Sys.Date() < x) == TRUE) {
			countdown <- lubridate::as.duration(x - Sys.Date())
		} else {
			nyear <- lubridate::year(Sys.Date()) + 1
			cmonth <- lubridate::month(x)
			cday <- lubridate::mday(x)
			ndate <- as.Date(paste(nyear, cmonth, cday, sep='-'))
			countdown <- lubridate::as.duration(ndate - Sys.Date())
		}
	}

	time_in_sec <- sapply(cdate, before_or_after)
	time_in_dur <- lubridate::as.duration(time_in_sec)
	df <- as.data.frame(cbind(Repo_Name, Repo_Age, Repo_Birthday, as.character(time_in_dur)))
	df2 <- tidyr::separate(data = df, col = V4, into = c("num", "Time_Remaining_Until_Birthday"), sep = "s")
	df2$Time_Remaining_Until_Birthday <- sub("$", "s)", df2$Time_Remaining_Until_Birthday)
	df3 <- dplyr::arrange(df2, as.numeric(num))
	data.table::as.data.table(within(df3, rm(num)))

}
