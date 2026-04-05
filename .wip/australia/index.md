---
layout: wip
title: "Australia - Everything Is Trying to Kill Your Uptime"
permalink: /.wip/australia/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Australia</span>
    </div>
    <h1>Australia</h1>
    <p class="page-subtitle">A continent-sized lesson in hostile environments</p>
</div>

<div class="content-section">
    <h2>The Infrastructure Problem</h2>
    <p>Australia is physically large, sparsely populated outside a handful of coastal cities, and historically underserved by subsea cable capacity relative to its economic weight. For most of the internet's history, "ap-southeast-2" meant your traffic was taking a long round trip to Sydney and you were paying latency penalties for it. The continent also has a habit of catching fire in ways that close data centers, knock out power grids, and remind infrastructure engineers that the environment is not, in fact, an abstraction layer.</p>

    <p>The Melbourne industrial fire that the original page linked to — that's not metaphor. That's a tirefire. A literal one. Australia does that.</p>
</div>

<div class="content-section">
    <h2>Everything Is Trying to Kill You</h2>
    <p>Australia's fauna is famously lethal. This is true, but it's not the interesting part. The interesting part is the infrastructure equivalent: bushfires that spread faster than incident response can react, flash flooding in cities built around rivers that forget they're rivers, heat events that push data center cooling systems past their rated capacity, and a power grid that has been described by its own operators as "interesting" during summer peak load, which is the Australian utility equivalent of a severity-1 page.</p>

    <p>Running infrastructure in Australia is a graduate seminar in failure modes that don't appear in the standard curriculum. Your runbooks were written for US-East failure scenarios. The scenario you're facing involves a smoke event affecting ambient air intake temperatures at a physical facility and a cooling vendor who is also in the affected area. Good luck. The postmortem will be instructive.</p>
</div>

<div class="fun-facts">
    <h3>Australian infrastructure facts, unverified but plausible</h3>
    <ul>
        <li>The cloud region opened in 2012. The first major outage involved an event that AWS described as "unusual environmental conditions," which in Sydney means it was hot.</li>
        <li>Latency from Sydney to the US West Coast: approximately 150ms. Latency from the internal team trying to reach you during an incident: also approximately 150ms, but felt longer.</li>
        <li>The NBN (National Broadband Network) is a cautionary tale about large-scale infrastructure programs that started one way and finished a different, worse way. This is not unique to Australia but they really committed to the bit.</li>
        <li>Australia has strict data sovereignty requirements. Your "deploy everywhere" strategy stops at the customs declaration.</li>
        <li>The time zone offset makes on-call interesting. "Business hours" support from your Australian team lands during the US night shift. This is not their problem.</li>
    </ul>
</div>

<div class="content-section">
    <h2>The Actual Tirefire</h2>
    <p>The original page linked to an ABC News photo essay about a Melbourne industrial fire. Large-scale industrial fires in Australia are a real and recurring infrastructure event — tyre dumps, chemical facilities, recycling centers. They produce smoke plumes visible from space. They close roads, affect air quality across regions, and occasionally require evacuation of nearby facilities.</p>

    <p>The reason this page exists on a site called tirefi.re is that the metaphor is literal here. Sometimes the tire fire is a tire fire. Sometimes the infrastructure disaster is an actual fire at an infrastructure facility. The postmortem template covers both cases. The "contributing factors" section will need more room.</p>
</div>

<div class="quote-box">
    <blockquote>The spider is the size of your hand. The fire is the size of Belgium. The latency is 160ms. You're on-call this weekend. Welcome to ap-southeast-2.</blockquote>
    <cite>— The unofficial region onboarding guide</cite>
</div>

<div class="content-section">
    <h2>Straya</h2>
    <p>There is a specific brand of Australian tech culture that is deeply unimpressed by everything Silicon Valley considers revolutionary. They have seen enough failed infrastructure projects, lived through enough budget cuts, and dealt with enough "she'll be right" capacity planning to have a natural immunity to hype. This is probably the most useful trait an ops person can have. They didn't develop it intentionally. The continent just produces it as a survival mechanism.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/americancraft/" class="nav-button">← American Craft</a>
    <a href="/.wip/byod/" class="nav-button">BYOD →</a>
</div>
