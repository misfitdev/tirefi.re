---
layout: wip
title: "Declarative, self-igniting tirefires"
permalink: /.wip/infrakit/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>InfraKit</span>
    </div>
    <h1>Declarative, self-igniting tirefires</h1>
    <p class="page-subtitle">Presented at DockerCon 2016. Last commit: 2019. The pattern survived. The project did not.</p>
</div>

<div class="content-section">
    <img src="/infrakit/infrakit.jpg" alt="It's probably fine..." />
    <p>Breaking infrastructure into simple, pluggable <a href="https://tirefi.re">tirefires</a>.</p>
</div>

<div class="content-section">
    <h2>The Docker Inc Graveyard</h2>
    <p>InfraKit was presented at DockerCon 2016 as a framework for breaking infrastructure provisioning into composable, self-healing components. The pitch was compelling: pluggable backends, a declarative desired-state model, convergence loops that would keep your infrastructure honest. The GitHub repository went quiet in 2019. It shares its burial plot with Docker Swarm, Notary, Universal Control Plane, and Docker Trusted Registry — a whole wing of the cemetery dedicated to things Docker Inc built before deciding that Kubernetes had won and pivoting accordingly.</p>

    <p>This is the pattern. The infrastructure tooling company builds something that competes, however obliquely, with the thing their customers already use. The customers adopt it because the company is credible and the tool is well-presented. The company's business priorities shift. The tool stops receiving commits. The customers are left holding a dependency that will never see another security patch.</p>

    <p>InfraKit's actual contribution was proving out the desired-state + convergence-loop model for infrastructure at a time when that pattern wasn't yet table stakes. Terraform absorbed the lesson. Terraform is still shipping. The distinction between a tool that survives and one that doesn't is rarely about technical merit — it's about whether the org behind it can make the economics work indefinitely.</p>
</div>

<div class="quote-box">
    <blockquote>The declarative infrastructure pattern survived. InfraKit did not. This is not a contradiction.</blockquote>
    <cite>— Someone who migrated off it in 2020</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
