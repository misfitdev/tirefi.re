---
layout: wip
title: "OK, Zoomers"
permalink: /.wip/zoom/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Zoom</span>
    </div>
    <h1>putting the tell into teleconferencing since 2011</h1>
    <p class="page-subtitle">approved by nobody in IT. depended on by everyone in the company.</p>
</div>

<div class="content-section">
    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">was it DNS?</p>&mdash; shaun of the 🍞 (@sdmouton) <a href="https://twitter.com/sdmouton/status/1317231192672997377?ref_src=twsrc%5Etfw">October 16, 2020</a></blockquote>
    <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

    <p>Thanks very much to our friend Jerry for this wonderful animated Zoom background, linked <a href="https://tirefi.re/tire_fire.mp4">here</a> for your enjoyment.</p>
</div>

<div class="content-section">
    <h2>The Accidental Infrastructure Story</h2>
    <p>In February 2020, Zoom had approximately 10 million daily meeting participants. By April 2020, that number was 300 million. The entire global workforce discovered, more or less simultaneously, that its ability to function depended on a video calling application that IT had not selected, evaluated, or approved for enterprise use.</p>

    <p>It was just there. Someone on a sales team had started using it in 2018 because the screensharing worked better than WebEx. Then their team. Then the teams they met with. Then their customers' teams. By the time the offices closed in March 2020, Zoom was load-bearing and the people who would normally have had opinions about the enterprise software stack had not been consulted. The SSO integration happened after employees were already using personal accounts. The security hardening policies were written for a system already in production.</p>

    <p>This is shadow IT at civilizational scale. The IT team's job was, in a compressed timeline, to retroactively govern critical infrastructure they did not select and could not have shut down even if they'd wanted to. This is a genuinely hard problem. Most of them did it without complaining, which deserves acknowledgment.</p>
</div>

<div class="content-section">
    <h2>The Security Issues, Documented</h2>
    <p>When something goes from 10 million to 300 million users in three months, the security assumptions built for the smaller number do not automatically scale. Meeting IDs were short enough to enumerate. Waiting rooms were not on by default. End-to-end encryption was described in ways that turned out to be optimistic for certain configurations. "Zoombombing" — uninvited participants joining meetings with publicly-shared IDs — became a real operational problem for school boards, recovery groups, and corporate all-hands presentations.</p>

    <p>Zoom fixed these things. By mid-2020, the defaults were better, the encryption claims were more precise, and the meeting security controls were more prominent in the UI. The company had roughly 90 days to address problems that ideally would have been addressed before 300 million people depended on the software. They addressed most of them. The postmortem, which nobody formally wrote, would note that the speed of the response was impressive and that the root cause was the speed of the adoption rather than negligence in the original engineering.</p>

    <p>Zoom had a DNS incident in 2020, during the period when it was carrying the world's video traffic. Of course it did. Everything is DNS eventually. @sdmouton knew.</p>
</div>

<div class="content-section">
    <h2>Zoom Fatigue Is a Medical Term Now</h2>
    <p>"Zoom fatigue" entered the clinical literature in 2021. The hypothesis, supported by subsequent research, is that video calls require more cognitive effort than in-person conversation: maintaining eye contact with a camera, monitoring your own face in the corner of the screen, parsing facial expressions on a tiled grid of faces at varying levels of compression and latency. The effort is real. It's measurable. It's the reason the 4pm all-hands on video feels worse than the 4pm all-hands in a conference room felt.</p>

    <p>"You're on mute" became the defining phrase of the era. As an ops metaphor it works on multiple levels: the person with important information who cannot be heard, the interface that defaults to silencing participants, the organizational situation where the infrastructure team has been saying the thing but the channel is muted and nobody noticed. You're on mute. You've been on mute. We're not sure when you got muted. Can you unmute?</p>
</div>

<div class="quote-box">
    <blockquote>The animated tire fire background is available at <a href="https://tirefi.re/tire_fire.mp4">tirefi.re/tire_fire.mp4</a>. Put it behind you in your next all-hands and observe how long it takes anyone to mention it. That interval is your answer.</blockquote>
    <cite>— Jerry, who made this, correctly understanding the assignment</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
