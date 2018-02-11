---
title: When politicians discuss disability
date: '2017-03-24'
image: "/img/disability-frequency-example.jpg"
---

How do politicians discuss disability issues? Has this changed over time? When do particular ways of speaking about disability come become popular, or fall out of favour? In an attempt to answer these questions I downloaded everything that has ever been said in the House of Commons from 1936 to the present day and used a computer to count the number of times different words and phrases related to disability are used.

I grouped 23 different disability-relevant phrases into 15 groups. I selected phrases that are likely to be only used in relation to disability issues. This means that words such as 'blind' or 'deaf' cannot be used, as they are frequently used in non-disability discussion; for example, it is easy to imagine an opposition MP saying something like 'this government is deaf to the concerns of ordinary people', without making any reference to deaf/Deaf people. I included several phrases that are considered offensive, and I was glad to see that they are rarely, if ever, used nowadays. The complete list of phrases and their groupings is [below](#word_list).

I counted the number of times of each group of phrases was used in each day of debate in parliament, and averaged over a rolling calendar year. Note that the scale on the chart is a logarithmic scale, which means that each tick mark on the scale is the previous tick mark multiplied by two. This is so that changes in the frequency of relatively uncommon words is easy to see. You can select different phrases to see how frequently they are used, and compare them to other phrases. You can also use the slider bar to adjust which years you would like to include.

<iframe src="https://disabilityrightsuk.shinyapps.io/disability-frequency-druk/" style="border:0px #ffffff none;" name="myiFrame" scrolling="no" marginheight="0px" marginwidth="0px" allowfullscreen="" frameborder="0" height="640px" width="850px"></iframe>

Another notable trend is the increase in the use of 'amputee' in the years following armed conflicts. This is unsurprising, given the high profile of injured soldiers and the often traumatic nature of limb loss in armed conflict, but they make up a very small proportion of amputatees in the UK. Between October 2001 and March 2015 [234 UK service personnel had a limb amputated](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/449400/AnnexA_20150730_DAY-RELEASE_Quarterly_Afghanistan_Iraq_Amputation_Statistics.pdf), while according to Diabetes UK there are [135 amputations a week in England alone](https://www.diabetes.org.uk/about_us/news/more-than-135-diabetes-amputations-every-week/) as a result of diabetes complications. Naseer Ahmad, G Neil Thomas, Paramjit Gill, Colin Chan, and Francesco Torella <span class="citation"></span>found a [rate of 26.3 amputations per 100,000 people aged 50–84 years over a six year period in England](http://journals.sagepub.com/doi/10.1177/0141076814557301).
There are several patterns in the data that I would like to draw your attention to. The first is a very clear rise in the use of 'people with a disability' and similar phrases, instead of 'disabled people'. The popularity of 'person-first' language clearly extends to parliamentarians. Person-first language is not without controversy in the disabled community, as this comment from disability campaigner Clenton Farquharson points out:

{{< tweet 803301978633859073 >}}

There are also very clear spikes in the use of 'paralympics' every four years. The reasons for this, I suppose, are obvious.

## Notes

### Dataset

The [ParlParse](http://parser.theyworkforyou.com/) service, operated by [They Work For You](https://www.theyworkforyou.com/), records everything said in parliament from 1936 to the present day. The full dataset includes 5,440,317 different speeches, of which 438,180 include one or more of the disability phrases searched for.

### Phrases Used

The list of disability-related words and phrases searched for in the Hansard:

<a name="word_list"></a>

*   All Disability
    *   'disability'
*   Disabled People
    *   'disabled person'
    *   'disabled people'
*   Disabled Children
    *   'disabled child'
*   Person/People with Disability
    *   'person with a disability'
    *   'people with a disability'
    *   'people with disabilities'
    *   'person with disabilities'
*   Any Other With Disability [I subtracted mentions of 'Person/People with Disability' and 'Children with Disability' from this total]
    *   'with a disability'
    *   'with disabilities'
*   Disabled Men
    *   'disabled men'
*   Disabled Women
    *   'disabled women'
*   Children with Disability
    *   'child with a disability'
    *   'children with a disability'
    *   'children with disabilities'
    *   'child with disabilities'
*   Independent Living
    *   'independent living'
*   Wheelchair
    *   'wheelchair'
*   Paralympic
    *   'paralympic'
*   Spastic
    *   'spastic'
*   Sub-Normal
    *   'sub-normal'
*   Amputee
    *   'amputee'
*   Retard
    *   'retard'

### Licensing

The source code for this app is available on [Github](https://github.com/EvanOdell/disability-frequency). For assistance, questions or comments please contact [Evan Odell](http://evanodell.com) via [email](mailto:evan.odell@disabilityrightsuk.org) or [Twitter](https://twitter.com/evanodell), or raise an issue on Github.

The data used in this app was retrieved from the [ParlParse](https://www.theyworkforyou.com/pwdata/scrapedxml/) service operated by [MySociety](https://www.mysociety.org/). The dataset is available on [Zenodo](https://zenodo.org/record/376839). Details on the dataset are available [here](/datasets/hansard-data/).

The interactive graph was developed in R using [`shiny`](http://shiny.rstudio.com/),using [`ggplot2`](https://cran.r-project.org/package=ggplot2) and [`scales`](https://cran.r-project.org/package=scales) to create the graph.

The computer code used in this app [is on Github](https://github.com/EvanOdell/disability-frequency) and is licensed under an [MIT License](https://github.com/EvanOdell/hansard-sentiment/blob/master/LICENSE).

### References

Ahmad, Naseer, G Neil Thomas, Paramjit Gill, Colin Chan, and Francesco Torella. 2014\. “Lower Limb Amputation in England: Prevalence, Regional Variation and Relationship with Revascularisation, Deprivation and Risk Factors. A Retrospective Review of Hospital Data.” _Journal of the Royal Society of Medicine_ 107 (12) (December): 483–489. doi:10.1177/0141076814557301. [http://journals.sagepub.com/doi/10.1177/0141076814557301](http://journals.sagepub.com/doi/10.1177/0141076814557301").

Odell, Evan. 2017. “Hansard Speeches and Sentiment [Dataset].” doi:10.5281/zenodo.376839. [https://zenodo.org/record/376839](https://zenodo.org/record/376839).

*[This blog was originally written for and published by Disability Rights UK]( https://disabilityrightsuk.blogspot.co.uk/2017/03/how-do-politicians-discuss-disability.html)*
