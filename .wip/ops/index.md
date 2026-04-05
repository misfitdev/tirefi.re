---
layout: wip
title: "Ops - here, hold this."
permalink: /.wip/ops/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Ops</span>
    </div>
    <h1>here, hold this.</h1>
    <p class="page-subtitle">the three most dangerous words in any datacenter</p>
</div>

<div class="content-section">
    <pre><code>$ cap production extinguish
$ fab -H production extinguish
$ ansible production -m command extinguish
$ for host in $(cat ~/production) ; do \
  ssh ${host} "sudo production" ; done</code></pre>

    <img src="/ops/ops.png" alt="ops" class="hero-image">
</div>

<div class="content-section">
    <h2>The Bag</h2>
    <p>"Here, hold this" is how ops ownership gets transferred. It happens at the end of a meeting, in a Slack DM, or via a ticket assigned without discussion. The thing being held is never described completely. It is a system, a service, a vendor relationship, a cron job that runs at 3 AM and has never been documented because the person who wrote it understood it implicitly and is now at a different company. You are holding it now. Congratulations.</p>

    <p>Ops is the discipline of holding things other people built, keeping them running in environments that were never quite finalized, and being responsible for outcomes you had limited input into. The deployment tools change — Capistrano gave way to Fabric gave way to Ansible gave way to whatever the current thing is — but the dynamic is stable. Someone builds it. Someone else runs it. The person running it was not in the room when the architectural decisions were made.</p>
</div>

<div class="content-section">
    <h2>Ownership</h2>
    <p>The commands above are all the same command. They are attempts to run the same operation against production using whichever deployment tool was current when that part of the infrastructure was built. A mature ops environment has several of these layers coexisting. The Capistrano deploy is for the Rails app from 2012. Fabric is for the Python service someone wrote in 2015. Ansible is for everything since. The for loop with SSH is for the thing that predates all of it and has never been touched because it works.</p>

    <p>None of this is irrational. Each tool was the right choice when it was chosen. The problem is that infrastructure persists and organizations change, and the person who understood which tool did what is holding something else now.</p>
</div>

<div class="quote-box">
    <blockquote>You don't own production. Production owns you.</blockquote>
    <cite>— read out of context from a postmortem, but accurate</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
