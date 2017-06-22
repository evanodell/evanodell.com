---
layout: page
title: Hansard Speeches and Sentiment
comments: true
---
A public dataset of speeches in the Hansard. The dataset provides information on every speech made in the House of Commons between the parliament returned from the 1979 general election and the dissolution of parliament for the 2017 general election, with information on the speaking MP, their party, gender and age at the time of the speech. The dataset also includes all speeches made from 1936 to the dissolution of parliament for the 1979 general election. The post-1979 election dataset is labelled `senti_post_v2` and the pre-1979 election dataset is labelled `senti_pre_v2`.

The `senti_post_v2` dataset contains 2,234,229 speeches and 404,589,163 words. The `senti_pre_v2` dataset contains 2,977,498 speeches and 413,046,298 words. It can be accessed through [Zenodo](https://zenodo.org/record/579712), and is distributed under a Creative Commons 4.0 BY-SA licence. It is currently available as a CSV file, if you would like other formats please [get in touch](mailto:evanodell91@gmail.com). The latest version, V2.0, includes improved consistency in sentiment calculations, with five different libraries and the same methods of calculation used for each library and corrects several misidentified speeches. It also includes all speeches up to the dissolution of parliament for the 2017 General Election.

Note that these files are UTF-8 encoded, and when I've opened them on a Windows computer there have been problems with characters not rendering correctly.

## Sentiment Classification Methods

The speeches have been classified for sentiment using a total of four libraries from the R package [`lexicon`](https://cran.r-project.org/package=lexicon) by Tyler Rinker, and one from the [`syuzhet`](https://cran.r-project.org/package=syuzhet) package by Michael Jockers. All classification has used the method in Tyler Rinker's [`sentimentr`](https://cran.r-project.org/package=sentimentr) package. The libraries are:

1. The [AFINN](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) library by Finn Årup Nielsen, labelled `afinn`. The AFINN library was accessed through Tyler Rinker's [`syuzhet`](https://cran.r-project.org/package=syuzhet) package.

2. A variant of the [syuzhet](https://cran.r-project.org/package=syuzhet) library by Matthew Jockers, included in the [`lexicon`](https://cran.r-project.org/package=lexicon) package, labelled `jockers`.

4. The [NRC Word-Emotion Association Lexicon](http://saifmohammad.com/WebPages/lexicons.html), library by Saif M. Mohammad and Peter D. Turney, labelled `nrc`. The NRC library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package.

5. The [Sentiwords](http://sentiwordnet.isti.cnr.it/) library, created by Stefano Baccianella, Andrea Esuli, and Fabrizio Sebastiani, labelled `sentiwords`. The library was accessed through the [`lexicon`](https://cran.r-project.org/package=lexicon) package.

5. The [Opinion Mining, Sentiment Analysis and Opinion Spam Detection](https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html
) dataset by Bing Liu, Minqing Hu and Junsheng Cheng, labelled `hu`. The library was access through the [`lexicon`](https://cran.r-project.org/package=lexicon) package.

## Summary Statistics

I have produced [summary statistics](./hansard_summary_stats.xlsx) of mean sentiment and speech length, for each [MP](./mp_senti_mean.csv), and by [party](./party_senti_mean.csv), [party group](./party_group_senti_mean.csv), [government or opposition status](./gov_senti_mean.csv) and [gender](./gender_senti_mean.csv). Download all five tables in one [XLSX workbook](./hansard_summary_stats.xlsx).

## Dataset Variables

The `senti_post_v2` and `senti_pre_v2` datasets have slightly different variables, as there is more information available for all post-1979 MPs, and that is included in `senti_post_v2`.

### `senti_post_v2` Dataset Variables

| Variable | Description | Data Type (R) |
|------------------|--------------|----------------|
 `id` | ID for each speech, corresponding to the parlparse ID | character |
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
 `word_count` | The word count of the speech | numeric |
 `speech_date` | The date the speech was made | date |
 `time` | The time the speech was made (not consistently available), stored as a character vector | character |
 `url` | The URL of the speech | character |
 `as_speaker` | If the speaker is the Speaker of the house | Logical |
 `speakerid` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `hansard_membership_id` |One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
 `mnis_id` | The ID used by the Member's Names Information Service | character |
 `age` | Age at time of speech | integer |
 `party_group` | Grouping of political parties| factor |
 `ministry` | Identifier for the government at time of speech | factor |
 `government` | An indicator if the the MP is a member of the governing party (or parties), or in the opposition | factor |
 `proper_name` | The MP's name | character |
 `house_start_date` | The date the MP was first elected to the House of Commons | date |
 `date_of_birth` | MP's date of birth | date |
 `house_end_date` | The date the MP left the House of Commons | date |
 `gender` | One of Male or Female | factor |
 `party` | The political party the MP belonged to at time of speech | character |
 `dods_id` | Dods Monitoring ID| integer |
 `pims_id` | Parliamentary Information Management Services ID |integer |

### `senti_post_v2` Dataset Variables

| Variable | Description | Data Type (R) |
|------------------|--------------|----------------|
`speech` | The actual text of the speech | character |
`id` | ID for each speech, corresponding to the parlparse ID | character |
`hansard_membership_id` |One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`speech_date` | The date the speech was made | date |
`year` | The year a speech was made| integer |
`speakerid` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`person_id` | One of three ID schemes used in the [`parlparse`](https://github.com/mysociety/parlparse) scraper | character |
`colnum` | The column number the speech appears in Hansard publications | integer |
`time` | The time the speech was made (not consistently available), stored as a character vector | character |
`url` | The URL of the speech | character |
`as_speaker` | If the speaker is the Speaker of the house | Logical |
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
`word_count` | The word count of the speech | numeric |

## Methodology

The [parlparse](https://github.com/mysociety/parlparse) project provides scraped xml files of Hansard debate going back to 1936, and assigns an ID to each speaker. However, I could not find where the IDs assigned are linked to other information, such as constituencies or parties, or the MNIS ID system used by parliament. Long-serving MPs may also have dozens of these IDs assigned to them, and they are not consistently linked together. There are also substantial numbers of speeches where there is no ID assigned a speaker, and they are classified as 'unknown'. I created a table with every possible combination of name and ID, and matched the speakers in that table to their MNIS ID, using a mixture of exact string, approximate string and manual matching. The information in this table was then matched to the complete list of speech IDs. In the case of commonly used names (e.g. the two Labour MPs named John Smith who were both members of the house between 1989 and 1992) I manually identified which MP was actually speaking by locating adjacent Hansard records where their full name, constituency or ministerial title was used. In a handful of cases I had to use the content of their speech and any adjacent speeches to provide further clues to an MPs identity.

The code and matching data used to generate this dataset is available on [Github](https://github.com/EvanOdell/hansard-data).

## Notes

Sarah Olney (mnis_id 4591) does not have a birth date listed in the Members Names Information Service, and I have been unable to locate her date of birth elsewhere, only the year of birth. Her birthdate is, as a consequence, listed as 1977-01-01, this will be amended to the correct month and day when her biography is updated.

The data used to create this dataset was taken from the [parlparse](https://github.com/mysociety/parlparse) project operated by [They Work For You](https://www.theyworkforyou.com/) and supported by [mySociety](https://www.mysociety.org/).

The dataset is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a>

The code included in this repository is licensed under an [MIT license](https://github.com/EvanOdell/hansard-speeches-and-sentiment/blob/master/LICENSE).

Please contact me if you find any errors in the dataset. The integrity of the public Hansard record is questionable at times, and while I have improved it, the data is presented 'as is'.

## Citing this dataset

Please cite this dataset as:

Odell, Evan. (2017). 'Hansard Speeches and Sentiment V2.0 [Data set].' [http://doi.org/10.5281/zenodo.579712](http://doi.org/10.5281/zenodo.579712).

The DOI is *10.5281/zenodo.579712*

## References

Baccianella, Stefano, Andrea Esuli, and Fabrizio Sebastiani. 'SentiWordNet 3.0: An Enhanced Lexical Resource for Sentiment Analysis and Opinion Mining.' In LREC, 10:2200–2204, 2010. [http://nmis.isti.cnr.it/sebastiani/Publications/LREC10.pdf](http://nmis.isti.cnr.it/sebastiani/Publications/LREC10.pdf).

Hu, Minqing, and Bing Liu. 'Mining and Summarizing Customer Reviews'. In Proceedings of the Tenth ACM SIGKDD International Conference on Knowledge Discovery and Data Mining, 168–77. ACM, 2004. [http://dl.acm.org/citation.cfm?id=1014073](http://dl.acm.org/citation.cfm?id=1014073).

Jockers, Matthew L. Syuzhet: Extract Sentiment and Plot Arcs from Text, 2015. [https://github.com/mjockers/syuzhet](https://github.com/mjockers/syuzhet).

Mohammad, Saif M., and Peter D. Turney. 'Crowdsourcing a Word–emotion Association Lexicon. Computational Intelligence 29, no. 3 (2013): 436–65.

Nielsen, Finn Årup. 'A New ANEW: Evaluation of a Word List for Sentiment Analysis in Microblogs'. CoRR abs/1103.2903 (2011). [http://arxiv.org/abs/1103.2903](http://arxiv.org/abs/1103.2903).

Rinker, Tyler W. Lexicon: Lexicon Data. Buffalo, New York: University at Buffalo/SUNY, 2017. [http://github.com/trinker/lexicon](http://github.com/trinker/lexicon).

———. Sentimentr: Calculate Text Polarity Sentiment. Buffalo, New York: University at Buffalo/SUNY, 2017. [http://github.com/trinker/sentimentr](http://github.com/trinker/sentimentr).
