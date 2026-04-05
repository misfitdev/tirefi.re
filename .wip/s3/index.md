---
layout: wip
title: "S3 - 503 Slow Down"
permalink: /.wip/s3/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>S3</span>
    </div>
    <h1>503 Slow Down</h1>
    <p class="page-subtitle">Please reduce your request rate.</p>
</div>

<div class="content-section">
    <h1>503 Slow Down</h1>
    <ul>
    <li>Code: SlowDown</li>
    <li>Message: Please reduce your request rate.</li>
    <li>RequestId: 1E166DB2DF880A97</li>
    <li>HostId: 3lCVioQslZchBqg/+T1rEfir3+ySiG3wzSXQv9NHBs957d1EUrx7IgIPKbG4GzzObFq5AITn0e9=</li>
    </ul>
</div>

<div class="content-section">
    <h2>February 28, 2017</h2>
    <p>On February 28, 2017, an engineer at Amazon was following a runbook to debug a billing system in us-east-1. The runbook contained a command. The command was intended to remove a small number of servers from the subsystem. Due to a typo — an input error that was larger than intended — the command removed significantly more capacity from the S3 index subsystem than it was supposed to. S3 went down. Not degraded. Down.</p>

    <p>The downstream impact was immediate and comprehensive. S3 is not just object storage for people uploading files. S3 is infrastructure for a substantial fraction of the internet. CloudFront pulls from S3. Lambda deployment packages live in S3. Elastic Beanstalk uses S3. Hundreds of popular SaaS products use S3 as their storage layer. The AWS Console itself rendered broken because the console's static assets were in S3. The status dashboard — the thing you check to see if AWS is having problems — was also hosted on S3, which meant it couldn't update to indicate that S3 was having problems. The recursion here is not subtle.</p>
</div>

<div class="content-section">
    <h2>The Concentration Problem</h2>
    <p>The S3 outage is the clearest possible illustration of the us-east-1 concentration problem. Every organization that had designed for "high availability" by deploying to multiple availability zones in us-east-1 discovered that availability zones share regional dependencies. Multi-region architectures that actually survived were rare, because multi-region is genuinely hard and expensive and the risk of us-east-1 going down had historically seemed theoretical. On February 28 it was not theoretical.</p>

    <p>The postmortem Amazon published was honest. They described the typo, the insufficient safeguards on the command, the capacity removal tool that lacked rate limiting, the fact that the recovery took longer than expected because the index and placement subsystems had to restart with more servers than they had previously needed to enumerate at startup. They committed to adding circuit breakers to the capacity tools. This was the correct response to the incident. It does not change the geometry of the situation, which is that a meaningful percentage of internet infrastructure shares a single failure domain and the runbook that governs that failure domain is maintained by people who can mistype.</p>
</div>

<div class="quote-box">
    <blockquote>The HostId is longer than most incident summaries and contains approximately as much actionable information.</blockquote>
    <cite>— observation from an actual support ticket</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
