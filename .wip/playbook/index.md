---
layout: wip
title: "Playbook - Ask Dave"
permalink: /.wip/playbook/
tags: [incidents, culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Playbook</span>
    </div>
    <h1>Ask Dave</h1>
    <p class="page-subtitle">the runbook was accurate in 2019. Dave left in 2021. it is now 3am.</p>
</div>

<div class="status-banner warning">
    <strong>Alert:</strong> high_error_rate FIRING — Runbook: <a href="#">https://wiki/runbooks/high-error-rate</a> — Last updated: 847 days ago
</div>

<div class="content-section">
    <h2>The Document</h2>
    <p>Every alert should have a runbook. This is correct. The runbook should tell you what the alert means, what causes it, and what to do. This is also correct. The runbook should be kept up to date as the system changes.</p>
    <p>The runbook has not been kept up to date as the system changed.</p>
    <p>Step 3 tells you to restart the service on app-server-04. app-server-04 was decommissioned when the team moved to Kubernetes in 2022. Steps 5 through 9 reference a database that was migrated. The final step says "if the above doesn't resolve the issue, escalate to Dave."</p>
    <p>Dave's last day was fourteen months ago. Dave is at a different company now. Dave probably still knows how this works. You do not have Dave's number.</p>
</div>

<div class="content-section">
    <h2>How Runbooks Decay</h2>
    <p>The runbook was accurate when it was written. Someone spent real time on it. They walked through the failure scenario, documented the steps, added context. It was a good runbook. Then the system changed and nobody updated the runbook because updating the runbook was not on anyone's sprint board.</p>
    <p>Updating a runbook generates no velocity. You cannot demo it. It does not close any tickets. The system still works whether the runbook is current or not — right up until 3am when you need it and it is not current.</p>

    <div class="fun-facts">
        <h3>Signs a Runbook Has Decayed</h3>
        <ul>
            <li>References a host by hostname rather than by service or label</li>
            <li>Contains the phrase "ask [name of person who left]"</li>
            <li>Assumes you have SSH access to a production box</li>
            <li>Step 1 is "check the dashboard" with no link to the dashboard</li>
            <li>Last modified date predates the current architecture by at least one major migration</li>
            <li>"NOTE: This may not work in all environments" with no further elaboration</li>
            <li>The Confluence page it lives on requires a login no one on the current team has</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The 3am Experience</h2>
    <p>You have been paged. You are awake. You have the alert context, you have the dashboard open, and you have the runbook. The runbook says to check the queue depth on the worker service. You check. The queue depth is fine. The runbook does not have a step for when the queue depth is fine.</p>
    <p>You go to step 4, which is a set of commands to run. The commands produce output that is different from the expected output in the runbook. The runbook does not explain what to do when the output is different. The runbook was written by someone who only tested the happy path of the unhappy path.</p>
    <p>You resolve the incident using knowledge you personally acquired over four years of working on this system. You do not update the runbook. You are tired. You will update it later. This is how the cycle continues.</p>

    <div class="quote-box">
        <blockquote>
            <p>"The runbook is a starting point, not a script."</p>
            <cite>— What people say to explain why runbooks are always wrong</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>What a Good Runbook Actually Is</h2>
    <p>A good runbook is a document that a competent engineer with no context can use at 3am to reduce mean time to resolution. It is not a tutorial. It is not comprehensive documentation. It is the specific sequence of steps that actually works for this specific alert in this specific system as it exists right now.</p>
    <p>The problem is that writing that document requires the person who knows the system to sit down and write it, and that person is usually the one getting paged, and after they resolve the incident at 3am they are not writing documentation. They are going back to sleep.</p>
    <p>The action item from every postmortem: update the runbook. The priority of that action item in the next sprint: medium. The number of mediums that become highs before the next incident: zero.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Actually can someone just write this up in the wiki before the end of the week?"</p>
            <cite>— End of retro. Nobody wrote it up. The wiki is still wrong.</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/petecheslock/" class="nav-button">← Pete Cheslock</a>
    <a href="/.wip/postmortems/" class="nav-button">Next: Postmortems →</a>
</div>
