---
layout: wip
title: "playbook"
permalink: /.wip/playbook/
tags: [incidents, culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>playbook</span>
    </div>
    <h1>I'm really sure I copy pasted all the commands exactly as written</h1>
    <p class="page-subtitle">a document written in the past, for a system that no longer exists, consulted in the present</p>
</div>

<div class="content-section">
    <img src="/playbook/playbook.jpg" alt="A scorchingly executed playbook" />

    <p>Oh maybe there was a typo right here... Wait when was the last time this was updated? Wait.. how much of S3 is down?... Can someone update the status... no? Hmmmmm</p>

    <p>Credit to <a href="https://twitter.com/bobtfish">@bobtfish</a> and <a href="https://twitter.com/mbaxa">@mbaxa</a></p>
</div>

<div class="content-section">
    <h2>The Theoretical Safety Net</h2>
    <p>The runbook exists because someone had the right idea at some point. Incidents are stressful. Stressed people make bad decisions. A written procedure removes the cognitive load of figuring out what to do next when you cannot think straight. This is a good idea. The runbook is a good idea in theory.</p>
    <p>In practice, the runbook is a historical artifact. It documents the system as it existed when the runbook was written, which was during or shortly after a previous incident, which means the author was also stressed, which means some of the steps are documented with the specificity of someone who wanted to get back to sleep. The flag that the runbook tells you to pass was deprecated in version 3. The service it tells you to restart was renamed when the team did the Great Kubernetes Migration. The dashboard link goes to a URL that now returns a 404 because someone reorganized Grafana last quarter.</p>
    <p>You discover all of this at 3am, sequentially, one step at a time.</p>

    <div class="quote-box">
        <blockquote>The runbook is not wrong. It is correct for a system that used to exist. The gap between that system and the current one is undocumented.</blockquote>
        <cite>— What the postmortem will say, diplomatically</cite>
    </div>
</div>

<div class="content-section">
    <h2>The Action Item That Does Not Close</h2>
    <p>Every postmortem from every incident where the runbook was wrong produces the same action item: update the runbook. This action item enters the backlog. It is labeled medium priority because the incident is resolved and the urgency has dissipated. It competes with feature work and tech debt and the other medium-priority items from the last three postmortems.</p>
    <p>The person who knows what the runbook should say is the person who just resolved the incident. That person is now asleep. When they wake up, they have a full queue of other work. The runbook update is on the list but it is not at the top of the list. This is not negligence. It is the rational response to a backlog that is longer than any sprint can clear.</p>
    <p>The next incident finds the runbook in exactly the same state. The inner monologue — <em>wait, when was this last updated</em> — plays out again. Another action item is written. The cycle is self-sustaining and nobody designed it that way.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/petecheslock/" class="nav-button">← Pete Cheslock</a>
    <a href="/.wip/postmortems/" class="nav-button">Next: Postmortems →</a>
</div>
