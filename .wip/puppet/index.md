---
layout: wip
title: "Puppet - There's no order to this tire fire"
permalink: /.wip/puppet/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Puppet</span>
    </div>
    <h1>There's no order to this tire fire!</h1>
    <p class="page-subtitle">configuration management for people who enjoy consequences</p>
</div>

<div class="content-section">
    <img src="/puppet/puppet-on-fire.gif" alt="RELAX, TODAY IS THE FIRST DAY OF THE REST OF YOUR LIFE." class="hero-image">

    <pre><code>$ puppet help help help help help
Error: Puppet help only takes two (optional) arguments: a subcommand and
an action
Error: Try 'puppet help help help' for usage</code></pre>
</div>

<div class="content-section">
    <h2>The Family Tree</h2>
    <p>Puppet came out of CFEngine's shadow in 2005. Luke Kanies had worked with CFEngine, found it powerful and impenetrable in roughly equal measure, and built something that traded CFEngine's C-like terseness for a Ruby DSL that felt, at the time, more approachable. The desired state concept carried over — describe what you want, let the tool figure out how to get there — but the syntax was different and there was a proper company behind it, which mattered for enterprise sales.</p>

    <p>The genealogy matters because Puppet inherited CFEngine's core insight and some of its pathologies. The insight: convergence is better than imperative scripts. The pathology: the gap between "describe what you want" and "get what you described" is where all the interesting failure happens, and that gap grows with catalog complexity in ways that are not linear.</p>
</div>

<div class="content-section">
    <h2>The Help Problem</h2>
    <p>The recursive help error is not a cherry-picked edge case. It is the `puppet help` command applied one too many times, asking for help about the help for help, and the system responding by telling you that you have asked incorrectly and that the correct way to ask is also incorrect. This is a fair metaphor for the Puppet documentation experience circa 2012, when the answer to most questions was "have you read the Hiera documentation" and the Hiera documentation assumed you already understood Hiera.</p>

    <p>Puppet's DSL made simple things look simple and complex things look like dependency graphs, because they were dependency graphs. Ordering resources — ensuring a package installed before a service started, ensuring a file existed before a template rendered — required explicit relationship declarations that interacted with each other in ways that catalog compilation would surface or not surface depending on the run order. The error message "dependency cycle detected" was the system being honest. The cycle was real. You put it there. Finding it required reading the graph.</p>
</div>

<div class="content-section">
    <h2>The Catalog</h2>
    <p>At sufficient scale, Puppet catalog compilation becomes a load-bearing operation. The Puppet master compiles a catalog for each agent — a complete description of that node's desired state, derived from manifests, modules, Hiera data, and whatever facts the agent reported about itself. A catalog compilation that takes ten seconds per node is fine at fifty nodes and a meaningful problem at five hundred. The PuppetDB, the stored configs, the exported resources — the infrastructure for managing the infrastructure develops its own operational requirements, which is the kind of recursive problem that the `puppet help help help` error captures at a smaller scale.</p>
</div>

<div class="quote-box">
    <blockquote>It's declarative until you need it to happen in a specific order, at which point it's declarative with arrows.</blockquote>
    <cite>— everyone who ever wrote a before/require chain</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
