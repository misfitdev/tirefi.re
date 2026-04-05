---
layout: wip
title: "Postmortems - We'll Fix It Next Sprint"
permalink: /.wip/postmortems/
tags: [incidents]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Postmortems</span>
    </div>
    <h1>We'll Fix It Next Sprint</h1>
    <p class="page-subtitle">blameless, actionable, and subsequently ignored</p>
</div>

<div class="content-section">
    <h2>The Incident</h2>
    <p>Something went down. Users were affected. The on-call engineer was paged and resolved it, possibly with help, possibly at an hour when humans should not be working. A timeline was constructed. A contributing factors list was assembled. Everyone agreed it was a systemic issue, not a people issue.</p>
    <p>This is the good part. The blameless postmortem is a genuine intellectual achievement. The idea that incidents have causes rooted in systems rather than in individual failure — that the engineer who made the mistake was set up to make it — is correct and humane and took this industry a long time to learn.</p>
    <p>What happens next is where things get complicated.</p>
</div>

<div class="content-section">
    <h2>The Action Items</h2>
    <p>The postmortem produced action items. There are seven of them. They are specific and time-bounded. They address the contributing factors. They would, if completed, meaningfully reduce the likelihood of this incident recurring.</p>
    <p>Two of them are in the backlog. Three of them are in the backlog but tagged as "tech debt" in a separate column. One of them requires a conversation with another team that has not been scheduled. The seventh action item is "improve monitoring," which is vague enough that it will never be claimed by anyone.</p>
    <p>By the time the next planning session happens, the incident is four weeks old. The urgency has faded. There are new priorities. The action items are still in the backlog. They are now competing with eight other things that also felt urgent in the moment they were filed.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We should really get to those postmortem items. Can we prioritize them this sprint?"</p>
            <cite>— Every sprint planning. Items deprioritized by end of sprint planning.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Same Incident, Six Months Later</h2>
    <p>The incident recurs. The timeline is slightly different. The contributing factors are identical. The postmortem from six months ago is referenced in the new postmortem. Someone notes that several action items from the previous postmortem were never completed.</p>
    <p>There is a moment of silence for the action items that were never completed.</p>
    <p>New action items are written. They are, in some cases, the same action items with different wording. They go into the backlog.</p>

    <div class="fun-facts">
        <h3>The Postmortem Lifecycle</h3>
        <ul>
            <li>Incident occurs. Everyone is tired and stressed.</li>
            <li>Incident resolved. Everyone is tired and relieved.</li>
            <li>Postmortem scheduled. Everyone is tired.</li>
            <li>Postmortem conducted. It goes well. Action items are clear.</li>
            <li>Action items enter backlog. They are medium priority.</li>
            <li>Sprint planning: action items are noted, deferred to next sprint.</li>
            <li>Next sprint: same.</li>
            <li>Incident recurs. Timeline references previous postmortem.</li>
            <li>Nobody is blamed. The system is to blame. The system is still the same system.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>What the Postmortem Is Actually For</h2>
    <p>The postmortem is not useless. Done well, it builds shared understanding. It lets the people involved talk about what happened without it being a performance review. It surfaces information about the system that was distributed across different people's heads and is now written down somewhere.</p>
    <p>That last part matters even when the action items don't get done. The written account of what happened is institutional memory. The next person who looks at this part of the system will find the postmortem and know something they wouldn't have known.</p>
    <p>Whether they find the postmortem or find the same failure again first is a different question.</p>

    <div class="quote-box">
        <blockquote>
            <p>"The goal is not to prevent all future incidents. The goal is to get better at handling them."</p>
            <cite>— True. Also sometimes said to explain why the action items don't have to get done.</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/playbook/" class="nav-button">← Playbook</a>
    <a href="/.wip/president/" class="nav-button">Next: President of On-Call →</a>
</div>
