---
layout: wip
title: "Airbnb - The Sharing Economy of Technical Debt"
permalink: /.wip/airbnb/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Airbnb</span>
    </div>
    <h1>Airbnb</h1>
    <p class="page-subtitle">Disrupting hospitality and uptime simultaneously</p>
</div>

<div class="content-section">
    <h2>It's Like Airbnb, But For...</h2>
    <p>The years 2012 through 2019 produced a generation of pitch decks that contained the phrase "it's like Airbnb, but for [noun]." Parking spaces. Dogs. Boats. Tractors. Wedding dresses. Industrial equipment. Human labor. The pattern was simple: take any market with underutilized assets, build an app that connects owners to renters, collect a percentage, call it a platform. The fact that Airbnb itself was perpetually on fire did not discourage anyone.</p>

    <p>Most of these companies are gone. The tractors are still out there. The wedding dresses found other dresses.</p>
</div>

<div class="content-section">
    <h2>The Actual Airbnb Engineering Experience</h2>
    <p>Airbnb's engineering blog was, for a while, required reading. They open-sourced tools. They wrote about distributed systems at scale. They had war stories. Then they had a different kind of war story: a 2020 data incident involving an improperly configured Elasticsearch cluster that exposed host and guest data. Then a 2022 outage. Then the kind of infrastructure complexity that accumulates when you build fast for a decade and the bill comes due all at once.</p>

    <p>None of this is unique to Airbnb. This is what all platforms look like under the paint. The ones who write about it publicly are the honest ones. The ones who don't have the same problems plus a communications policy.</p>
</div>

<div class="fun-facts">
    <h3>The sharing economy, technically speaking</h3>
    <ul>
        <li>"Move fast" is a fine strategy until the thing moving fast is your on-call rotation.</li>
        <li>Every platform company discovers rate limiting approximately six months after they needed it.</li>
        <li>The database that was "temporary" during the launch is the one production still depends on.</li>
        <li>Trust and safety is infrastructure too. It just doesn't show up in the uptime dashboard.</li>
        <li>The compliance problem you deferred at series A is waiting for you at IPO.</li>
        <li>Airbnb's first tech stack was Rails. The rewrite stories are available on their engineering blog. Reading order: optional. Chronological order: tragic.</li>
    </ul>
</div>

<div class="content-section">
    <h2>Two-Sided Marketplace, Two-Sided Failure</h2>
    <p>A two-sided marketplace has two sets of users to disappoint simultaneously. When the platform goes down, hosts cannot list, guests cannot book, payments are in an ambiguous state, and the trust system that keeps strangers sleeping in each other's homes is temporarily unavailable. The incident response team is paged. The payments team is paged. The trust team is separately paged. Legal is on a bridge.</p>

    <p>This is not a hypothetical. This is Tuesday.</p>
</div>

<div class="quote-box">
    <blockquote>We're not a hotel company. We're a technology company that happens to be in the hospitality space. The distinction is important when things go well and irrelevant when the booking system is down at 11pm on New Year's Eve.</blockquote>
    <cite>— The pitch deck, paraphrased</cite>
</div>

<div class="content-section">
    <h2>Party on Wayne</h2>
    <p>The original classic page had Beavis and Butthead playing air guitar and the caption "Party on Wayne." That was the whole page. There was a period in this industry where that constituted content, and everyone understood what it meant, and nobody had to explain it. That period is over. Now you need distributed tracing and a runbook and an SLO and a blameless postmortem. Wayne still parties, but he files an incident ticket first.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
    <a href="/.wip/americancraft/" class="nav-button">American Craft →</a>
</div>
