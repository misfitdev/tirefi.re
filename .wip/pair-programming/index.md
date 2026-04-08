---
layout: wip
title: "Pare Programming"
permalink: /pair-programming/
tags: [culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Pare Programming</span>
    </div>
    <h1>Teamwork makes the tirefire work, no?</h1>
    <p class="page-subtitle">two developers, one problem, an infinite supply of unspoken corrections</p>
</div>

<div class="content-section">
    <img src="/classic/pair-programming/pair-programming.gif" alt="3-2-1, boom" />
</div>

<div class="content-section">
    <h2>The 80/20</h2>
    <p>In most pairing sessions, one person types for about eighty percent of the time. This is not a rule anyone set. It emerges from the fact that one person was already in the flow, or one person is more familiar with the codebase, or one person opened the laptop first and now the session has a driver by default.</p>
    <p>The other person is the navigator. The navigator's job is to hold the big picture while the driver handles the immediate code. In practice, the navigator's job is to watch someone solve a problem in a way that is not quite how the navigator would solve it, and to make a series of real-time decisions about which gaps are worth bridging out loud. This requires a kind of restraint that is genuinely difficult. The navigator is not silent because they have nothing to say. They are silent because they are rationing.</p>
    <p>Eventually someone says "do you want to drive?" This is not really a question. It is a negotiation. It almost always gets resolved, but the moment before it does is its own small test of how the two of you are doing.</p>

    <div class="quote-box">
        <blockquote>The backseat driver problem is real. The front-seat problem — where the driver knows someone is watching and starts performing instead of thinking — is also real and discussed less.</blockquote>
        <cite>— From the part of the pairing literature nobody reads</cite>
    </div>
</div>

<div class="content-section">
    <h2>When It Actually Works</h2>
    <p>There are two categories of work where pairing reliably produces something better than either person would have produced alone. The first is security review — two people reading code for vulnerabilities catch things one person misses, full stop, the research on this is not ambiguous. The second is navigating an unfamiliar codebase, where the overhead of narrating your mental model out loud is actually useful because it forces you to form one.</p>
    <p>Outside of those categories, the value is real but situational. Pairing on a well-understood task with a clear spec and a familiar stack is mostly theater. Pairing on a gnarly debugging problem where one person has context and the other has fresh eyes is genuinely valuable. Pairing because the team decided pairing is how we work, on everything, always, is how you get engineers who are exhausted by 2pm and have no idea why.</p>
    <p>Pairing is a tool. Tools are for specific jobs. The version of pairing that works is the version where both people are there because the problem is the right shape for two heads, not because someone read a book about XP in 2003 and made it a policy.</p>
</div>

<div class="navigation-footer">
    <a href="/opsroulette/" class="nav-button">← Ops Roulette</a>
    <a href="/petecheslock/" class="nav-button">Next: Pete Cheslock →</a>
</div>
