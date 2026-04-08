---
layout: wip
title: "AWS - us-tirefire-1"
permalink: /.wip/aws/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>AWS</span>
    </div>
    <h1>us-tirefire-1</h1>
    <p class="page-subtitle">The region where good intentions go to accumulate egress charges and false confidence.</p>
</div>

<div class="content-section">
    <img src="/aws/cloud.jpg" alt="It's probably fine..." class="hero-image">

    <p>Yeah, the db is in us-east-1, but we will move it later.</p>

    <blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">us-tirefire-1</p>&mdash; Largo al factotum (@grepory) <a href="https://twitter.com/grepory/status/759204528382210049">July 30, 2016</a></blockquote>
    <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

<div class="content-section">
    <h2>The Region Problem</h2>
    <p>Everyone is in us-east-1. This is not an accident — it was the first region, it has the most services, and inertia is a hell of a drug. When us-east-1 has a bad day, which it does with the regularity of a quarterly all-hands, every SaaS product, startup dashboard, and "serverless" architecture that ever promised geographic redundancy finds out simultaneously that redundancy requires actually putting things in multiple places. The AWS Service Health Dashboard turns into a shared community experience. Slack fills with the same screenshot.</p>

    <p>The migration story is older than the cloud. "We'll move it later" is the technical debt of infrastructure — a promise that feels reasonable when made and absurd when examined. The database is in us-east-1 because moving a production database is genuinely unpleasant, and the current situation is only theoretically bad, and nothing has gone wrong yet this quarter. The migration stays in the backlog. The backlog grows. Later never arrives on its own.</p>
</div>

<div class="content-section">
    <h2>The Bill</h2>
    <p>The cloud was sold on elasticity — pay for what you use, scale up and down, no capital expenditure. This is true. It is also true that "what you use" turns out to be quite a lot once you add data transfer between regions, NAT gateway hours, API calls to services you forgot were running, and the three experimental Lambda functions from 2021 that never got cleaned up. The invoice is elastic in one direction.</p>

    <p>The promise was that you would stop thinking about hardware. You have stopped thinking about hardware. You now think about egress costs, reserved instance coverage ratios, and whether the Savings Plans commitment from 18 months ago still reflects your actual usage. The on-call rotation now includes a finance review.</p>
</div>

<div class="quote-box">
    <blockquote>The database migration is always next quarter. Next quarter it will also be next quarter.</blockquote>
    <cite>— anyone who has owned a production RDS instance</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
