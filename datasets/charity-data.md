---
layout: page
title: Charity Comission Data
use-site-title: true
---

Every month or so the Charity Commission publishes a [database](http://data.charitycommission.gov.uk/) with information on every registered charity in England. However, it is released as a series of BCP files, which are helpful if you're using a Microsoft database, but require some work if you're trying to access this information using other programs, such as Postgres or MYSQL. The NCVO [published a guide to converting this data into CSV files](https://data.ncvo.org.uk/a/almanac16/how-to-create-a-database-for-charity-commission-data/), but their conversion method leaves a bit to be desired, as it does not find and correct all escape characters in the BCP files, which can cause problems for some databases, including Postgres. So I've decided to distribute the CSV files myself, and I'll be keeping this page as up to date as possible, given the occasionally erratic release schedule and my own sometimes limited time.

Note that `extract_proper_object`, marked with an asterix, has been concatenated from `extract_object`, with the complete text of a charity's object in a single row in a table.

For details on the data itself, please see [this table from the Charity Commission](http://data.charitycommission.gov.uk/data-definition.aspx). Do get in touch if you have any questions, comments or concerns about this data. This data is made available under the terms of the [Open Government Licence 3.0](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

### [Download all 15 tables as a single ZIP file](https://shiny.evanodell.com/charity-data/charity_register-2017-05.zip)

### Download individual CSV files from the May 2017 data release:

[extract_acct_submit](https://shiny.evanodell.com/charity-data/extract_acct_submit-2017-05.csv)

[extract_aoo_ref](https://shiny.evanodell.com/charity-data/extract_aoo_ref-2017-05.csv)

[extract_ar_submit](https://shiny.evanodell.com/charity-data/extract_ar_submit-2017-05.csv)

[extract_charity](https://shiny.evanodell.com/charity-data/extract_charity-2017-05.csv)

[extract_charity_aoo](https://shiny.evanodell.com/charity-data/extract_charity_aoo-2017-05.csv)

[extract_class](https://shiny.evanodell.com/charity-data/extract_class-2017-05.csv)

[extract_class_ref](https://shiny.evanodell.com/charity-data/extract_class_ref-2017-05.csv)

[extract_financial](https://shiny.evanodell.com/charity-data/extract_financial-2017-05.csv)

[extract_main_charity](https://shiny.evanodell.com/charity-data/extract_main_charity-2017-05.csv)

[extract_name](https://shiny.evanodell.com/charity-data/extract_name-2017-05.csv)

[extract_partb](https://shiny.evanodell.com/charity-data/extract_partb-2017-05.csv)

[extract_proper_object](https://shiny.evanodell.com/charity-data/extract_proper_object-2017-05.csv)*

[extract_registration](https://shiny.evanodell.com/charity-data/extract_registration-2017-05.csv)

[extract_remove_ref](https://shiny.evanodell.com/charity-data/extract_remove_ref-2017-05.csv)

[extract_trustee](https://shiny.evanodell.com/charity-data/extract_trustee-2017-05.csv)
