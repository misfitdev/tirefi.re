---
layout: wip
title: "InfraKit - Declarative, Self-Igniting Tirefires"
permalink: /.wip/infrakit/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>InfraKit</span>
    </div>
    <h1>The Infrastructure Abstraction Graveyard</h1>
    <p class="page-subtitle">solving the problem of too few tools to maintain</p>
</div>

<div class="content-section">
    <h2>A Brief History of Tools That Were Going to Fix Everything</h2>
    <p>Every few years, someone looks at the state of infrastructure tooling and thinks: what if we had one more layer of abstraction? What if the problem was that we hadn't abstracted enough? What if the solution to complexity was a tool that unified all the other tools, which would then need its own plugins, its own config format, its own mental model, and its own Slack channel for debugging obscure edge cases?</p>

    <p>InfraKit was Docker's answer to this question in 2016. It was declarative. It was pluggable. It was going to let you describe your infrastructure as simple, composable pieces that would converge on their desired state like Kubernetes, but lighter, but more flexible, but also yours to maintain.</p>

    <p>The GitHub repository went quiet in 2019. The last commit fixed a typo.</p>
</div>

<div class="content-section">
    <h2>The Pattern</h2>
    <p>InfraKit did not fail alone. It failed in excellent company:</p>

    <ul>
        <li><strong>Flocker:</strong> Persistent storage for Docker, before Docker had persistent storage figured out. ClusterHQ shipped it, then ran out of money in 2016. The containers lived. The company did not.</li>
        <li><strong>Apache Mesos:</strong> Datacenter operating system. Two-level scheduling. Twitter ran it at scale, which meant every startup needed it too. Then Kubernetes happened. Mesosphere became D2iQ, which is a different company with a different strategy and a name that is harder to pronounce.</li>
        <li><strong>CoreOS rkt:</strong> Docker was doing containers wrong. rkt would do them right. Pods, not daemons. Composable, not monolithic. RedHat acquired CoreOS in 2018 and merged everything into the Kubernetes ecosystem. rkt was deprecated in 2019.</li>
        <li><strong>Nomad (the early years):</strong> HashiCorp's scheduler is still shipping and genuinely useful. But for a stretch there, its primary value proposition was "like Kubernetes but you don't need a PhD." The PhD requirement hasn't gone away. Nomad adapted. Most of its contemporaries did not.</li>
    </ul>
</div>

<div class="content-section">
    <h2>The Promise and What Actually Happened</h2>
    <p>The pitch for all of these tools was the same: the existing abstractions are wrong. We've identified the correct abstraction. Here it is. Once you adopt it, everything becomes simple.</p>

    <p>The reality was also the same: the new abstraction solved the old problem while creating three new ones. Your engineers spent six months learning the new mental model. One of them became the internal expert. The internal expert left for a company that was using Kubernetes. You were now maintaining an InfraKit/Mesos/Flocker installation with no one who fully understood it, a sparse community, and documentation that stopped being updated the same month the lead engineer moved on.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We're replacing our legacy infrastructure tooling with InfraKit to reduce operational complexity."</p>
            <cite>— Your ops lead, 2016. They left in 2018. No one knows what InfraKit does anymore.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>What This Means for You</h2>
    <p>If you are running InfraKit in production, you are not reading this page. You are too busy keeping InfraKit running in production. This page is for everyone who is about to adopt the new hotness that will definitely not end up in the same graveyard.</p>

    <p>The questions to ask before adopting any infrastructure abstraction tool: Is this project owned by a company that needs to charge for it to exist? What is the plan when the company's priorities change? Who on your team will own this in three years? What does the migration off this tool look like?</p>

    <p>These questions are inconvenient to ask at the beginning of an adoption. They become much more convenient to have asked, retrospectively, when you're staring at a GitHub repo with three open issues and a last commit date of "4 years ago."</p>

    <p>The tire fires aren't the tools. The tire fires are the decisions. The tools just burn.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/docker/" class="nav-button">Related: Docker →</a>
</div>
