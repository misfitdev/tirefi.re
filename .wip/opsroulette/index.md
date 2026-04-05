---
layout: wip
title: "Ops Roulette - The Chamber is Never Empty"
permalink: /.wip/opsroulette/
tags: [incidents, culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Ops Roulette</span>
    </div>
    <h1>The Chamber is Never Empty</h1>
    <p class="page-subtitle">a game of chance where the odds are determined by your PATH variable</p>
</div>

<div class="content-section">
    <h2>The Rules</h2>
    <p>Ops roulette is not a game you choose to play. It is a game that is played on you, usually on a Friday, usually when you are tired, usually when you have somewhere to be.</p>
    <p>The mechanism is simple: you are doing something routine. You have done it a hundred times. Your hands know the commands. And then one small thing is different — the shell you're in, the directory you're standing in, which terminal window you thought was prod but was actually staging, which terminal window you thought was staging but was actually prod.</p>
    <p>The command runs instantly. It always runs instantly. It never pauses to ask if you're sure.</p>

    <div class="quote-box">
        <blockquote>
            <p>"I checked. I definitely checked. I checked and it said staging."</p>
            <cite>— You, to the incident channel, already knowing it did not say staging</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>Classic Chambers</h2>
    <p>The game has several well-known configurations. Each has claimed careers.</p>

    <h3>The rm -rf</h3>
    <p>You are cleaning up a directory. You have a path. You are confident in the path. The path is wrong in a way you will not understand until the command has been running for four seconds, and by then the inode table has opinions.</p>

    <h3>The Migration Script</h3>
    <p>You have tested this against staging. Staging has a copy of production data from three months ago. Production data is not from three months ago. This distinction, it turns out, is load-bearing.</p>

    <h3>The Friday Deploy</h3>
    <p>Nothing is wrong with the code. The code is fine. The problem is that you pushed it at 4:45pm, and whatever breaks will break at 6pm when you are on a highway, and the on-call rotation has not been updated since Marcus left in February.</p>

    <h3>The Kubectl Context</h3>
    <p>There is a production cluster and a staging cluster. There is also a command that sets your current context. You ran that command. You do not remember which direction you ran it in. The pod you are about to delete is in one of the two clusters and you will find out which one in approximately eight seconds.</p>

    <div class="fun-facts">
        <h3>Protective Measures (Results Vary)</h3>
        <ul>
            <li>Color-coded terminal prompts for prod vs staging (ignored under pressure)</li>
            <li>Confirmation prompts (copy-pasted past without reading)</li>
            <li>Staging environment that mirrors prod (last synced: Q3 last year)</li>
            <li>Two-person rule for destructive operations (the second person was also tired)</li>
            <li>Immutable infrastructure (the database is still mutable)</li>
            <li>Dry-run flags (not all tools have them, none run automatically)</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>After the Shot</h2>
    <p>The incident has been declared. The bridge is open. Seventeen people have joined the call. Someone just asked for a summary. Someone else is typing in the wrong Slack channel.</p>
    <p>The important thing to know is that the person who pulled the trigger was not incompetent. They were tired and working in a system that made it easy to make this mistake. The postmortem will say this. Then the same system will still be there next week, and someone else will play.</p>
    <p>The gun is always loaded. The only question is whose turn it is.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Don't worry. It probably won't affect that many users."</p>
            <cite>— Optimism, T+3 minutes. Wrong at T+7 minutes.</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/openstack/" class="nav-button">← OpenStack</a>
    <a href="/.wip/pair-programming/" class="nav-button">Next: Pair Programming →</a>
</div>
