---
layout: wip
title: "Countdown to the history."
permalink: /president/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>President</span>
    </div>
    <h1>Countdown to the history.</h1>
    <p class="page-subtitle">the clock ran. then it stopped. then, somehow, it started again.</p>
</div>

<div class="content-section">
    <link rel="stylesheet" href="/flipclock.css">
    <div class="clock" style="margin:2em;"></div>
    <p><em>The above clock targeted January 20, 2021 at noon Eastern. That date has passed. The FlipClock.js countdown this page was built around has expired. What you're looking at now is the archaeological record of a running timer.</em></p>
</div>

<div class="content-section">
    <h2>What the Clock Was Counting Down To</h2>
    <p>The Trump administration ran from January 20, 2017 to January 20, 2021. The page called it "countdown to the history" — not "countdown to relief" or any other editorial frame. Just history. The thing that was happening was going to be history, and a running clock is a reasonable way to document that a thing is ending.</p>

    <p>The clock expired on schedule. January 20, 2021 arrived. The FlipClock hit zero and the page became a static record of a completed measurement. A thermometer that has been read and put away. The ceremony happened. The inauguration ran. The transfer of power completed without incident, which is the kind of sentence that becomes load-bearing only in retrospect.</p>
</div>

<div class="content-section">
    <h2>When Countdowns Become Duration Clocks</h2>
    <p>Countdown timers have a design flaw: the behavior after the target date is almost always undefined. FlipClock.js doesn't know what to do when the moment passes. It shows zeroes, or it shows negative elapsed time, or it just sits. Nobody thought to specify the post-expiry state because the important moment was the expiry itself.</p>

    <p>Infrastructure people recognize this pattern. Systems that run cleanly until they hit an edge case that was never designed for. The monitoring alert that fires correctly but the runbook ends at "escalate to on-call." The deployment script that succeeds but doesn't account for the state of the system after the script exits. The thing was built to solve a problem and it solved the problem and nobody documented what happens next.</p>
</div>

<div class="content-section">
    <h2>The Postscript Nobody Designed For</h2>
    <p>Donald Trump won the 2024 presidential election and was inaugurated for a second term on January 20, 2025. The original countdown expired in 2021, which means this page went from active countdown to historical artifact to something that requires a different framing entirely, over the course of one election cycle.</p>

    <p>A new countdown to January 20, 2029 would be technically accurate. Whether "countdown to the history" still means what it originally meant is a question the original clock was not built to answer. The state machine has a transition that wasn't in the spec. This is, in a specific sense, an infrastructure problem.</p>
</div>

<div class="quote-box">
    <blockquote>The countdown expired. Then the thing it was counting down to came back. The FlipClock library does not have a handler for this.</blockquote>
    <cite>— the page, in a state the original author did not anticipate</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
