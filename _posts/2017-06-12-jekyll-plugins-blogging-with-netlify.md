---
layout: post
title: Blogging with Jekyll Plugins and Netlify
date: 2017-06-12
comments: true
---

[GitHub Pages](https://pages.github.com/) is a wonderful platform for hosting blogs and project websites with Jekyll. Its free, it is integrated into GitHub, which most programmers are familiar with, and it is super easy to set up. However, it has a few limitations. If you're using a custom domain name, as I am, you can't enable HTTPS, which reduces the security of your site and can hurt your search engine ranking [as Google uses HTTPS in its ranking algorithm](https://webmasters.googleblog.com/2014/08/https-as-ranking-signal.html). GitHub Pages also restricts the use of Jekyll plugins to a [whitelist](https://pages.github.com/versions/); this means GitHub won't have to worry about running potentially dangerous code on its servers, but it can be inconvenient for users who want to take advantage of non-whitelisted plugins.

To use non-whitelisted plugins you can always build your website locally, and then push to GitHub (e.g. as described [here](https://www.sitepoint.com/jekyll-plugins-github/) and [here](http://davidensinger.com/2013/07/automating-jekyll-deployment-to-github-pages-with-rake/)), but this can be complicated and timeconsuming to set up, particularly if you are (like me) unfamiliar with Ruby, and since [Jekyll isn't officially supported for Windows](https://jekyllrb.com/docs/windows/), Windows users face an additional step in getting their website set up. Plus you still can't get a custom domain name with HTTPS.

That's where [Netlify](https://www.netlify.com/) comes in, specifically the free Netlify Pages hosting service. It takes the code from a repository on GitHub, GitLab or BitBucket, builds your site and deploys it on its servers. Simply sign up (you can use GitHub, GitLab and BitBucket accounts), select the repository you want to build from, the branch (for Jekyll, typically the `master` branch), the build command, `jekyll build` if using Jekyll, and the directory you're publishing from. Since Jekyll defaults to building in the `_site` directory of your master branch, use that. Netlify will also accept any respository name, so you are no restricted to the `USERNAME.github.io` name.

Update the settings with your DNS provider [as shown here](https://www.netlify.com/docs/custom-domains/#dns-configuration), and once that has updated (it can take anything from a couple minutes to 3-4 hours, depending on your provider) you can enable HTTPS on your site with a security certificate from [Let's Encrypt](https://letsencrypt.org/) with just a couple of clicks.

That's it. That's all there is to it. The whole process takes less than five minutes, and you end up with a free hosting service that lets you use your own domain with HTTPS, and accepts a whole additional range of Jekyll plugins. For example, here I'm citing Marx's _Capital Volume I_ {% cite marx1990 %} with [jekyll-scholar](https://github.com/inukshuk/jekyll-scholar), the full citation of which you can see below.


{% bibliography --cited %}
