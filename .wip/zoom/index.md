---
layout: wip
title: "Zoom - Accidental Critical Infrastructure"
permalink: /.wip/zoom/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Zoom</span>
    </div>
    <h1>Putting the Tell into Teleconferencing Since 2011</h1>
    <p class="page-subtitle">approved by nobody in IT, depended on by everyone in the company</p>
</div>

<div class="content-section">
    <h2>The Accidental Infrastructure Story</h2>
    <p>In February 2020, Zoom had approximately 10 million daily meeting participants. By April 2020, that number was 300 million. The entire global workforce discovered, more or less simultaneously, that their company's ability to function now depended on a video calling application that IT had not selected, evaluated, or approved.</p>

    <p>It was just there. Someone on a sales team had started using it in 2018 because the screensharing worked better. Then their team. Then the team they met with. By the time the offices closed, Zoom was load-bearing and the people who would normally have had opinions about this had not been consulted.</p>

    <div class="quote-box">
        <blockquote>
            <p>"was it DNS?"</p>
            <cite>— @sdmouton, October 2020, on the eternal question</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Security Situation</h2>
    <p>When something goes from 10 million to 300 million users in three months, the security assumptions built for the smaller number do not automatically scale. Zoom had a period where "Zoombombing" was a word that existed and was covered in news outlets that do not normally cover video conferencing architecture.</p>

    <p>Uninvited attendees were joining calls. Meeting IDs were short enough to enumerate. The waiting room feature existed but was not on by default. The default was set for the smaller, more controlled environment that had existed before everything changed.</p>

    <div class="fun-facts">
        <h3>The 2020 Zoom Incident Log (Abbreviated)</h3>
        <ul>
            <li><strong>March 2020:</strong> Meetings do not require passwords by default. This becomes a relevant fact very quickly.</li>
            <li><strong>April 2020:</strong> End-to-end encryption claims investigated. The encryption was real. The "end-to-end" description was, in some configurations, optimistic.</li>
            <li><strong>April 2020:</strong> Attention Tracking feature (which notified hosts when a participant hadn't had the Zoom window in focus for 30 seconds) discovered, reported, removed within days.</li>
            <li><strong>April 2020:</strong> Zoombomb incidents at school board meetings, recovery group meetings, corporate all-hands. The attack surface was any meeting ID that anyone had shared in an email.</li>
            <li><strong>Ongoing:</strong> Zoom fixed things. Zoom is a better product than it was in March 2020. This is true. It is also true that the company had 90 days to fix problems that ideally would have been addressed before 300 million people depended on the software.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>IT's Relationship with Zoom</h2>
    <p>IT didn't choose Zoom. IT inherited Zoom. There is a meaningful difference between these two situations, which is that in the first case you have evaluated security, negotiated a contract, integrated SSO, and set sensible defaults before anyone is depending on the thing. In the second case, you are doing all of that while the thing is already in production and the CEO is using it for the board meeting.</p>

    <p>The enterprise licensing conversation happened after the usage was already there. The SSO integration happened while employees were already connecting with personal accounts. The security hardening guidance was distributed to users who had been on the platform for six months and had existing habits.</p>

    <div class="quote-box">
        <blockquote>
            <p>"The entire company's remote work capability is built on a video app that the shadow IT inventory found after it was already deployed. We're retroactively governing critical infrastructure. This is fine."</p>
            <cite>— an IT manager, not saying this out loud</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Animated Background</h2>
    <p>Our friend <a href="https://github.com/jraidan">Jerry</a> contributed a wonderful animated tire fire Zoom background, which is available <a href="/tire_fire.mp4">here</a> and represents the correct energy for most video calls.</p>

    <p>The background is a metaphor. It is also a video file. Put it behind you in your next all-hands and watch how long it takes anyone to notice, which tells you something about how closely people are paying attention to the thing that replaced in-person meetings and became the primary medium through which the organization understands itself.</p>

    <p>Was it DNS? It's always DNS. Zoom itself had a DNS incident in 2020. Of course it did. Everything is DNS eventually.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/dns/" class="nav-button">DNS</a>
    <a href="/.wip/aws/" class="nav-button">AWS</a>
    <a href="/.wip/incident-management/" class="nav-button">Incident Management</a>
    <a href="/.wip/" class="nav-button">All Disasters</a>
</div>
