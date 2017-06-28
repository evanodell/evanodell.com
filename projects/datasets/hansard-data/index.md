---
layout: page
title: Hansard Speeches and Sentiment V2.1
comments: true
---

## [Download from Zenodo](https://doi.org/10.5281/zenodo.780985)

A public dataset of speeches in the Hansard, stored as a [tibble](https://cran.r-project.org/package=tibble) class in RDS files, for the [R programming language](https://cran.r-project.org/), and also available in CSV format.[^1] The dataset provides information on every speech made in the House of Commons between the parliament returned from the 1979 general election and the dissolution of parliament for the 2017 general election, with information on the speaking MP, their party, gender, birthdate[^2], starting and finishing dates as an MP, and age at the time of the speech. The dataset also includes all speeches made from 1936 to the dissolution of parliament for the 1979 general election. The post-1979 election dataset is labelled `hansard_senti_post_V21` and the pre-1979 election dataset is labelled `hansard_senti_pre_V21`.

Documentation on previous versions of this dataset can be found [here](https://evanodell.com/projects/datasets/hansard-data/archive/v2)

The `hansard_senti_post_V21` dataset contains 2,234,059 speeches and 404,581,972 words. The `hansard_senti_pre_V21` dataset contains 2,977,461 speeches and 413,044,716 words. It can be accessed through [Zenodo](https://zenodo.org/record/579712), and is distributed under a Creative Commons 4.0 BY-SA licence. The latest version, V2.1, includes includes an additional sentiment library, resulting in six different lexical libraries ([see below](/datasets/hansard-data/#sentiment-classification-methods), all using the same methods of calculation. Several duplicate speeches were also identified and removed.

## Changes in V2.1

* Removed 138 duplicate entries from `hansard_senti_post_V21`, based on them having the same parlpase ID, `speech` and `mnis_id`.

* Removed 32 empty speeches from `hansard_senti_post_V21`.

* Removed 37 duplicate entries from `hansard_senti_post_V21`, based on them having the same parlpase ID and `speech`.

* Removed 115 empty speeches from `hansard_senti_pre_V21`.

* Renamed `id` to `pp_id` to indicate where it came from.

* Added additional sentiment calculation method based on [this paper](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0168843#sec008) by <a href="#rheault2016">Rheault <i>et al.</i> (2016)</a>.

## Sentiment Classification Methods

The speeches have been classified for sentiment using a total of four libraries from the R package [`lexicon`](https://cran.r-project.org/package=lexicon) by Tyler Rinker, one from the [`syuzhet`](https://cran.r-project.org/package=syuzhet) package by Michael Jockers, and [one by Ludovic Rheault, Kaspar Beelen, Christopher Cochrane and Graeme Hirst](https://github.com/lrheault/emotion). All classification has used the method in Tyler Rinker's [`sentimentr`](https://cran.r-project.org/package=sentimentr) package. The libraries are:

1. The [AFINN](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) library, labelled `afinn`. The AFINN library was accessed through Matthew Jockers's [`syuzhet`](https://cran.r-project.org/package=syuzhet) package. {% cite nielsen2011 --file hansard-data %}.

2. A variant of the [syuzhet](https://cran.r-project.org/package=syuzhet) library, included in the [`lexicon`](https://cran.r-project.org/package=lexicon) package, labelled `jockers`. {% cite jockers2015 --file hansard-data %}.

4. The [NRC Word-Emotion Association Lexicon](http://saifmohammad.com/WebPages/lexicons.html), labelled `nrc`. The NRC library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package. {% cite mohammad2013 --file hansard-data %}.

5. The [Sentiwords](http://sentiwordnet.isti.cnr.it/) library, labelled `sentiwords`. The library was accessed through the [`lexicon`](https://cran.r-project.org/package=lexicon) package. {% cite baccianella2010 --file hansard-data %}.

5. The [Opinion Mining, Sentiment Analysis and Opinion Spam Detection](https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html) library, labelled `hu`. The library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package. {% cite hu2004 --file hansard-data %}.

6. A modified version of the [unnamed lexicon](https://github.com/lrheault/emotion) from {% cite rheault2016 --file hansard-data %}, labelled `rheault`. As the method in `sentimentr` does not use distinguish between the same word that can occupy multiple lexical categories,[^3] I used the average polarity score assigned to such words.[^4]

## Summary Statistics

I have produced [summary statistics](./hansard-summary-stats-v21.xlsx) with the mean and standard deviation of sentiment scores, average speech length, and sentiment score means and standard deviations weighted by the length of the speech. These are available for each [MP](./mp-senti-mean-v21.csv), and by [party](./party-senti-mean-v21.csv), [party group](./party-group-senti-mean-v21.csv), [government or opposition status](./gov-senti-mean-v21.csv) and [gender](./gender-senti-mean-v21.csv). Download all five tables in one [XLSX workbook](./hansard-summary-stats-v21.xlsx).

## Dataset Variables

The `hansard_senti_post_V21` and `hansard_senti_pre_V21` datasets have slightly different variables, as there is more information available for all post-1979 MPs, and that is included in `hansard_senti_post_V21`.

### `hansard_senti_post_V21` Dataset Variables

| Variable | Description | Data Type (R) |
|------------------|--------------|----------------|
 `pp_id` | ID for each speech, corresponding to the parlparse ID | character |
 `eo_id` | ID number for each speech, as assigned by me, to accommodate situations where the same parlparse ID was assigned to distinct speeches | character |
 `speech` | The actual text of the speech | character |
 `afinn_sentiment` | The `afinn` sentiment score| numeric |
 `afinn_sd` | The standard deviation of the `afinn` score | numeric |
 `jockers_sentiment` | The `jockers` sentiment score | numeric |
 `jockers_sd` | The standard deviation of the `jockers` score | numeric |
 `nrc_sentiment` | The `nrc` sentiment score | numeric |
 `nrc_sd` | The standard deviation of the `nrc` score | numeric |
 `sentiword_sentiment` | The `sentiword` sentiment score | numeric |
 `sentiword_sd` | The standard deviation of the `sentiword` score | numeric |
 `hu_sentiment` | The `hu` sentiment score | numeric |
 `hu_sd` | The standard deviation of the `hu` score | numeric |
 `rheault_sentiment` | The `rheault` sentiment score | numeric |
 `rheault_sd` | The standard deviation of the `rheault` score | numeric |
 `word_count` | The word count of the speech | numeric |
 `speech_date` | The date the speech was made | date |
 `year` | The year the speech was made | numeric |
 `time` | The time the speech was made (not consistently available), stored as a character vector; e.g. '16:24:00' | character |
 `url` | The URL of the speech | character |
 `as_speaker` | If the speaker is the Speaker of the house | Logical |
 `speakerid` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `hansard_membership_id` |One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `mnis_id` | The ID used by the Member's Names Information Service. This ID remains constant, even if an MP changes parties, seats, etc. | character |
 `dods_id` | Dods Monitoring ID| integer |
 `pims_id` | Parliamentary Information Management Services ID |integer |
 `proper_name` | The MP's name | character |
 `party_group` | Grouping of political parties. Labour and Labour Co-op MPs are listed as 'Labour', Conservative MPs as 'Conservative', Liberal Democrats, Social Democrats and Liberals are all listed as 'Liberal Democrat', and all other MPs are listed as 'Other'. | factor |
 `party` | The political party the MP belonged to at time of speech | character |
 `government` | An indicator if the the MP is a member of the governing party (or parties), or in the opposition | factor |
 `age` | Age at time of speech | integer |
 `gender` | One of Male or Female | factor |
 `date_of_birth` | MP's date of birth | date |
 `house_start_date` | The date the MP was first elected to the House of Commons | date |
 `house_end_date` | The date the MP left the House of Commons | date |
 `ministry` | Identifier for the government at time of speech | character |

### `hansard_senti_pre_V21` Dataset Variables

| Variable | Description | Data Type (R) |
|------------------|--------------|----------------|
`pp_id` | ID for each speech, corresponding to the parlparse ID | character |
`eo_id` | ID number for each speech, as assigned by me, to accommodate situations where the same parlparse ID was assigned to distinct speeches | character |
`speech` | The actual text of the speech | character |
`speaker_name` | The name of the speaker, as listed in the Hansard record | character |
`afinn_sentiment` | The `afinn` sentiment score| numeric |
`afinn_sd` | The standard deviation of the `afinn` score | numeric |
`jockers_sentiment` | The `jockers` sentiment score | numeric |
`jockers_sd` | The standard deviation of the `jockers` score | numeric |
`nrc_sentiment` | The `nrc` sentiment score | numeric |
`nrc_sd` | The standard deviation of the `nrc` score | numeric |
`sentiword_sentiment` | The `sentiword` sentiment score | numeric |
`sentiword_sd` | The standard deviation of the `sentiword` score | numeric |
`hu_sentiment` | The `hu` sentiment score | numeric |
`hu_sd` | The standard deviation of the `hu` score | numeric |
`rheault_sentiment` | The `rheault` sentiment score | numeric |
`rheault_sd` | The standard deviation of the `rheault` score | numeric |
`word_count` | The word count of the speech | numeric |
`speech_date` | The date the speech was made | date |
`year` | The year the speech was made | numeric |
`time` | The time the speech was made (not consistently available), stored as a character vector; e.g. '16:24:00' | character |
`url` | The URL of the speech | character |
`as_speaker` | If the speaker is the Speaker of the house | Logical |
`speakerid` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`hansard_membership_id` |One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |

## Methodology

The [parlparse](https://github.com/mysociety/parlparse) project provides scraped xml files of Hansard debate going back to 1936, and assigns an ID to each speaker. However, I could not find where the IDs assigned are linked to other information, such as constituencies or parties, or the MNIS ID system used by parliament. Long-serving MPs may also have dozens of these IDs assigned to them, and they are not consistently linked together. There are also substantial numbers of speeches where there is no ID assigned a speaker, and they are classified as 'unknown'. I created a table with every possible combination of name and ID, and matched the speakers in that table to their MNIS ID, using a mixture of exact string, approximate string and manual matching. The information in this table was then matched to the complete list of speech IDs. In the case of commonly used names (e.g. the two Labour MPs named John Smith who were both members of the house between 1989 and 1992) I manually identified which MP was actually speaking by locating adjacent Hansard records where their full name, constituency or ministerial title was used. In a handful of cases I had to use the content of their speech and any adjacent speeches to provide further clues to an MPs identity.

The code and matching data used to generate this dataset is available on [Github](https://github.com/EvanOdell/hansard-data).

The data used to create this dataset was taken from the [parlparse](https://github.com/mysociety/parlparse) project operated by [They Work For You](https://www.theyworkforyou.com/) and supported by [mySociety](https://www.mysociety.org/).

The dataset is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png"/></a>

The code included in this repository is licensed under an [MIT license](https://github.com/EvanOdell/hansard-speeches-and-sentiment/blob/master/LICENSE).

Please [contact me](mailto:evanodell91@gmail.com) if you find any errors in the dataset. The integrity of the public Hansard record is questionable at times, and while I have improved it, the data is presented 'as is'.

## Citing this dataset

Please cite this dataset as:

Odell, Evan. (2017). 'Hansard Speeches and Sentiment V2.1 [Dataset].' [http://doi.org/10.5281/zenodo.820163](http://doi.org/10.5281/zenodo.820163).

The DOI of V2.1 is *10.5281/zenodo.820163* The DOI for all versions is [*10.5281/zenodo.780985*](https://doi.org/10.5281/zenodo.780985), and will always resolve to the latest version.

## References
{% bibliography --file hansard-data %}

## Notes

[^1]: If you would like other formats please [get in touch](mailto:evanodell91@gmail.com).

[^2]: Sarah Olney (mnis_id 4591) does not have a birth date listed in the Members Names Information Service, and I have been unable to locate her date of birth elsewhere, only the year of birth. Her birthdate is, as a consequence, listed as 1977-01-01, this will be amended to the correct month and day if her biography is updated.

[^3]: e.g. 'bid' can be both a noun, as in a bid submitted in response to a project tender, and a verb, as in to bid for an item at an auction

[^4]: <a href="#rheault2016">Rheault <i>et al.</i> (2016)</a> have a more complex method of calculating polarity that accounts for lexical types. See their paper and the [related repository](https://github.com/lrheault/emotion) for details.
