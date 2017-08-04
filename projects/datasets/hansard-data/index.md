---
layout: page
title: Hansard Speeches and Sentiment V2.4
comments: true
date: 2017-07-18
---

## [Download from Zenodo](http:doi.org/10.5281/zenodo.838020)

A public dataset of speeches in the Hansard, stored as a [tibble](https://cran.r-project.org/package=tibble) class in RDS files, for the [R programming language](https://cran.r-project.org/).[^1] House of Commons between the parliament returned from the 1979 general election and the parliamentary summer recess starting on 2017-07-20, with information on the speaking MP, their party, gender, birth date[^2], starting and finishing dates as an MP, and age at the time of the speech. The dataset also includes all speeches made from 1936 to the dissolution of parliament for the 1979 general election. The post-1979 election dataset is labelled `hansard_senti_post_V24` and the pre-1979 election dataset is labelled `hansard_senti_pre_V24`. Both datasets are encoded as UTF-8.

Documentation for previous versions of the _Hansard Speeches and Sentiment_ dataset can be found [here](https://evanodell.com/projects/datasets/hansard-data/archive/)

The `hansard_senti_post_V24` dataset contains 2,169,348 speeches and 373,323,215 words. The `hansard_senti_pre_V24` dataset contains 2,977,461 speeches and 406,062,364 words. It can be accessed through [Zenodo](https://zenodo.org/record/579712), and is distributed under a Creative Commons 4.0 BY-SA license. The latest version, V2.4 corrects errors introduced by Regex in V2.2, improves encoding issues in speeches, corrects several spelling mistakes in the hansard record, removes duplicate speeches, updates some MPs' names, and includes speeches up to the summer recess starting on 2017-07-20. For details on how speech sentiments were classified, [see below](/datasets/hansard-data/#sentiment-classification-methods).

## Changes in V2.4

* There is now coverage from the 1979 general election until the summer recess starting on 2017-07-20.

* The error correcting script used in V2.2 was producing errors of its own. This has now been fixed.

* Duplicate speeches identified and removed, by only using the latest version of ParlParse scrapes. Previous versions of this dataset used multiple parlparse versions and then removed duplicates based on similarity, but this did not remove all duplicate speeches.

* Changing several MPs names from their legal name to the name they are commonly known by.
 - "J. Enoch Powell" to "Enoch Powell"
 - "W. R. Rees-Davies" to "William Rees-Davies"
 - "J. Dickson Mabon" to "Dickson Mabon"
 - "J. D. Concannon" to "Don Concannon"
 - "R. B. Cant" to "Robert Cant"
 - "R. C. Mitchell" to "Bob Mitchell"
 - "Thomas Simpson" to "David Simpson"
 - "Edward Balls" to "Ed Balls"

* Changed the names of Siôn Simon and Siân James to "Sion Simon" and "Sian James" to prevent encoding errors

* Correction of several identified spelling mistakes in the Hansard record
 - Double lines in the middle of speeches are corrected to spaces.
 - Changed "orginal" to "original".
 - Changed "playa" to " play a".
 - Changed "adminster" to  "administer".
 - Changed "alowed" to  "allowed".
 - Changed "assesment " to  "assessment".
 - Changed "concensus" to  "consensus".
 - Changed "damagiang" to  "damaging".
 - Changed "dfficulty " to  "difficult".
 - Changed "enderly" to  "elderly".
 - Changed "entited" to  "entitled".
 - Changed "govenment" to  "government".
 - Changed "housng" to  "housing".
 - Changed "improvment" to  "improvement".
 - Changed "introducting" to  "introducing".
 - Changed "poli- cies" to  "policies".
 - Changed "potentional" to  "potential".
 - Changed "prefessional" to  "professional".
 - Changed "reduncancy" to  "redundancy".
 - Changed "rsources" to  "resources".
 - Changed "Secretrary" to  "Secretary".
 - Changed "somehing" to  "something".
 - Changed "stateament" to  "statement".
 - Changed "unlikey" to  "unlikely".
 - Changed "unplublicised" to  "unpublicised".
 - Changed "V. A. T." to  "VAT".
  - Changed "O. A. P. s." to  "OAPs".
 - Changed "wil" to  "will".
 - Changed "·" to ".".
 - Changed "½" to ".5".
 - Changed "¼" to ".25".
 - Changed "¾" to ".75".
 - Changed "inc rease" to  "increase".

## Sentiment Classification Methods

The speeches have been classified for sentiment using a total of three libraries from the R package [`lexicon`](https://cran.r-project.org/package=lexicon) by Tyler Rinker, one from the [`syuzhet`](https://cran.r-project.org/package=syuzhet) package by Michael Jockers, and [one by Ludovic Rheault, Kaspar Beelen, Christopher Cochrane and Graeme Hirst](https://github.com/lrheault/emotion). All classification has used the method in Tyler Rinker's [`sentimentr`](https://cran.r-project.org/package=sentimentr) package {% cite rinker2017 --file hansard-data %}. The libraries are:

1. The [AFINN](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) library, labelled `afinn`. The AFINN library was accessed through Matthew Jockers's [`syuzhet`](https://cran.r-project.org/package=syuzhet) package. {% cite nielsen2011 --file hansard-data %}.

2. A variant of the [syuzhet](https://cran.r-project.org/package=syuzhet) library, included in the [`lexicon`](https://cran.r-project.org/package=lexicon) package, labelled `jockers`. {% cite jockers2015 --file hansard-data %}.

3. The [NRC Word-Emotion Association Lexicon](http://saifmohammad.com/WebPages/lexicons.html), labelled `nrc`. The NRC library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package. {% cite mohammad2013 --file hansard-data %}.

4. The [Opinion Mining, Sentiment Analysis and Opinion Spam Detection](https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html) library, labelled `huliu`. The library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package. {% cite hu2004 --file hansard-data %}.

5. A modified version of the [unnamed lexicon](https://github.com/lrheault/emotion) from [this paper](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0168843), labelled `rheault`. As the method in `sentimentr` does not use distinguish between the same word that can occupy multiple lexical categories,[^3] I used the average polarity score assigned to such words.[^4] {% cite rheault2016 --file hansard-data %}.

## Summary Statistics

I have produced [summary statistics of the `hansard_senti_post_V24`](./hansard-summary-stats-V24.xlsx) with the weighted (by speech length) and unweighted mean and standard deviation of sentiment scores, and average and total speech word counts. These are available by:
* [MP](./mp-senti-mean-V24.csv)
* [party](./party-senti-mean-V24.csv)
* [party group](./party-group-senti-mean-V24.csv)
* [government or opposition status](./gov-senti-mean-V24.csv)
* [gender](./gender-senti-mean-V24.csv)
* [month](./month-senti-mean-V24.csv)
* [quarter](./quarter-senti-mean-V24.csv)
* [year](./year-senti-mean-V24.csv)
* [ministry](./ministry-senti-mean-V24.csv)[^5]

Download all nine tables in one [XLSX workbook](./hansard-summary-stats-V24.xlsx). Each table contains the following variables:

| Variable | Description |
|-----------------------|---------------------------------|
`afinn_sentiment_avg` | Average sentiment, `afinn` library |
`afinn_sd_avg` | Average sentiment standard deviation, `afinn` library |
`afinn_sentiment_wtd` | Average sentiment, weighted by speech length, `afinn` library |
`afinn_sd_wtd` | Average sentiment standard deviation, weighted by speech length, `afinn` library |
`jockers_sentiment_avg` | Average sentiment, `jockers` library |
`jockers_sd_avg` | Average sentiment standard deviation, `jockers` library |
`jockers_sentiment_wtd` | Average sentiment, weighted by speech length, `jockers` library |
`jockers_sd_wtd` | Average sentiment standard deviation, weighted by speech length, `jockers` library |
`nrc_sentiment_avg` | Average sentiment, `nrc` library |
`nrc_sd_avg` | Average sentiment standard deviation, `nrc` library |
`nrc_sentiment_wtd` | Average sentiment, weighted by speech length, `nrc` library |
`nrc_sd_wtd` | Average sentiment standard deviation, weighted by speech length, `nrc` library |
`huliu_sentiment_avg` | Average sentiment, `huliu` library |
`huliu_sd_avg` | Average sentiment standard deviation, `huliu` library |
`huliu_sentiment_wtd` | Average sentiment, weighted by speech length, `huliu` library |
`huliu_sd_wtd` | Average sentiment standard deviation, weighted by speech length, `huliu` library |
`rheault_sentiment_avg` | Average sentiment, `rheault` library |
`rheault_sd_avg` | Average sentiment standard deviation, `rheault` library |
`rheault_sentiment_wtd` | Average sentiment, weighted by speech length, `rheault` library |
`rheault_sd_wtd` | Average sentiment standard deviation, weighted by speech length, `rheault` library |
`tot_speeches` | Total number of speeches |
`tot_words` | Total number of words |
`avg_speech_length` | Average number of words per speech |

## Dataset Variables

The `hansard_senti_post_V24` and `hansard_senti_pre_V24` datasets have slightly different variables, as there is more information available for all post-1979 MPs, and that is included in `hansard_senti_post_V24`.

### `hansard_senti_post_V24` Dataset Variables

| Variable | Description | Data Type |
|------------------|--------------|------------------|
 `pp_id` | ID for each speech, corresponding to the parlparse ID | character |
 `eo_id` | ID number for each speech, as assigned by me, to accommodate situations where the same parlparse ID was assigned to distinct speeches | character |
 `speech` | The actual text of the speech | character |
 `afinn_sentiment` | The `afinn` sentiment score| numeric |
 `afinn_sd` | The standard deviation of the `afinn` score | numeric |
 `jockers_sentiment` | The `jockers` sentiment score | numeric |
 `jockers_sd` | The standard deviation of the `jockers` score | numeric |
 `nrc_sentiment` | The `nrc` sentiment score | numeric |
 `nrc_sd` | The standard deviation of the `nrc` score | numeric |
 `huliu_sentiment` | The `huliu` sentiment score | numeric |
 `huliu_sd` | The standard deviation of the `huliu` score | numeric |
 `rheault_sentiment` | The `rheault` sentiment score | numeric |
 `rheault_sd` | The standard deviation of the `rheault` score | numeric |
 `word_count` | The word count of the speech | numeric |
 `speech_date` | The date the speech was made | date |
 `year` | The year the speech was made | numeric |
 `time` | The time the speech was made (not consistently available), stored as a character vector; e.g. '16:24:00' | character |
 `url` | The URL of the speech | character |
 `as_speaker` | If the speaker is the Speaker of the house | Logical |
 `speaker_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `hansard_membership_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
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

## Notes on the `hansard_senti_pre_V24` Dataset

The historical Hansard record often uses inconsistent and confusing naming conventions for MPs. I have not matched pre-1979 election MPs to their MNIS IDs, as not all pre-1979 election MPs will have an MNIS ID to be matched to, and the naming conventions appear to be particularly confusing. Long term I hope to develop a convention for a unique ID code for MPs that can identify them, their party, their constituency and any office they held at the time, but that is a project without a timetable. If you want to contribute to that project please [get in touch](mailto:evanodell91@gmail.com).

MPs' MNIS IDs, names, birthdates, start and end dates as an MP is [available here](names-V24.csv).

### `hansard_senti_pre_V24` Dataset Variables

| Variable | Description | Data Type |
|------------------|--------------|------------------|
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
`huliu_sentiment` | The `huliu` sentiment score | numeric |
`huliu_sd` | The standard deviation of the `huliu` score | numeric |
`rheault_sentiment` | The `rheault` sentiment score | numeric |
`rheault_sd` | The standard deviation of the `rheault` score | numeric |
`word_count` | The word count of the speech | numeric |
`speech_date` | The date the speech was made | date |
`year` | The year the speech was made | numeric |
`time` | The time the speech was made (not consistently available), stored as a character vector; e.g. '16:24:00' | character |
`url` | The URL of the speech | character |
`as_speaker` | If the speaker is the Speaker of the house | Logical |
`speaker_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`hansard_membership_id` |One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |

## Methodology

The [parlparse](https://github.com/mysociety/parlparse) project provides scraped xml files of Hansard debate going back to 1936, and assigns an ID to each speaker. However, I could not find where the IDs assigned are linked to other information, such as constituencies or parties, or the MNIS ID system used by parliament. Long-serving MPs may also have dozens of these IDs assigned to them, and they are not consistently linked together. There are also substantial numbers of speeches where there is no ID assigned a speaker, and they are classified as 'unknown'. I created a table with every possible combination of name and `speaker_id`, `person_id` and `hansard_membership_id`, and matched the speakers in that table to their MNIS ID, using a mixture of exact string, manually checked approximate strings and manual matching/hand coding. The information in this table was then matched to the complete list of speech IDs. In the case of common names,[^6] I manually identified which MP was actually speaking by locating adjacent Hansard records where their full name, constituency or ministerial title was used. In a handful of cases I had to use the content of their speech and any adjacent speeches to provide further clues to an MPs identity.

### Licences and Code

The code and matching data used to generate this dataset is available on [Github](https://github.com/EvanOdell/hansard-data).

The data used to create this dataset was taken from the [parlparse](https://github.com/mysociety/parlparse) project operated by [They Work For You](https://www.theyworkforyou.com/) and supported by [mySociety](https://www.mysociety.org/).

The dataset is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png"/></a>

The code included in the GitHub repository used to create this dataset is licensed under an [MIT license](https://github.com/EvanOdell/hansard-speeches-and-sentiment/blob/master/LICENSE).

Please [contact me](mailto:evanodell91@gmail.com) if you find any errors in the dataset. The integrity of the public Hansard record is questionable at times, and while I have improved it, the data is presented 'as is'.

## Citing this dataset

Please cite this dataset as:

Odell, Evan. (2017). "Hansard Speeches and Sentiment V2.4 [Dataset]." [10.5281/zenodo.838020](http:doi.org/10.5281/zenodo.838020).

The DOI of V2.4 is *10.5281/zenodo.838020*. The DOI for all versions is [*10.5281/zenodo.780985*](https://doi.org/10.5281/zenodo.780985), and will always resolve to the latest version of the Hansard Speeches and Sentiment dataset.

## References
{% bibliography --cited --file hansard-data %}

## Notes

[^1]: If you would like other formats please [get in touch](mailto:evanodell91@gmail.com).

[^2]: Sarah Olney (mnis_id 4591) does not have a birth date listed in the Members Names Information Service, and I have been unable to locate her date of birth elsewhere, only the year of birth. Her birthdate is, as a consequence, listed as 1977-01-01, this will be amended to the correct month and day if her biography is updated. Most of the 2017 general election intake do not have listed birthdates, and their age is not listed as a result. This will be updated in future versions of this data set.

[^3]: e.g. 'bid' can be both a noun, as in a bid submitted in response to a project tender, and a verb, as in to bid for an item at an auction

[^4]: <a href="#rheault2016">Rheault <i>et al.</i> (2016)</a> have a more complex method of calculating polarity that accounts for lexical types. See their paper and the [related repository](https://github.com/lrheault/emotion) for details.

[^5]: As in for each new Prime Minister and/or general election.

[^6]: e.g. the two Labour MPs named John Smith who were both members of the house between 1989 and 1992.
