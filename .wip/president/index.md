---
layout: wip
title: "President of On-Call - All the Power, None of the Title"
permalink: /.wip/president/
tags: [culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>President of On-Call</span>
    </div>
    <h1>President of On-Call</h1>
    <p class="page-subtitle">the most important person in the building. not a manager. probably updating their resume.</p>
</div>

<div class="content-section">
    <h2>The Office</h2>
    <p>Every engineering organization has one. They might not have a special title. They might not even be senior. What they have is the knowledge — the real kind, the kind that lives in a person rather than in a wiki page.</p>
    <p>They know which services talk to which other services and in which order and with what timeouts. They know that the cache invalidation issue on Tuesdays is related to a cron job from 2019 that nobody has touched because it works except for that. They know that the third-party payment integration fails silently when the response body is over a certain size, and they know because they found it at 2am in 2022 and filed a ticket that was never resolved, and they remember.</p>
    <p>When something breaks, someone in the Slack channel says their name.</p>
</div>

<div class="content-section">
    <h2>How the Position Is Obtained</h2>
    <p>Nobody campaigns for this. You do not apply. You accumulate it over time by being present for enough incidents that the shape of the system becomes legible to you in a way it is not legible to anyone else.</p>
    <p>Tenure is the main qualification. Curiosity helps. A high pain tolerance is essential. You end up in this role because you stayed when others left, because you were there when the thing broke and you were the one who figured out why, because you asked what was behind the abstraction and then you remembered the answer.</p>
    <p>The organization comes to depend on you for this. They may not be aware they are doing it.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Let's get [name] on the call."</p>
            <cite>— What gets said at T+8 minutes of every P1. [Name] is always available. [Name] is tired of being always available.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Bodies</h2>
    <p>They know where the bodies are buried. Not metaphorically — literally. The service that doesn't have tests because the original author didn't believe in tests and left before anyone could argue about it. The database table with nine columns named thing1 through thing9 from a data model that made sense to exactly one person. The third-party API integration that has been rate-limited since 2021 and works around it by sleeping for 500 milliseconds between calls.</p>
    <p>They know all of this. It has not been written down because nobody has asked them to write it down. Writing it down is not a sprint priority. It might become a priority when they leave.</p>

    <div class="fun-facts">
        <h3>Symptoms of Holding This Role</h3>
        <ul>
            <li>Your name appears in incident tickets you were not on-call for</li>
            <li>New engineers are told "just ask [you]" as part of their onboarding</li>
            <li>You have been manually woken up at least once to resolve something that wasn't in the rotation</li>
            <li>You know the password to something that should have been rotated years ago</li>
            <li>Your departure would be treated as a production incident</li>
            <li>You have already had the conversation with yourself about whether the knowledge transfer would actually happen before you left</li>
            <li>The answer was no</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Transition</h2>
    <p>At some point the President of On-Call updates their resume. This is not betrayal. This is a person calculating that the value they provide is not reflected in their compensation, that the organization has been extracting institutional knowledge without investing in distributing it, and that this is not a problem they can solve from their current position.</p>
    <p>There will be an offboarding. There will be a knowledge transfer document. The document will be incomplete in ways that will become apparent at 2am six months after they leave. The next incident will take longer to resolve. Someone new will start accumulating the knowledge.</p>
    <p>The office is never vacant for long. It just takes a while to build up again.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We should really document this stuff before you go."</p>
            <cite>— Week 3 of a four-week notice period. Nothing will be documented in time.</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/postmortems/" class="nav-button">← Postmortems</a>
    <a href="/.wip/quarantined/" class="nav-button">Next: Quarantined →</a>
</div>
