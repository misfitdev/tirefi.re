---
layout: wip
title: "Jess Frazelle - Ships Things"
permalink: /.wip/jessfraz/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Jess Frazelle</span>
    </div>
    <h1>Someone Who Actually Ships Things</h1>
    <p class="page-subtitle">a rarity, documented for posterity</p>
</div>

<div class="content-section">
    <h2>Context</h2>
    <p>The containers and cloud-native space has historically had a large population of people who are very good at talking about shipping things. Conference talks about velocity. Blog posts about delivery culture. Keynotes about the future of infrastructure, delivered by someone who hasn't touched production in four years.</p>

    <p>Jess Frazelle is not that person. This page exists because that distinction is worth noting explicitly.</p>
</div>

<div class="content-section">
    <h2>The Work</h2>
    <p>When Frazelle was at Docker, she was one of the primary maintainers on Docker itself — not the marketing deck, the actual codebase. She wrote runC namespace and capabilities support. She worked on the container security model when "container security model" was not yet a phrase that enterprise vendors had discovered and turned into a product category.</p>

    <p>She went to Google and worked on Kubernetes. Then she joined Microsoft to work on Azure container infrastructure. At each stop, the output was code that other people ran in production, not frameworks for thinking about the problem.</p>

    <p>gVisor is the clearest example: a user-space kernel that intercepts syscalls to give containers stronger isolation than namespace-based approaches. The problem it solves is real. The implementation is technically ambitious. It shipped. You can run it. Google runs it in production at scale. This is the full loop, and it is less common than it should be.</p>
</div>

<div class="content-section">
    <h2>On Security Work That Actually Reduces Attack Surface</h2>
    <p>A lot of container security work in the mid-2010s was aspirational. Threat models written for blog posts. Security guidelines that assumed you had already solved all the other problems first. Recommendations to "use the principle of least privilege" accompanied by no explanation of how to implement it in a running container on a shared host.</p>

    <p>Frazelle's security work was operational. Seccomp profiles you could actually apply. Capabilities analysis grounded in what syscalls containers actually needed versus what they were getting. Writing that explained the underlying kernel mechanisms rather than papering over them with abstraction.</p>

    <p>The <a href="https://blog.jessfraz.com/">blog</a> is still worth reading. Not as historical artifact — as reference material. The posts on container internals and Linux security primitives have not aged poorly because they were about how things actually work, not about the current conference narrative.</p>
</div>

<div class="content-section">
    <h2>The Relevant Observation</h2>
    <p>The ops and infrastructure world has always had a gap between people who explain systems and people who build them. The explainers are more visible — they have more time to write, to speak, to develop a public presence, because explaining is less demanding than building. The builders are often quiet because they're building.</p>

    <p>This is not a complaint about explainers. Explanation has genuine value. But the industry has a tendency to optimize for the visible, and the visible in tech skews heavily toward people who tweet about shipping things rather than people who ship things.</p>

    <p>Frazelle is on the short list of people where the public record matches the commit history. The site's original entry was an image and a link. That was enough.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/infrakit/" class="nav-button">Related: InfraKit →</a>
</div>
