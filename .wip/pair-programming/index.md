---
layout: wip
title: "Pair Programming - Two People, One Keyboard, Zero Agreement"
permalink: /.wip/pair-programming/
tags: [culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Pair Programming</span>
    </div>
    <h1>Two People, One Keyboard, Zero Agreement</h1>
    <p class="page-subtitle">the theory: two brains catch more bugs. the practice: one person types while the other suffers in silence.</p>
</div>

<div class="content-section">
    <h2>The Theory</h2>
    <p>The research is clear: pair programming produces better code. Fewer defects. Better design. Shared knowledge. Two developers catch mistakes the other would miss. The navigator sees the forest; the driver sees the trees.</p>
    <p>This is all true in controlled studies using well-rested developers who agreed to pair, work on clearly scoped problems, and do not have strong opinions about tabs vs spaces.</p>
</div>

<div class="content-section">
    <h2>The Practice</h2>
    <p>In practice, pairing means one person is typing and one person is watching someone else type at a speed and in a style that is not how they would type. The navigator has suggestions. The navigator is trying to decide how many of those suggestions to say out loud and how many to absorb internally at the cost of a small piece of their soul.</p>
    <p>The driver has their own opinions. The driver knows how they would solve this. The driver is solving it. The navigator is watching them solve it slightly wrong and evaluating whether the wrongness is worth an interruption.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Actually, I would probably extract that into a function at this point."</p>
            <cite>— The navigator, after twelve minutes of watching the driver not extract that into a function</cite>
        </blockquote>
    </div>

    <h3>The Keyboard</h3>
    <p>There is one keyboard. The pairing station has been configured by whoever used it last. The font size is wrong for you. The keymap has something unusual in it. There is a snippet for something you would never type that keeps firing accidentally. You do not change any of this because you will be handing back in forty minutes.</p>
    <p>Remote pairing has solved the keyboard problem by introducing the cursor problem. There are now two cursors. They do not agree on where focus is. The shared terminal session has a latency that makes fast typists look like they are actively trying to cause merge conflicts.</p>
</div>

<div class="content-section">
    <h2>The Dynamics</h2>
    <p>Pairing works differently depending on the experience gap. If both developers are at the same level, it is collaborative and occasionally tense. If one developer is significantly more senior, it is tutoring whether anyone has agreed to that or not. The senior developer is trying not to just take the keyboard. The junior developer is trying to not feel like they are failing a test.</p>
    <p>Neither is failing. Both are tired.</p>

    <div class="fun-facts">
        <h3>Things That Are Harder When Pairing</h3>
        <ul>
            <li>Reading documentation without the other person asking what you're looking at</li>
            <li>Trying something you're not sure about without narrating it first</li>
            <li>Disagreeing about an architectural decision without it becoming a whole thing</li>
            <li>Taking a break when you need one</li>
            <li>Admitting you don't know what that function does</li>
            <li>The part where you stare at the screen for two minutes thinking</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>When It Works</h2>
    <p>Pairing works well for onboarding. It works for debugging thorny problems. It works when both people want to be there, the task is well-defined, and neither person has been in meetings for five hours already.</p>
    <p>It also produces, occasionally, that thing where two people build something in an afternoon that neither would have built alone in a week. These moments are real. They are worth all of it. They are also not representative of a typical Tuesday at 2pm when you have both been in standup, two syncs, and a planning session, and the task is to add a column to a database table.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We should pair on this one."</p>
            <cite>— Fine. Yes. Fine.</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/opsroulette/" class="nav-button">← Ops Roulette</a>
    <a href="/.wip/petecheslock/" class="nav-button">Next: Pete Cheslock →</a>
</div>
