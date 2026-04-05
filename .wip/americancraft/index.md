---
layout: wip
title: "American Craft - Artisanal Infrastructure"
permalink: /.wip/americancraft/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>American Craft</span>
    </div>
    <h1>Artisanal Infrastructure</h1>
    <p class="page-subtitle">Small-batch, locally-sourced, thoroughly unmaintainable</p>
</div>

<div class="content-section">
    <h2>Craft Ops</h2>
    <p>Somewhere in the mid-2010s, the artisanal aesthetic escaped from food and colonized engineering culture. Suddenly everything was hand-crafted, small-batch, bespoke. Your deployment pipeline was artisanal. Your monitoring setup was bespoke. Your Bash scripts were hand-rolled, single-origin, and paired with a carefully curated set of undocumented flags that only the original author understood.</p>

    <p>This is fine when the original author is available. This is a nightmare when the original author left for a Series B startup eight months ago and the Bash script is the only thing standing between you and a failed deployment.</p>
</div>

<div class="content-section">
    <h2>The Bespoke Solution Problem</h2>
    <p>Every bespoke infrastructure solution is the product of a specific person solving a specific problem at a specific point in time. It made perfect sense when it was written. It made less sense six months later when it needed to be extended. It makes no sense now, when the problem it was solving has changed, the system it integrated with has been replaced, and the person who wrote it is unreachable on a different timezone.</p>

    <p>The documentation lives in the author's head. The configuration lives in a file with no comments. The tribal knowledge lives nowhere. This is your inheritance. The ticket says "just update the config," and you are looking at a 400-line shell script with functions named <code>do_the_thing</code> and <code>fix_it_again</code>, and you are very alone.</p>
</div>

<div class="fun-facts">
    <h3>Signs your infrastructure is artisanal</h3>
    <ul>
        <li>The deployment script has a comment that says "don't run this on Fridays" with no further explanation.</li>
        <li>There is a server named after a character from a TV show that was cancelled in 2011.</li>
        <li>The monitoring dashboard was built in Grafana by someone who is very proud of it and has not updated it since they left.</li>
        <li>The load balancer config was hand-tuned for traffic patterns from 2019 that no longer exist.</li>
        <li>There are three separate internal tools that do approximately the same thing, built six months apart, by three different people who didn't talk to each other.</li>
        <li>The README says "see confluence" and the Confluence page says "see the README."</li>
    </ul>
</div>

<div class="content-section">
    <h2>When Craft Becomes Legacy</h2>
    <p>The craft beer place at the hotel had one job: serve beer. It failed at it in ways that were memorable if not enjoyable. Artisanal infrastructure fails in a similar register: expensively, specifically, and in ways that require the whole story to understand. The failure is never generic. It's always some unique combination of hand-tuned settings, undocumented assumptions, and the specific sequence of events that exposed the gap between how someone thought the system worked and how it actually did.</p>

    <p>You can't write a runbook for a snowflake. You can only write a postmortem after it melts.</p>
</div>

<div class="quote-box">
    <blockquote>We didn't want to use the standard solution because it didn't quite fit our use case. So we built our own. It fits our use case perfectly. Unfortunately our use case has changed. The solution has not.</blockquote>
    <cite>— The architecture doc, dated three years ago</cite>
</div>

<div class="content-section">
    <h2>The Standardization Tax</h2>
    <p>At some point, every engineering org figures out that bespoke solutions have a carrying cost. The solution is standardization: pick the boring option, use it everywhere, document it, automate the setup. This is correct. It is also the moment when everyone who built something bespoke explains why their specific case is different and their hand-crafted solution should be exempt. Some of them are right. Most of them are not. Figuring out which is which is a political problem dressed up as a technical one, and it will take longer than building the bespoke thing did in the first place.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/airbnb/" class="nav-button">← Airbnb</a>
    <a href="/.wip/australia/" class="nav-button">Australia →</a>
</div>
