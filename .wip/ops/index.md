---
layout: wip
title: "Ops - here, hold this."
permalink: /ops/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Ops</span>
    </div>
    <h1>here, hold this.</h1>
</div>

<div class="content-section">
    <pre><code>$ cap production extinguish
$ fab -H production extinguish
$ ansible production -m command extinguish
$ for host in $(cat ~/production) ; do \
  ssh ${host} "sudo production" ; done</code></pre>

    <img src="/classic/ops/ops.png" alt="ops" class="hero-image">
</div>


<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
