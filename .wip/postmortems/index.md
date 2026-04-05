---
layout: wip
title: "Postmortems"
permalink: /.wip/postmortems/
tags: [incidents]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Postmortems</span>
    </div>
    <h1>If we all get together, maybe we can work out what kind of fire Pete caused.</h1>
    <p class="page-subtitle">blameless accusations only</p>
</div>

<div class="content-section">
    <img src="/postmortems/postmortems.jpg" alt="former tirefire" />

    <p>In this <del>postmortem</del>debriefing session<sup><a href="#fn1">1</a></sup>, only blameless accusations are acceptable.</p>

    <p id="fn1"><sup>1</sup> <a href="https://codeascraft.com/2016/11/17/debriefing-facilitation-guide/">record scratch-NAAME CHAAANGE!!!</a></p>
</div>

<div class="content-section">
    <h2>The Ideal and the Practice</h2>
    <p>The blameless postmortem is a genuine achievement of thinking. The core insight — that people operating in bad systems make predictable mistakes, and that fixing the system matters more than punishing the person — is correct. It took this industry a long time to get there, and some organizations still have not arrived. When a postmortem genuinely runs on that principle, it produces something useful: a shared understanding of how a failure actually happened, with enough specificity to prevent the next one.</p>
    <p>The gap between the ideal and the practice is where the "debriefing" rebrand lives. Calling it a debriefing does not change what happens in the room. If the culture is punitive, the room will be punitive regardless of what the calendar invite says. If the culture is genuinely curious about failure, it will be curious. The word on the agenda is not the variable that matters.</p>
    <p>Blameless, in practice, often means the written document is blameless. "The deploy pipeline lacked safeguards" rather than "Alex merged without review." Both statements can be true simultaneously. The document contains the systemic version. The hallway conversation after the meeting sometimes contains the other one.</p>

    <div class="quote-box">
        <blockquote>Writing "the system allowed this mistake to occur" is accurate. It is also, sometimes, a way of being polite about something more specific that everyone in the room already knows.</blockquote>
        <cite>— The subtext of a well-facilitated postmortem</cite>
    </div>
</div>

<div class="content-section">
    <h2>What Actually Changes</h2>
    <p>The postmortem produces action items. The action items are specific, time-bounded, and correctly identified as things that would reduce recurrence. They enter the backlog. They are medium priority. They do not get done before the next planning cycle. By the time the next planning cycle happens, the incident is old enough that the urgency is gone, and new urgency has arrived in the form of other things.</p>
    <p>What does change: the written record. The postmortem document is institutional memory, and it persists even when the action items do not. The next engineer who touches this part of the system and wonders why it works the way it does can find the postmortem and learn something real. Whether they find the document before or after they personally reproduce the incident is a separate question, but the information is there. This is not nothing.</p>
    <p>The honest answer to "what changed after the postmortem" is usually "we got better at describing this class of failure" and occasionally "we actually fixed the thing that caused it." The ratio of those two outcomes is left as an exercise for the team's historical postmortem archive, if one exists, which it often does not.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/playbook/" class="nav-button">← Playbook</a>
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
