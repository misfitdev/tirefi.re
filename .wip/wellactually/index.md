---
layout: wip
title: "Well, Actually..."
permalink: /wellactually/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Well, Actually</span>
    </div>
    <h1>Well, Actually...</h1>
    <p class="page-subtitle">technically correct. contextually useless. delivered with confidence.</p>
</div>

<div class="content-section">
    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">Where do mansplainers get their water?<br>In a "Well, actually...".<br><br>I laughed.</p>&mdash; Eliza Goroya (@ElizaGoroya) <a href="https://twitter.com/ElizaGoroya/status/730727302364049408?ref_src=twsrc%5Etfw">May 12, 2016</a></blockquote>
    <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

<div class="content-section">
    <h2>The Correction</h2>
    <p>Someone is explaining a problem. They have gotten the broad shape of it right. They are communicating effectively. The person receiving the explanation understands what is happening and what needs to happen next.</p>

    <p>In the thread, or in the IRC channel, or at the back of the incident bridge, someone has found the inaccuracy. It is real. It is small. It is beside the point. They will share it now because the factual record requires it. "Well, actually, TCP doesn't guarantee delivery in that way. What you're describing is more of a reliability layer concern." The meeting continues. The original discussion was about a production outage. The TCP clarification will not help restore service. The person who provided it has restored something else: the accuracy of the record, as they understand it, and their status as the person who understood it accurately.</p>

    <p>This is the well-actually in its natural habitat. It is not always malicious. Sometimes it is genuinely useful — when precision matters, when the inaccuracy will compound if left uncorrected, when the fix requires the exact terminology. But those cases tend to announce themselves. The well-actually that nobody needed is recognizable precisely because it arrives without invitation and departs without contributing to the forward motion of the conversation.</p>
</div>

<div class="content-section">
    <h2>Ops Culture and the Territory-Marking Correction</h2>
    <p>The IRC-era ops community had a specific relationship with the well-actually. RTFM was its short form: the correction delivered not as information but as judgment. The person asking did not read the manual. The manual exists. This interaction is beneath the dignity of someone who has read the manual. The person who typed RTFM has been in this channel for eleven years and answered this question seventeen times and is tired.</p>

    <p>What RTFM frequently failed to account for was that the manual was wrong, or out of date, or didn't cover the specific version with the regression that had been filed eighteen months ago and was still open. The person asking had read the manual. The manual had not helped them. RTFM as a response closed the conversation without providing the actual information, which is a reasonably accurate description of the well-actually more broadly.</p>

    <p>The Slack era made this more visible. The well-actually in a thread is public in a way the IRC correction was not. The audience is larger, the record is searchable, and the person being corrected can observe — and everyone else can observe — exactly how the exchange went. This produced some amount of social accountability that IRC did not have, and also produced an entirely new set of pathologies around public corrections in channels with large audiences.</p>
</div>

<div class="content-section">
    <h2>When the Well-Actually Is Right</h2>
    <p>Security reviews. Standards compliance. Incident root cause analysis where the exact mechanism of failure determines the remediation. Postmortem action items where the wrong framing leads to the wrong fix. These are real cases where precision matters more than flow and the well-actually is doing actual work.</p>

    <p>The distinction is whether the correction changes what happens next. If the fix is the same regardless of whether the framing is precisely accurate, the correction is serving the person making it rather than the conversation. If the fix is different because of the distinction, raise it. The tell is usually timing: the well-actually that arrives during the incident is usually territory-marking. The well-actually that arrives in the postmortem, framed as a question about whether the distinction matters for the action items, is usually doing something useful.</p>
</div>

<div class="quote-box">
    <blockquote>The problem isn't being wrong. The problem is being right in a way specifically designed to make someone feel bad about having been approximately right.</blockquote>
    <cite>— a postmortem facilitator, privately</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
