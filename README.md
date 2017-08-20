<div align="center">

# happybiRthday

<img src="https://user-images.githubusercontent.com/9893806/29244819-281b80d8-7f91-11e7-9166-a31e67fe8928.png" style="width: 50%; height: 50%"/>

[![Travis-CI Build Status](https://travis-ci.org/Bohdan-Khomtchouk/happybiRthday.svg?branch=master)](https://travis-ci.org/Bohdan-Khomtchouk/happybiRthday)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/happybiRthday)](https://cran.r-project.org/package=happybiRthday)

</div>

`happybiRthday` is an R package hosted on CRAN (https://cran.r-project.org/web/packages/happybiRthday/index.html) to calculate upcoming birthday dates of Github repos.  Software creation is a big deal!  A repository's initial commit date can be thought of as its birthday.  Next time, drop in and wish a developer (any Github username) a happy birthday of their repo(s).  Or maybe just toast to the upcoming anniversary of your own software repo!  Life is too short not to celebrate the creation of software!

### Usage
```R
library(happybiRthday)
celebrate("hadley")  # congratulate & thank Hadley Wickham for his contributions
```

### Installation instructions

```R
install.packages("happybiRthday")
library(happybiRthday)
```

You could also install the current GitHub version using the [devtools](https://github.com/hadley/devtools) package and the following command in R:
```R
if (!require("devtools")) install.packages("devtools")
devtools::install_github("Bohdan-Khomtchouk/happybiRthday")
library(happybiRthday)
```
