---
layout: wip
title: "CFEngine - Bundle stacks, and bundle stacks, and bundle stacks"
permalink: /.wip/cfengine/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>CFEngine</span>
    </div>
    <h1>🎧 "Promises, promises ... "🎶</h1>
    <p class="page-subtitle">Mark Burgess was right. Nobody listened. Then everyone listened to the wrong lessons.</p>
</div>

<div class="content-section">
    <img src="/cfengine/cfengine.jpeg" alt="At least it ain't bcfg2!" />

    <p>Because everythings better in 3! 😎</p>

    <p>A massive shout out to Mark Burgess for being like fifteen years ahead of his time. He is truly our OG DevOp Configuration Management Godfather. 💖</p>
</div>

<div class="content-section">
    <h2>The Godfather</h2>
    <p>Mark Burgess published CFEngine in 1993. He articulated the concept of desired state configuration — describe what you want the system to look like, let the tool figure out how to get there — a full decade before anyone was calling it DevOps. He wrote theoretical papers on system administration as a branch of physics. He was correct about almost everything and was appreciated in roughly the way most people who are correct too early are appreciated, which is to say: eventually, partially, and by people who thought they were inventing it themselves.</p>

    <p>CFEngine is still around. It runs on systems you depend on without knowing it. This is the fate of tools that were right first: they become infrastructure, which is the technical term for things you only notice when they break.</p>
</div>

<div class="content-section">
    <h2>The Family Tree</h2>
    <p>CFEngine begat Puppet. Puppet came out in 2005, took desired state configuration, added a declarative DSL, and made it accessible enough for people who hadn't read Burgess's papers. Puppet was better than typing commands on individual servers. Puppet was also complicated enough that the next generation decided they could do better.</p>

    <p>Puppet begat Chef. Chef came out in 2009, took the config management concept, made it imperative instead of declarative, wrapped it in Ruby, added a knife and a kitchen and enough metaphors to cater an event. Chef was powerful. Chef was also complicated enough that the next generation decided they could do better.</p>

    <p>Chef begat Ansible. Ansible came out in 2012, took the whole DSL problem and replaced it with YAML, removed the agent requirement, and made the barrier to entry approximately "can you write YAML." This was popular. This was also the moment the ecosystem collectively discovered that YAML at scale has its own unique failure modes, and that agentless does not mean frictionless.</p>
</div>

<div class="fun-facts">
    <h3>The config management family tree, annotated</h3>
    <ul>
        <li>CFEngine (1993): Desired state, theoretical foundations, C, still running on your oldest boxes.</li>
        <li>Puppet (2005): Declarative manifests, agent-based, Ruby, "dependency cycle detected."</li>
        <li>Chef (2009): Imperative recipes, agent-based, more Ruby, the knife has 47 subcommands.</li>
        <li>Ansible (2012): YAML, agentless, SSH, "this playbook takes 45 minutes to run."</li>
        <li>SaltStack (2011): Event-driven, fast, also YAML, acquired by VMware, fate: unclear.</li>
        <li>Terraform (2014): Not config management but everyone uses it for config management anyway.</li>
        <li>Pulumi (2018): Infrastructure as actual code, not DSL. The next generation says they can do better.</li>
    </ul>
</div>

<div class="content-section">
    <h2>The Pattern</h2>
    <p>Each generation of config management tool solved the previous generation's most visible pain point and introduced a new pain point that would motivate the next generation. CFEngine's pain point was complexity and a steep learning curve. Puppet solved that and introduced dependency management hell. Chef solved Puppet's declarative limitations and introduced Ruby DSL overhead and knife ergonomics. Ansible solved the agent requirement and introduced YAML at scale and performance problems. Terraform introduced state file management and the destroy-and-recreate problem.</p>

    <p>The new thing will solve Terraform's pain points. It will introduce a new pain point. We will be very excited about it for approximately three years. Then someone will write a blog post about its limitations. The cycle is load-bearing.</p>
</div>

<div class="quote-box">
    <blockquote>We migrated from Puppet to Chef in 2013 because Chef was more flexible. We migrated from Chef to Ansible in 2017 because Ansible was simpler. We're currently evaluating whether to migrate from Ansible to Terraform for the things Ansible was doing that Terraform is supposed to handle. Mark Burgess saw this coming in 1993.</blockquote>
    <cite>— Every ops team, on a long enough timeline</cite>
</div>

<div class="content-section">
    <h2>At Least It Ain't bcfg2</h2>
    <p>The original page said this and it deserves acknowledgment. Bcfg2 was a configuration management tool that existed. People used it. They did not enjoy it. The fact that CFEngine was better than bcfg2 was genuine praise in context, which tells you something about the context. The bar was low enough that clearing it was an achievement. This is historically consistent with the entire config management space, which has spent thirty years getting better relative to its own previous versions while the people using it wonder why managing servers is still this hard.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
    <a href="/.wip/cryops/" class="nav-button">CryOps →</a>
</div>
