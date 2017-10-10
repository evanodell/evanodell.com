---
layout: page
title: Charity Comission Data
use-site-title: true
---

Every month or so the Charity Commission publishes a [database](http://data.charitycommission.gov.uk/) with information on every registered charity in England. However, it is released as a series of BCP files, which are helpful if you're using a Microsoft database, but require some work if you're trying to access this information using other programs, such as Postgres or MYSQL. The NCVO [published a guide to converting this data into CSV files](https://data.ncvo.org.uk/a/almanac16/how-to-create-a-database-for-charity-commission-data/), but their conversion method leaves a bit to be desired, as it does not find and correct all escape characters in the BCP files, which can cause problems for some databases, including Postgres. So I've decided to distribute the CSV files myself, and I'll be keeping this page as up to date as possible, given the occasionally erratic release schedule and my own sometimes limited time.

Note that `extract-proper-object`, marked with an asterix, has been concatenated from `extract-object`, with the complete text of a charity's object in a single row in a table.

For details on the data itself, please see [this table from the Charity Commission](http://data.charitycommission.gov.uk/data-definition.aspx). Do get in touch if you have any questions, comments or concerns about this data. This data is made available under the terms of the [Open Government Licence 3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

### [Download all 15 tables as a single ZIP file](https://shiny.evanodell.com/charity-data/charity-register-2017-09.zip)

### Download individual CSV files from the September 2017 data release:

[extract-acct-submit](https://shiny.evanodell.com/charity-data/extract-acct-submit-2017-09.csv)

[extract-aoo-ref](https://shiny.evanodell.com/charity-data/extract-aoo-ref-2017-09.csv)

[extract-ar-submit](https://shiny.evanodell.com/charity-data/extract-ar-submit-2017-09.csv)

[extract-charity](https://shiny.evanodell.com/charity-data/extract-charity-2017-09.csv)

[extract-charity-aoo](https://shiny.evanodell.com/charity-data/extract-charity-aoo-2017-09.csv)

[extract-class](https://shiny.evanodell.com/charity-data/extract-class-2017-09.csv)

[extract-class-ref](https://shiny.evanodell.com/charity-data/extract-class-ref-2017-09.csv)

[extract-financial](https://shiny.evanodell.com/charity-data/extract-financial-2017-09.csv)

[extract-main-charity](https://shiny.evanodell.com/charity-data/extract-main-charity-2017-09.csv)

[extract-name](https://shiny.evanodell.com/charity-data/extract-name-2017-09.csv)

[extract-partb](https://shiny.evanodell.com/charity-data/extract-partb-2017-09.csv)

[extract-proper-object](https://shiny.evanodell.com/charity-data/extract-proper-object-2017-09.csv)*

[extract-registration](https://shiny.evanodell.com/charity-data/extract-registration-2017-09.csv)

[extract-remove-ref](https://shiny.evanodell.com/charity-data/extract-remove-ref-2017-09.csv)

[extract-trustee](https://shiny.evanodell.com/charity-data/extract-trustee-2017-09.csv)
