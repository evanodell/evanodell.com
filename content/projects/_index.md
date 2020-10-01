---
aliases: ["/projects/datasets/", "/datasets"]
layout: page
title: Projects
body: Roboto
---

<!-- I should do something to include packages, research, etc, in here automatically -->

## [R Packages](https://docs.evanodell.com)

See all documentation at [docs.evanodell.com](https://docs.evanodell.com).

## Datasets

### [Hansard Speeches and Sentiment](/projects/datasets/hansard-data)

<span class="fa-stack fa"> <i class="ai ai-open-access ai-2x"></i></span> <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a>
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.2537227.svg)](https://doi.org/10.5281/zenodo.2537227)

## Shiny Applications

### [London Housing Bang for your Buck](/projects/housing-bang-buck/)
#### 06 November 2017
<!--
{{< figure src="/img/ptal/bang-buck-image.png" >}}
-->

An interactive map of the relative value-for-money of housing in London, based on the estimated cost-per-room in each property sold in the past five years and the level of public transport accessibility. Allows for subdividing by housing type, travel zone, transport accessibility level, local authority, and more! Builds on this [blog post](/blog/2017/10/20/housing-prices-and-transport-accessibility/), and prompted by a request from my former colleague [Mark Butcher](https://www.linkedin.com/in/markbutcher91).


### [Cycling vs Public Transit App](/projects/cycling-vs-oyster/)
#### 28 April 2017

Live (as in updated every few days) data on the cost of my bike and a pay-as-you-go Oyster card, vs a hypothetical monthly Oyster card. Inspired by this [blog post](/blog/2017/02/06/cycling-vs-oyster/).

### [When Politicians Discuss Disability](/blog/2017/03/24/when-politicians-discuss-disability/)
#### 24 March 2017
An interactive blog post, originally written for [Disability Rights UK's blog](https://disabilityrightsuk.blogspot.co.uk/2017/03/how-do-politicians-discuss-disability.html), tracking the frequency that words and phrases related to disability issues are discussed in the UK parliament from 1936--2016.

### [Map of Disability Sport Providers](https://disabilityrightsuk.shinyapps.io/dis-sport/)

#### 10 November 2016

An interactive map of all charities in the England and Wales charity commission that list both disabled people and amateur sport as areas of focus in their filings with the Charity Commission. This map was created to support the [Get Yourself Active](http://www.getyourselfactive.org/) programme at [Disability Rights UK](https://www.disabilityrightsuk.org/). Last updated March 2017.



### [England Turnout](https://github.com/evanodell/England-TurnOut)

#### 25 October 2016

A model for exploring what impact different electoral turnout scenarios would have on the seat distribution in the 2015 General Election in England. Initially inspired by the possibility raised by Jeremy Corbyn's election as Labour Party leader that Labour would attempt to win the next election by focusing on increasing voter turnout. The first proper Shiny app I made, and no longer hosted online. To see this app, open R and run `shiny::runUrl("https://github.com/evanodell/England-TurnOut/archive/master.zip")`


<!--
## R Packages

### [`nomisr`](https://docs.evanodell.com/nomisr)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/nomisr.svg)](https://github.com/evanodell/nomisr)
[![DOI](https://zenodo.org/badge/118144805.svg)](https://zenodo.org/badge/latestdoi/118144805)

`nomisr` is for accessing [Nomis](https://www.nomisweb.co.uk/) data -- UK labour market statistics, census data and other population data -- with R. Currently only available on [GitHub](https://github.com/evanodell/nomisr)

### [`hansard`](http://docs.evanodell.com/hansard)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/hansard)](https://cran.r-project.org/package=hansard)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/hansard.svg)](https://github.com/evanodell/hansard)
[![](https://cranlogs.r-pkg.org/badges/grand-total/hansard)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/72111315.svg)](https://zenodo.org/badge/latestdoi/72111315)

An ironically named R package to automatically fetch data from the UK Parliament API. Available on [CRAN](https://cran.r-project.org/package=hansard) and [GitHub](https://github.com/EvanOdell/hansard).

### [`mnis`](http://docs.evanodell.com/mnis)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/mnis)](https://cran.r-project.org/package=mnis)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/mnis.svg)](https://github.com/evanodell/mnis)
[![](https://cranlogs.r-pkg.org/badges/grand-total/mnis)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/76553907.svg)](https://zenodo.org/badge/latestdoi/76553907)

An R package for downloading data from the Members' Names Information Service API operated by the UK Parliament. Available on [CRAN](https://cran.r-project.org/package=mnis) and [GitHub](https://github.com/EvanOdell/mnis).

### [`parlitools`](http://docs.evanodell.com/parlitools)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/parlitools)](https://cran.r-project.org/package=parlitools)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/parlitools.svg)](https://github.com/evanodell/parlitools)
[![](https://cranlogs.r-pkg.org/badges/grand-total/parlitools)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/86801920.svg)](https://zenodo.org/badge/latestdoi/86801920)

A collection of tools, datasets and maps for analysing UK politics, including a hexagonal cartogram of Westminster constituencies. Available on [CRAN](https://cran.r-project.org/package=parlitools) and [GitHub](https://github.com/EvanOdell/parlitools).

### [`emisc`](https://docs.evanodell.com/emisc)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/emisc.svg)](https://github.com/evanodell/emisc)
[![DOI](https://zenodo.org/badge/96876145.svg)](https://zenodo.org/badge/latestdoi/96876145)

`emisc` is a collection of miscellaneous functions I wrote that may or may not be useful, and that may or may not duplicate existing work. They include clearing byte order marks out of text data and writing R data to LaTeX line by line, rather than as a table. Currently only available on [GitHub](https://github.com/evanodell/emisc)

-->





<!--

### [Charity Commission Data of All Registered Charities in England](/projects/datasets/charity-data)

<span class="fa-stack fa"> <i class="ai ai-open-access ai-2x"></i></span> <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a>

A dataset of information on all registered charities in the England, taken from the Charity Commission monthly release and translated into a more accessible format. [Click here](/projects/datasets/charity-data) for more details and to download individual files, or [download the most recent complete release](https://shiny.evanodell.com/charity-data/charity-register-2017-07.zip).
-->
