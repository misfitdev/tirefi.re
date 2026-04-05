---
layout: wip
title: "OpenStack - Free VMware (Terms and Conditions Apply)"
permalink: /.wip/openstack/
tags: [cloud, networking]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>OpenStack</span>
    </div>
    <h1>Free VMware (Terms and Conditions Apply)</h1>
    <p class="page-subtitle">the private cloud that was going to compete with AWS</p>
</div>

<div class="status-banner warning">
    <strong>Status:</strong> Neutron service degraded. As is tradition.
</div>

<div class="content-section">
    <h2>The Promise</h2>
    <p>It was 2012. AWS was winning. The answer, clearly, was to build your own cloud. How hard could it be? You just needed compute, storage, and networking, all working together, all managed through a unified API, deployed on commodity hardware you already owned.</p>
    <p>OpenStack would do this. OpenStack was open. OpenStack had a foundation. Major companies were committing engineers to it. The momentum was undeniable.</p>
    <div class="quote-box">
        <blockquote>
            <p>"We don't need AWS. We'll build a private cloud. It'll be cheaper, we'll have full control, and we won't be locked into a vendor."</p>
            <cite>— Leadership, Q3 2013. Same leadership that approved the AWS migration in Q2 2017.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>Neutron</h2>
    <p>Nova you could understand. Swift made sense. Cinder was annoying but manageable. And then there was Neutron.</p>
    <p>Neutron was the OpenStack networking component. It replaced Nova-network, which was simple and worked. Neutron was complex and also sometimes worked. The distinction matters.</p>
    <p>To configure Neutron you needed to understand: ML2 plugins, the difference between provider networks and tenant networks, VXLAN encapsulation, L3 agents, DHCP agents, Open vSwitch flow tables, the specific interaction between your hypervisor kernel version and the OVS version and the Neutron agent version, and why the three of those things do not agree with each other on this particular Tuesday.</p>
    <p>There were diagrams. The diagrams had arrows. Some of the arrows pointed to other diagrams. Nobody on the team had drawn the diagrams; they had been downloaded from a wiki page that no longer existed.</p>

    <div class="fun-facts">
        <h3>Neutron Troubleshooting Tree</h3>
        <ul>
            <li>VM cannot reach the network — check security groups</li>
            <li>Security groups look correct — check the router</li>
            <li>Router looks correct — check the L3 agent</li>
            <li>L3 agent is running — check OVS flows</li>
            <li>OVS flows look right — restart the Neutron agent</li>
            <li>Neutron agent restarted — VM still cannot reach the network</li>
            <li>Restart the entire node</li>
            <li>The node came back but now a different VM cannot reach the network</li>
            <li>File a bug. The bug is a duplicate of one from 2014.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Operational Reality</h2>
    <p>Running OpenStack was a full-time job. Running it well required a team. Running it reliably at scale required a team that did nothing else, had deep institutional knowledge, and was willing to wake up at 3am when the RabbitMQ message queue fell over.</p>
    <p>OpenStack had roughly fourteen core services at peak complexity. Each service had its own database schema, its own config files, its own upgrade path, and its own opinion about where logs should go. Upgrades between releases required reading twelve pages of migration notes written by people who had forgotten more about the system than you would ever learn.</p>
    <p>Every six months there was a new release. The release was named after a city. The name did not predict the quality of the release.</p>

    <div class="quote-box">
        <blockquote>
            <p>"The good news is we're only two releases behind. The bad news is we need to upgrade through each one sequentially and we don't have a test environment."</p>
            <cite>— Every OpenStack operator, eventually</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Ending</h2>
    <p>Most organizations that built OpenStack clouds eventually moved to AWS, GCP, or Azure. A few moved to VMware, which was the thing they were trying to avoid in the first place. Some built something on top of OpenStack and called it their own product, thereby committing to maintain it forever.</p>
    <p>The OpenStack Foundation is now the Open Infrastructure Foundation. The project still exists. Telcos use it. Some large enterprises use it. If you work at one of those places, the original people who built the cluster have all left, and the documentation is from 2016.</p>

    <div class="fun-facts">
        <h3>Things People Said Before the AWS Migration</h3>
        <ul>
            <li>"We'll save money on compute costs" (they did not)</li>
            <li>"We'll have more control" (they did not use it)</li>
            <li>"We can customize the networking" (this is what broke everything)</li>
            <li>"The OpenStack community will fix the bugs we're hitting" (the bugs are still open)</li>
            <li>"This is technically interesting work" (this part was true)</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/opensource/" class="nav-button">← Open Source</a>
    <a href="/.wip/opsroulette/" class="nav-button">Next: Ops Roulette →</a>
</div>
