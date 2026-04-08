---
layout: wip
title: "Logrotate"
permalink: /logrotate/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>logrotate</span>
    </div>
    <h1>Logrotate doesn't put out the fire</h1>
    <p class="page-subtitle">it just makes more smoke for you to grep</p>
</div>

<div class="content-section">
    <img src="/classic/logrotate/logrotate.gif" alt="Just keeps going round and round and round..." />
    <p>It just makes more smoke for you to grep.</p>
</div>

<div class="content-section">
    <h2>The Incident at 2am</h2>
    <p>Every engineer learns the logrotate lesson the same way: during an incident, when you need to know exactly what happened at 11:47pm and the logs from that window are gone. Not gone because of a failure. Gone because the rotation schedule compressed them on a seven-day window and the incident happened on day eight. Or gone because the volume exceeded the disk quota and logrotate started dropping rather than rotating, which it will do silently, without complaint, in direct violation of what you thought the configuration meant. Or the disk hit a 40GB log that grew because the directive that should have rotated it daily had a syntax error in the size parameter and logrotate was reading the config file without error-checking the field types.</p>

    <p>The error that would have caught the incident was logged. It fired at the exact moment things went wrong, in plain English. It is now in <code>/dev/null</code>, spiritually speaking. What you have instead is 90 days of nginx access logs — 2TB of successful health check responses from the load balancer, retained with full fidelity, rotated and compressed on a meticulous schedule, searchable and intact and completely useless for diagnosing anything.</p>

    <p>journald inherited logrotate's job and added structured logging, persistent storage, and centralized rate limiting. It also added new and different ways to lose the logs you needed. Progress is not always linear. The logrotate config last touched in 2009 will outlive all of us.</p>
</div>

<div class="quote-box">
    <blockquote>We have comprehensive logging across all our services.</blockquote>
    <cite>— The team, before the incident. The logs from that time period do not appear to be available.</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
