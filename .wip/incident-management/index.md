---
layout: wip
title: "Hi, who just joined?"
permalink: /.wip/incident-management/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Incident Management</span>
    </div>
    <h1>Hi, who just joined?</h1>
    <p class="page-subtitle">can everyone please mute</p>
</div>

<div class="content-section">
    <p style="font-family: monospace; color: var(--danger);">elevated error rates &amp;<br>
    elevated error rates &amp;<br>
    elevated error rates &amp;<br>
    elevated error rates</p>

    <img src="/incident-management/incident-management.gif" alt="apis up" />
</div>

<div class="content-section">
    <h2>The Bridge</h2>
    <p>The incident bridge is a specific genre of human experience. It starts with a page, a Slack alert, or someone in #ops saying "has anyone seen elevated errors on the API?" Within five minutes there are eight people on a call. Within fifteen there are twenty. Nobody invited most of them. They joined because the Slack message got a fire emoji react and they felt compelled to participate.</p>

    <p>The "elevated error rates &amp;" text above is a real artifact. It's an XMPP status field from an incident call, the kind of status line that got copied and pasted into a bridge update and then got copied again, and the HTML entity for ampersand came through as a literal <code>&amp;</code>, and then that got copied again, and by the fourth repetition nobody was sure whether the message was truncated or whether the incident was somehow still ongoing and the next update was still coming. It wasn't. That was the whole message. The ampersand was an encoding error. The errors were real.</p>
</div>

<div class="content-section">
    <h2>The Rotating Cast</h2>
    <p>"Hi, who just joined?" is the question that gets asked when the bridge has grown large enough that the incident commander has lost track of who is on it. The answer is rarely just one person. It's the on-call engineer from the payments team, who got paged by the escalation policy. It's a director who saw the SEV-1 in the incident channel. It's the engineer who wrote the service three years ago and has been mentioned several times. It's someone from the monitoring team who joined to see if they could help. It's a vendor support rep who was already on a call about something else.</p>

    <p>Each new joiner gets a summary. The summary takes two minutes. During those two minutes, someone else joins. The summary loops. The person who is doing the summarizing is also the person who was actively debugging, and they have now lost their train of thought. The actual investigation has been paused to onboard people who will contribute zero actionable items to the incident because they don't have access to the affected systems and didn't know the service existed until fifteen minutes ago.</p>
</div>

<div class="quote-box">
    <blockquote>We have identified the issue. The issue is being mitigated. We will provide an update in fifteen minutes. That was forty minutes ago.</blockquote>
    <cite>— status page, Sev-1, still open</cite>
</div>

<div class="content-section">
    <h2>The Postmortem That Becomes a Debriefing</h2>
    <p>The postmortem is where the incident gets processed into a document. The document has a timeline, a root cause, contributing factors, and action items. The action items get assigned owners. Most action items are reasonable: add monitoring, improve runbooks, fix the race condition that caused the cascade. The postmortem meeting has good intent. Everyone agrees the thing that happened was bad and the action items are the right ones.</p>

    <p>Then the tickets age. The monitoring improvement is waiting on an infrastructure change that hasn't been scheduled. The runbook update is in draft. The race condition fix requires understanding the codebase of a service that nobody currently working at the company fully understands, and it's been tagged as "complex" in the backlog. The next incident happens in a different system, so the action items from the first one don't directly apply, and they sit longer.</p>

    <p>The "blameless postmortem" is the right model. The thing that makes incidents recur is rarely individual malice; it's the system, the conditions, the gap between documentation and reality. The problem is that "blameless" sometimes slides into "actionless," where identifying systemic issues is thorough but fixing them competes with feature work and loses. The next incident writes a new postmortem. The contributing factors look familiar.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
