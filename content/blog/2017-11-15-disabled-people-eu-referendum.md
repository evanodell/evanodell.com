---
title: Disabled people and voting trends
date: '2017-11-15'
image: "/img/disabled-people-eu-ref/p-eu-vote-disab.png"
---

I've been playing around with panel data from [the British Election Study](http://www.britishelectionstudy.com/data-object/british-election-study-combined-wave-1-13-internet-panel/),[^0] looking at how disabled people voted in the 2016 EU referendum and the 2017 General Election. I've previously posted the graphs on [Twitter](https://twitter.com/evanodell/status/928748930472513538), but these ones look a bit nicer, and I've included more independent variables in the regression table of disabled votes in the 2017 General Election.

## 2016 EU Referendum

{{< figure src = "/img/disabled-people-eu-ref/p-eu-vote-disab.png" >}}


Disabled people voted to leave the EU; in the case of people with more severe disabilities, over 60% of people voted leave. Given the correlation between disability and age, this is not unsurprising. The older you are and the lower your educational attainment, the more likely you are to be disabled, and the more likely you are to have voted leave. This is at odds with the views of the majority of high-profile disability activists and campaigners, as well as Disabled Persons Organisations, who backed remain.

I wanted to isolate disability from other demographic factors, so I used a Gaussian generalised linear model (GLM) in R to predict remain vote, with data from Waves 7, 8 and 9 of the British Election Study.

What is more surprising is that even when controlling for age, university attendance and social class, disabled people still voted to leave the EU. Having a disability that imposed some day-to-day limitations correlates with a 2.8% drop in remain vote, compared to non-disabled people of the same age, university attendance and social class (based on the social grade of the household's chief income earner), while more limiting disabilities correlate to a 7.7% drop in remain vote. This outcome supports the idea that for many people voting leave in the EU referendum was an expression of discontent and frustration with the status quo.


#### _Table 1 - Voting remain, by disability, controlling for age, university attendance and social class_

<table>

<tbody>

<tr>

<th>Dependent Variable: Voted Remain</th>

<th style="text-align:right;">Coefficient</th>

<th style="text-align:right;">Standard Error</th>

</tr>

<tr>

<td>Disability, limited a little</td>

<td style="text-align:right;">-0.028<sup>\*\*</sup></td>

<td style="text-align:right;">0.009</td>

</tr>

<tr>

<td>Disability, limited a lot</td>

<td style="text-align:right;">-0.077<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.012</td>

</tr>

<tr>

<td>Age</td>

<td style="text-align:right;">-0.004<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.0002</td>

</tr>

<tr>

<td>Any uni: Yes, I am currently enrolled in higher education</td>

<td style="text-align:right;">-0.002</td>

<td style="text-align:right;">0.015</td>

</tr>

<tr>

<td>Any uni: Yes, but I didn't complete higher education</td>

<td style="text-align:right;">-0.104<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.014</td>

</tr>

<tr>

<td>Any uni: No, I have never attended higher education</td>

<td style="text-align:right;">-0.159<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.008</td>

</tr>

<tr>

<td>Social grade: B</td>

<td style="text-align:right;">0.005</td>

<td style="text-align:right;">0.014</td>

</tr>

<tr>

<td>Social grade: C1</td>

<td style="text-align:right;">-0.031<sup>\*</sup></td>

<td style="text-align:right;">0.012</td>

</tr>

<tr>

<td>Social grade: C2</td>

<td style="text-align:right;">-0.120<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.013</td>

</tr>

<tr>

<td>Social grade: D</td>

<td style="text-align:right;">-0.107<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.015</td>

</tr>

<tr>

<td>Social grade: E</td>

<td style="text-align:right;">-0.091<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.015</td>

</tr>

<tr>

<td>Social grade: Refused</td>

<td style="text-align:right;">0.068</td>

<td style="text-align:right;">0.237</td>

</tr>

<tr>

<td>Social grade: Unknown</td>

<td style="text-align:right;">-0.073<sup>\*\*</sup></td>

<td style="text-align:right;">0.026</td>

</tr>

<tr>

<td>Constant</td>

<td style="text-align:right;">0.852<sup>\*\*\*</sup></td>

<td style="text-align:right;">0.016</td>

</tr>

<tr style="border-top-width: 3px; color: black;">

<td>Observations</td>

<td style="text-align:right;" colspan="2">19,240</td>

</tr>

<tr>

<td>Log Likelihood</td>

<td style="text-align:right;" colspan="2">-16,663.280</td>

</tr>

<tr>

<td>Akaike Inf. Crit.</td>

<td style="text-align:right;" colspan="2">33,354.550</td>

</tr>

<tr>

<td>Note:</td>

<td colspan="2"><sup>\*</sup>p<0.05; <sup>\*\*</sup>p<0.01; <sup>\*\*\*</sup>p<0.001</td>

</tr>

</tbody>

</table>
_Regression table from a generalised linear model in R._


## 2017 General Election

On the whole, people with less-limiting disabilities were more likely to vote for the Conservatives than non disabled people in the 2017 General Election. A plurality of people with more limiting disabilities voted for Labour, were the most likely group to vote for UKIP, and the least likely to vote for the Liberal Democrats.

{{< figure src = "/img/disabled-people-eu-ref/p-vote-disab-2017.png" >}}

I wanted to see if there was any relationship between being disabled and voting for Labour compared to all other parties, as the Labour party seemed to be making the most explicit appeals to disabled people on issues like benefits and social care. Again, I used Gaussian GLM in R, which found that disabled people were more likely to vote for Labour than non-disabled people, controlling for age, university attendance and social class. As expected, older age was associated with a lower likelihood of voting for Labour, and lower social class with a greater likelihood of voting for Labour. A more limiting disability correlates with a 7.6% increase in Labour vote, while less limiting disabilities were only associated with a 1.9% increase, relative to non-disabled voters.

#### _Table 2 - Voting Labour, by disability, controlling for age, university attendance and social class_
<table>
<tr>
  <th>Dependent Variable: Voted Labour</th>
  <th style="text-align:right;">Coefficient</th>
  <th style="text-align:right;">Standard Error</th>
</tr>
<tr>
  <td>Disability, limited a little</td>
  <td style="text-align:right">0.019<sup>\*</sup></td>
  <td style="text-align:right">0.008</td>
</tr>
<tr>
  <td>Disability, limited a lot</td>
  <td style="text-align:right">0.076<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.012</td>
</tr>
<tr>
  <td>Age</td>
  <td style="text-align:right">-0.007<sup>\*\*\*</sup></td>
  <td style="text-align:right">(0.0002)</td>
</tr>
<tr>
  <td>Any uni: Yes, I am currently enrolled in higher education</td>
  <td style="text-align:right">-0.018</td>
  <td style="text-align:right">0.016</td>
</tr>
<tr>
  <td>Any uni: Yes, but I didn’t complete higher education</td>
  <td style="text-align:right">0.009</td>
  <td style="text-align:right">0.012</td>
</tr>
<tr>
  <td>Any uni: No, I have never attended higher education</td>
  <td style="text-align:right">-0.042<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.007</td>
</tr>
<tr>
  <td>Social grade: B</td>
  <td style="text-align:right">0.072<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.012</td>
</tr>
<tr>
  <td>Social grade: C1</td>
  <td style="text-align:right">0.063<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.011</td>
</tr>
<tr>
  <td>Social grade: C2</td>
  <td style="text-align:right">0.077<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.012</td>
</tr>
<tr>
  <td>Social grade: D</td>
  <td style="text-align:right">0.090<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.014</td>
</tr>
<tr>
  <td>Social grade: E</td>
  <td style="text-align:right">0.139<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.014</td>
</tr>
<tr>
  <td>Social grade: Refused</td>
  <td style="text-align:right">-0.398</td>
  <td style="text-align:right">0.627</td>
</tr>
<tr>
  <td>Social grade: Unknown</td>
  <td style="text-align:right">0.065<sup>\*\*</sup></td>
  <td style="text-align:right">0.025</td>
</tr>
<tr>
  <td>Constant</td>
  <td style="text-align:right">0.581<sup>\*\*\*</sup></td>
  <td style="text-align:right">0.013</td>
</tr>
<tr style="border-top-width: 3px; color: black;">
  <td>Observations</td>
  <td style="text-align:right;" colspan="2">21,522</td>
</tr>
<tr>
  <td>Log Likelihood</td>
  <td style="text-align:right;" colspan="2">-16,523.830</td>
</tr>
<tr>
  <td>Akaike Inf. Crit.</td>
  <td style="text-align:right;" colspan="2">33,075.660</td>
</tr>
<tr>
  <td>Note:</td>
  <td colspan="2"><sup>\*</sup>p&lt;0.05; <sup>\*\*</sup>p&lt;0.01; <sup>\*\*\*</sup>p&lt;0.001</td>
</tr>
</table>
_Regression table from a generalised linear model in R._

When I posted these graphs on Twitter last week, and in response to people reporting barriers to voting because of their disability, [Neil Crowther](https://makingrightsmakesense.wordpress.com/) asked if there was anything on voter turnout amongst disabled people:

{{< tweet 928921634785906689 >}}

I used turnout expectations from Wave 12 of the BES,[^1] conducted in the midst of the 2017 GE election campaign. Disabled people were less likely to report they were "very likely" to vote; people with more limiting disabilities were less likely to do so than those with less limiting disabilities.

{{< figure src = "/img/disabled-people-eu-ref/p-turnout-disab-2017.png" >}}

### Notes

The code used to create these plots and tables is available on [GitHub](https://github.com/evanodell/disability-voting). British Election Study data from waves 1-13 can be downloaded from [here](http://www.britishelectionstudy.com/data-object/british-election-study-combined-wave-1-13-internet-panel/).


### Notes


[^0]: Fieldhouse, E., Green, J., Evans, G., Schmitt, H., Eijk, C.V.D., Mellon, J., and Prosser, C., 2017. British Election Study Internet Panel Waves 1-13. http://www.britishelectionstudy.com/data-object/british-election-study-combined-wave-1-13-internet-panel/ DOI: 10.15127/1.293723 

[^1]: I couldn't figure out the turnout data in Wave 13, the post-election wave. If I do figure that out I'll update this blog; if someone wants to give me some tips or point out some variable I seem to have missed, please [get in touch](mailto:evanodell91@gmail.com).
