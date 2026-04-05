---
layout: wip
title: "ಠ_ಠ in OpenStack"
permalink: /.wip/openstack/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>OpenStack</span>
    </div>
    <h1>Hey, I was told OpenStack is Free VMware.</h1>
    <p class="page-subtitle">don't worry, in less than 6 months we'll change the underlying networking again</p>
</div>

<div class="content-section">
    <img src="/openstack/openstack.png" alt="not even once" />
    <img src="/openstack/openstack_fire.png" alt="Don't worry in less then 6 months we'll change the underlying networking again." />

    <p>If you need some continued inspiration, <a href="/openstack/cube-drone-openstack.gif">there's always Cube Drone</a>.</p>

    <p>This image is of a release from a while ago, <a href="https://review.openstack.org/#/c/122962/">it's worse now...</a></p>

    <p>Thanks for the funny pictures, <a href="https://twitter.com/cube_drone">@classam</a></p>
</div>

<div class="content-section">
    <h2>Free VMware</h2>
    <p>It was 2012. AWS was winning. The answer, obviously, was to build your own cloud. You just needed compute, storage, and networking, all working together, all managed through a unified API, deployed on commodity hardware you already owned. OpenStack would do this. OpenStack was open. OpenStack had a foundation with major companies committing engineers to it. Rackspace and NASA were founding contributors. The momentum was real.</p>

    <p>What "free VMware" actually delivered, in practice, was Neutron. Nova you could understand. Swift made sense. Cinder was annoying but manageable. Neutron was the networking component, and Neutron was where hope went to die. It replaced Nova-network, which was simple and worked. To configure Neutron correctly you needed to understand ML2 plugins, the difference between provider and tenant networks, VXLAN encapsulation, L3 agents, DHCP agents, Open vSwitch flow tables, and the specific interaction between your hypervisor kernel version and the OVS version and the Neutron agent version on this particular build. There were diagrams explaining this. The diagrams had arrows. Some of the arrows pointed to other diagrams. Nobody on the team had drawn the diagrams; they'd been downloaded from a wiki page that no longer existed.</p>

    <p>The release cycle was six months. Each release was named after a city. The name did not predict the quality of the release. Upgrading between releases required reading twelve pages of migration notes and upgrading through each version sequentially — you could not skip from Grizzly to Kilo directly. If you were two releases behind, which was easy to be, you had two sequential migrations ahead of you, each with its own schema changes, config format shifts, and new opinions about where RabbitMQ should live. The RabbitMQ always fell over eventually.</p>

    <p>Most organizations that built OpenStack clouds eventually moved to AWS, GCP, or Azure. A few moved to VMware, which was the thing they were trying to avoid in the first place. The OpenStack Foundation is now the Open Infrastructure Foundation. The project still exists and is genuinely used by telcos and large enterprises with specific requirements. If you work at one of those places, the people who originally built the cluster have all left, and the documentation is from 2016, and Neutron still does the thing it does.</p>
</div>

<div class="quote-box">
    <blockquote>The good news is we're only two releases behind. The bad news is we need to upgrade through each one sequentially and we don't have a test environment.</blockquote>
    <cite>— Every OpenStack operator, eventually</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
