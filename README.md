<div align="center">

# happybiRthday

<img src="https://user-images.githubusercontent.com/9893806/29244819-281b80d8-7f91-11e7-9166-a31e67fe8928.png">

[![Travis-CI Build Status](https://travis-ci.org/Bohdan-Khomtchouk/happybiRthday.svg?branch=master)](https://travis-ci.org/Bohdan-Khomtchouk/happybiRthday)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)
[![GitHub version](https://badge.fury.io/gh/Bohdan-Khomtchouk%2FhappybiRthday.svg)](https://badge.fury.io/gh/Bohdan-Khomtchouk%2FhappybiRthday)

</div>

`happybiRthday` is an R package to calculate upcoming birthday dates of Github repos.  Software creation is a big deal!  A repository's initial commit date can be thought of as its birthday.  Next time, drop in and wish a developer (any Github username) a happy birthday of their repo(s).  Or maybe just toast to the upcoming anniversary of your own software repo!  Life is too short not to celebrate the creation of software!


### Installation instructions

You can install the current GitHub version using the [devtools](https://github.com/hadley/devtools) package and the following command in R:
```R
if (!require("devtools")) install.packages("devtools")
devtools::install_github("Bohdan-Khomtchouk/happybiRthday")
```
And then:
```R
library(happybiRthday)
celebrate("Bohdan-Khomtchouk")
```
