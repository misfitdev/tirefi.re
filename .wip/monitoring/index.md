---
layout: wip
title: "Monitoring - The forever war"
permalink: /monitoring/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Monitoring</span>
    </div>
    <h1>The forever war: #monitoringsucks vs #monitoringlove</h1>
    <p class="page-subtitle">A decade of tooling evolution, and the disk still fills up before anyone notices.</p>
</div>

<div class="content-section">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/aJFyWBLeM7Q" frameborder="0" allowfullscreen></iframe>

    <p>I know I'm not the only one who learned Outlook rules because of Nagios...</p>
</div>

<div class="content-section">
    <h2>The Nagios Pipeline</h2>
    <p>Nagios taught a generation of sysadmins to be very good at email filtering. The sequence was reliable: install Nagios, configure service checks, forget to tune thresholds, receive six hundred emails over a weekend about a disk that was at 82% and never actually filled up. The correct response — tuning the threshold, writing a real alert — required time you didn't have, so you wrote an Outlook rule instead. The rule moved Nagios emails to a folder. The folder accumulated. The disk eventually filled up. The email was in the folder.</p>

    <p>This is not a knock on Nagios specifically. Nagios did what it said: it checked things and sent emails when the checks failed. The failure mode was organizational. Whoever installed it had different availability than whoever was supposed to be on call. The thresholds were never reviewed. The check interval was never adjusted. "We have monitoring" became the answer to questions about observability, and the monitoring had 847 rules with default thresholds and a notification list that included people who left the company in 2014.</p>
</div>

<div class="content-section">
    <h2>The Proliferation</h2>
    <p>The hashtag war — #monitoringsucks versus #monitoringlove — started around 2011 and was about exactly this. #monitoringsucks was the community acknowledgment that the existing tools had real problems: difficult configuration, poor defaults, limited visualization, no good story for dynamic infrastructure. #monitoringlove was the corrective, arguing that the tools weren't the problem and that better monitoring was possible with existing technology if you actually invested in it.</p>

    <p>Both hashtags were correct and neither resolved anything. What followed was a decade of monitoring tool proliferation. Nagios alternatives. Graphite for metrics. StatsD. Prometheus when the containerized world needed something that could scrape ephemeral targets. Grafana for dashboards. PagerDuty for alert routing. Alertmanager for alert deduplication. OpsGenie. VictorOps. Datadog, which charges enough that you start auditing which metrics you actually need. New Relic. Dynatrace. The observability movement, which correctly pointed out that metrics, logs, and traces are three different things and you need all three, and which introduced a new category of tools and a new set of vendor contracts.</p>

    <p>At the end of this, most organizations have more monitoring than they can act on and less signal than they need. The alert volume is high. The signal-to-noise ratio is whatever it was when the last person tuned the thresholds, which was when that person joined and cared, before they got pulled into other work. The dashboards exist. Nobody remembers which one is canonical. The on-call rotation fires at 3 AM for things that resolve themselves before anyone is fully awake.</p>
</div>

<div class="quote-box">
    <blockquote>An alert that fires every day is not an alert. It is ambient noise with a pager attached.</blockquote>
    <cite>— from a retrospective that didn't change anything</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
