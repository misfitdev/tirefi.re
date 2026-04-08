---
layout: wip
title: "Ops Roulette"
permalink: /opsroulette/
tags: [incidents, culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Ops Roulette</span>
    </div>
    <h1>Late Nights at Tech Conferences</h1>
    <p class="page-subtitle">everyone at the table goes quiet at the same moment</p>
</div>

<div class="content-section">
    <img src="/classic/opsroulette/opsroulette.png" alt="Ops Roulette" />
    <p><a href="https://www.commitstrip.com/en/2014/05/16/russian-roulette/">Source</a></p>
</div>

<div class="content-section">
    <h2>The Conference Prod Push</h2>
    <p>It happens the same way every time. Someone at the table has a laptop open. There is a deploy that has been sitting in staging. Everything looks fine. The drinks are good. The person with the laptop says "should we just push this?" and the table goes quiet.</p>
    <p>Not because anyone objects. Because everyone at the table is an operator and everyone at the table knows exactly what this is. You are about to play a game with production infrastructure from a hotel bar at 11pm. The VPN is flaky. Your phone battery is at 40%. The person who knows the database schema is asleep.</p>
    <p>The push goes out. Sometimes it is fine. Sometimes it is very much not fine and you spend the next three hours hunched over a laptop in a conference hallway while your colleagues wave from the after-party. The ratio of "fine" to "not fine" is high enough that the ritual continues.</p>

    <div class="quote-box">
        <blockquote>The on-call rotation does not care that you are in a different time zone. It does not care that you have a keynote in the morning. The rotation is the rotation.</blockquote>
        <cite>— Learned at altitude, at speed, the hard way</cite>
    </div>
</div>

<div class="content-section">
    <h2>The Incident Report Nobody Files</h2>
    <p>After the conference push goes wrong, there is a resolution. Someone fixes it. The service comes back. The affected users — it was late, so not many — move on with their lives. And because the blast radius was small and everyone is tired and the conference starts in six hours, the incident report does not get written.</p>
    <p>This is how a certain kind of institutional knowledge disappears. Not in a catastrophic failure with a thorough postmortem, but in a hundred small fires that got put out quietly and were never documented. The next person who tries this deploy will not know there was a problem. They will find out the same way you did.</p>
    <p>The conference circuit carries its own oral history of these moments — the names changed, the systems changed, but the structure of the story constant. Someone pushed at the wrong time. Someone fixed it. Nobody wrote it down. The thing keeps happening.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
    <a href="/pair-programming/" class="nav-button">Next: Pair Programming →</a>
</div>
