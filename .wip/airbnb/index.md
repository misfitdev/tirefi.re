---
layout: wip
title: "ಠ_ಠ Airbnb"
permalink: /.wip/airbnb/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Airbnb</span>
    </div>
    <h1>Airbnb</h1>
    <p class="page-subtitle">Party on Wayne. File the incident ticket first.</p>
</div>

<div class="content-section">
    <p>Party on Wayne and be Excellent to Each other.</p>

    <img src="/airbnb/airbnb.gif" alt="beavis and butthead playing air guitar" />
</div>

<div class="content-section">
    <h2>Scale as Cautionary Tale</h2>
    <p>Airbnb's engineering team was, for a while, publishing genuinely useful material. Open-sourced tooling. War stories. Real distributed systems problems written up by people who had actually experienced them. They were running Rails at a scale Rails was not designed for and being honest about what that meant. This is the honest version of tech company engineering blogs, which usually exist to recruit engineers and not to share information.</p>

    <p>The infrastructure underneath all of it was built fast, because the company was moving fast, because the company had to move fast to survive. When you are doubling every few months you do not have the luxury of designing the system you'll need in two years. You build the system you need today and you inherit that system forever. Airbnb's engineering blog is, in retrospect, a detailed account of paying down the debt incurred during the growth years. The posts are good. The debt was real.</p>
</div>

<div class="content-section">
    <h2>Two-Sided Marketplace, Two-Sided Failure</h2>
    <p>A two-sided marketplace has two sets of users to disappoint simultaneously. When the platform goes down, hosts cannot list, guests cannot book, payments are in an ambiguous state, and the trust system that keeps strangers sleeping in each other's homes is temporarily unavailable. The incident response team is paged. The payments team is paged. The trust team is separately paged. Legal is on a bridge.</p>

    <p>The operational complexity of a company whose core product is "strangers trust each other enough to share living spaces" is not visible in the architecture diagram. It shows up in the trust and safety team's on-call rotation, in the fraud detection systems, in the payment dispute workflows. That infrastructure is as load-bearing as any database cluster. It just doesn't appear in the uptime dashboard.</p>
</div>

<div class="quote-box">
    <blockquote>We're not a hotel company. We're a technology company that happens to be in the hospitality space. The distinction is important when things go well and irrelevant when the booking system is down at 11pm on New Year's Eve.</blockquote>
    <cite>— The pitch deck, paraphrased</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
