---
layout: wip
title: "The System That Cannot Come Down for Maintenance"
permalink: /.wip/trumpdays/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>The Unmaintainable System</span>
    </div>
    <h1>We'll Fix It After the Launch</h1>
    <p class="page-subtitle">the production system held together with duct tape and institutional inertia</p>
</div>

<div class="content-section">
    <h2>The System That Cannot Come Down</h2>
    <p>Every organization has one. You know it the moment you ask about the maintenance window and someone laughs. Not a dismissive laugh — a specific, exhausted laugh that means "we tried that conversation already."</p>

    <p>The system is running. It has been running. It will continue running until it doesn't, and when it doesn't the failure will be spectacular and completely predictable because everyone in the ops room has been predicting it for eighteen months. The postmortem will describe it as "unexpected."</p>

    <div class="quote-box">
        <blockquote>
            <p>"Leadership is aware of the technical debt. It's in the roadmap for next quarter. It has been in the roadmap for next quarter for three quarters."</p>
            <cite>— a project manager, not lying exactly</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>Anatomy of the Unmaintainable System</h2>
    <p>It started as a temporary solution. The temporary solution shipped. The temporary solution became load-bearing. The original engineer left. The documentation was the original engineer.</p>

    <p>Now it sits in the middle of the architecture diagram with lines going to everything. The lines are not labeled. Everyone who could label them has left or been promoted to a role where they no longer touch infrastructure. Touching it requires understanding it. Understanding it requires archaeology. Nobody has time for archaeology because the system is still running and therefore not a priority.</p>

    <div class="fun-facts">
        <h3>Signs Your System Cannot Come Down for Maintenance</h3>
        <ul>
            <li>The deployment process is a wiki page last updated in a year that starts with 201-</li>
            <li>There is a Slack channel dedicated to the system that is mostly quiet except when it breaks</li>
            <li>The person who knows the most about it has "transitioning off this project" as a recurring calendar event that keeps getting rescheduled</li>
            <li>"We should rewrite it" has been said at two different architecture reviews and never made it to a sprint</li>
            <li>The monitoring alerts go to a distribution list that includes at least one person who left the company</li>
            <li>You have run <code>kill -9</code> on it in production and prayed</li>
            <li>The system has a nickname and the nickname is not kind</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Leadership Relationship with Technical Debt</h2>
    <p>Leadership knows. This is important to understand. They know it is fragile. They know the team is worried. They have sat in the room while the ops team explained, with slides, what will happen and approximately when.</p>

    <p>The problem is that the system has not failed yet. From the outside, not-failed looks identical to fine. The probability of failure is invisible until the moment it becomes a Slack incident channel. The cost of fixing it now is visible and real and appears on a budget spreadsheet. This asymmetry is why the duct tape stays.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We'll fix it after the launch." — said before the launch that was supposed to be the last excuse. Said before that launch too. And the one before that.</p>
            <cite>— the launch calendar, stretching infinitely into the future</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Eventual Failure</h2>
    <p>The countdown is not a question of if. Everyone in the ops room knows this. They have documented it. They have escalated it. They have written the runbook for when it happens, which is the only form of "addressing" technical debt that leadership consistently approves budget for.</p>

    <p>When it fails, it will fail at the worst possible time by definition — the best possible time is when you're already in a maintenance window and prepared, which is the time that was never scheduled. The incident will be novel in its specifics and completely familiar in its shape.</p>

    <p>The postmortem will identify contributing factors. It will not identify the fundamental cause, which is that the system could not come down for maintenance and now it has come down, on its own terms, at 11pm on a Friday before a long weekend.</p>

    <p>But that's future-ops's problem. Current-ops is just keeping the countdown running.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/incident-management/" class="nav-button">Incident Management</a>
    <a href="/.wip/monitoring/" class="nav-button">Monitoring</a>
    <a href="/.wip/postmortems/" class="nav-button">Postmortems</a>
    <a href="/.wip/" class="nav-button">All Disasters</a>
</div>
