---
layout: wip
title: "logrotate - Just Makes More Smoke to Grep"
permalink: /.wip/logrotate/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>logrotate</span>
    </div>
    <h1>logrotate Doesn't Put Out the Fire</h1>
    <p class="page-subtitle">it just makes more smoke for you to grep</p>
</div>

<div class="content-section">
    <h2>The Promise of Logging</h2>
    <p>The promise of logging is that you will know what is happening in your systems. Something breaks, you look at the logs, you find the error, you understand what happened, you fix it. The logs are the truth. The logs are the record. The logs will save you.</p>

    <p>This is a beautiful lie that the industry has been telling itself since the first <code>printf</code> statement was redirected to a file.</p>

    <p>The reality of logging is 500GB of nginx access logs on a load balancer that proxies to 40 application servers, none of which are logging the actual application errors, because the developer who set up the logging configuration in 2017 thought the access logs were the important part and no one has looked at the config since.</p>
</div>

<div class="content-section">
    <h2>The Incident That Will Teach You This</h2>
    <p>Every engineer learns the logging lesson the same way: during an incident, at 2am, when you need to know exactly what happened at 11:47pm and the logs from that window are gone.</p>

    <p>Not gone because of a failure. Gone because they were rotated and compressed and then rotated again and the retention window was 7 days and the incident happened on day 8. Or gone because the log volume exceeded the disk quota and logrotate starting dropping rather than rotating. Or gone because the application was configured to write to <code>/tmp</code> and <code>/tmp</code> was cleared on reboot and the system rebooted during the incident.</p>

    <p>The error that would have caught the incident was there. It logged exactly what went wrong, at the exact moment it went wrong, in plain English. It is now in <code>/dev/null</code>, spiritually speaking.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We have comprehensive logging across all our services."</p>
            <cite>— Your team, before the incident</cite>
        </blockquote>
    </div>

    <div class="quote-box">
        <blockquote>
            <p>"The logs from that time period don't appear to be available."</p>
            <cite>— Your team, during the postmortem</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>What Is Actually Logged</h2>
    <p>Log what matters. This is the advice. Here is what actually gets logged in practice:</p>

    <ul>
        <li>Every HTTP request to every load balancer, including health check endpoints, at a rate of 40,000 requests per minute, retained for 90 days, totaling approximately 2TB that no one has ever queried.</li>
        <li>Detailed debug output from a background job that was debugged in 2019 and never had its log level changed back.</li>
        <li>Successful logins. Not failed logins. The security team asked for failed logins. The ticket is still open.</li>
        <li>Application startup messages, including the full classpath, every time the application restarts, which it does approximately four times per day due to a memory leak that is "being investigated."</li>
        <li>The actual error that caused the incident: not logged, because it occurred in a library that wrote to stderr and the supervisor was configured to discard stderr.</li>
    </ul>
</div>

<div class="content-section">
    <h2>The logrotate Config Last Touched in 2009</h2>
    <p>It works. This is why no one has touched it. It faithfully rotates logs on a schedule that made sense for the server topology of 2009, which no longer exists. It compresses logs that were once grepped from disk and are now shipped to a log aggregation service that also has them, so the disk copies exist as redundant backup for a system that backs itself up separately.</p>

    <p>You will not change this config. Changing it requires understanding what it does, which requires understanding the original intent, which requires finding the person who wrote it, who left in 2014. The risk of breaking something important is higher than the cost of the disk space. The disk space costs four dollars a month. The config will remain.</p>

    <p>When the disk fills up — not if, when — someone will increase the disk size. This is the correct decision. Then they will add a ticket to review the logrotate config. The ticket will sit in the backlog until the next time the disk fills up.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/monitoring/" class="nav-button">Related: Monitoring →</a>
</div>
