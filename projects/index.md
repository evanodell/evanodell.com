---
layout: page
title: Projects
body: Roboto
---

## Shiny Applications

### [Cycling vs Public Transit App](/projects/cycling-vs-oyster/)
<div class="post-heading">
<div class="post-meta">28 April 2017</div>
</div>

Live (as in updated every few days) data on the cost of my bike and a pay-as-you-go Oyster card, vs a hypothetical monthly Oyster card. Inspired by this [blog post](/blog/2017/02/06/cycling-vs-oyster/).

### [When Politicians Discuss Disability]({{ site.url }}/blog/2017/03/24/when-politicians-discuss-disability/)
<div class="post-heading">
<div class="post-meta">24 March 2017</div>
</div>

An interactive blog post, originally written for [Disability Rights UK's blog](https://disabilityrightsuk.blogspot.co.uk/2017/03/how-do-politicians-discuss-disability.html), tracking the frequency that words and phrases related to disability issues are discussed in the UK parliament from 1936-2016.

<h3><a href="https://disabilityrightsuk.shinyapps.io/dis-sport/" target="\_blank">Map of Disability Sport Providers</a></h3>

<div class="post-heading">
<div class="post-meta">10 November 2016</div>
</div>

An interactive map of all charities in the England and Wales charity commission that list both disabled people and amateur sport as areas of focus in their filings with the Charity Commission. This map was created to support the [Get Yourself Active](http://www.getyourselfactive.org/) programme at [Disability Rights UK](https://www.disabilityrightsuk.org/). Last updated March 2017.

### [England Turnout](https://shiny.evanodell.com/england-turnout/)

<div class="post-heading">
<div class="post-meta">25 October 2016</div>
</div>

A model for exploring what impact different electoral turnout scenarios would have on the seat distribution in the 2015 General Election in England. Initially inspired by the possibility raised by Jeremy Corbyn's election as Labour Party leader that Labour would attempt to win the next election by focusing on increasing voter turnout.

## R Packages

### [`hansard`](http://docs.evanodell.com/hansard)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/EvanOdell/hansard/blob/master/LICENSE)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/hansard)](https://cran.r-project.org/package=hansard)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/hansard.svg)](https://github.com/evanodell/hansard)
[![](https://cranlogs.r-pkg.org/badges/grand-total/hansard)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/72111315.svg)](https://zenodo.org/badge/latestdoi/72111315)

An ironically named R package to automatically fetch data from the UK Parliament API. Available on [CRAN](https://cran.r-project.org/package=hansard) and [GitHub](https://github.com/EvanOdell/hansard).

### [`mnis`](http://docs.evanodell.com/mnis)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/EvanOdell/mnis/blob/master/LICENSE)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/mnis)](https://cran.r-project.org/package=mnis)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/mnis.svg)](https://github.com/evanodell/mnis)
[![](https://cranlogs.r-pkg.org/badges/grand-total/mnis)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/76553907.svg)](https://zenodo.org/badge/latestdoi/76553907)

An R package for downloading data from the Members' Names Information Service API operated by the UK Parliament. Available on [CRAN](https://cran.r-project.org/package=mnis) and [GitHub](https://github.com/EvanOdell/mnis).

### [`parlitools`](http://docs.evanodell.com/parlitools)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/EvanOdell/parlitools/blob/master/LICENSE)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/parlitools)](https://cran.r-project.org/package=parlitools)
[![GitHub tag](https://img.shields.io/github/tag/evanodell/parlitools.svg)](https://github.com/evanodell/parlitools)
[![](https://cranlogs.r-pkg.org/badges/grand-total/parlitools)](https://dgrtwo.shinyapps.io/cranview/)
[![DOI](https://zenodo.org/badge/86801920.svg)](https://zenodo.org/badge/latestdoi/86801920)

A collection of tools, datasets and maps for analysing UK politics, including a hexagonal cartogram of Westminster constituencies. Available on [CRAN](https://cran.r-project.org/package=parlitools) and [GitHub](https://github.com/EvanOdell/parlitools).


## Datasets

### [Hansard Speeches and Sentiment]({{ site.url }}/projects/datasets/hansard-data)

<span class="fa-stack fa"> <i class="ai ai-open-access ai-2x"></i></span> <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a>
[![DOI](https://zenodo.org/badge/84583621.svg)](https://zenodo.org/badge/latestdoi/84583621)

Two datasets of speeches in the Hansard, along with summary information on speech sentiments. The `hansard_senti_post_V21` dataset contains 2,234,059 speeches and 404,581,972 words. The `hansard_senti_pre_V21` dataset contains 2,977,461 speeches and 413,044,716 words. It can be accessed through [Zenodo](https://zenodo.org/record/579712), and is distributed under a Creative Commons 4.0 BY-SA licence. The latest version, V2.1, includes includes an additional sentiment library, resulting in six different libraries, all using the same methods of calculation. Several duplicate speeches were also identified and removed. It also includes all speeches up to the dissolution of parliament for the 2017 General Election. [Click here]({{ site.url }}/projects/datasets/hansard-data) for more details, or download the data from [Zenodo](https://doi.org/10.5281/zenodo.780985).

### [Charity Commission Data of All Registered Charities in England]({{ site.url }}/projects/datasets/charity-data)

<span class="fa-stack fa"> <i class="ai ai-open-access ai-2x"></i></span> <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a>

A dataset of information on all registered charities in the England, taken from the Charity Commission monthly release and translated into a more accessible format. [Click here]({{ site.url }}/projects/datasets/charity-data) for more details and to download individual files, or [download the most recent complete release](https://shiny.evanodell.com/charity-data/charity-register-2017-07.zip).
