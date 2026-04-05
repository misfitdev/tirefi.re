---
layout: wip
title: "sk8 or die - Kickstart Files as Poetry"
permalink: /.wip/sk8-die/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>sk8 or die</span>
    </div>
    <h1>the fire starts under your feet</h1>
    <p class="page-subtitle">kickstart files as a form of creative expression</p>
</div>

<div class="content-section">
    <h2>Infrastructure as Art Form</h2>
    <p>There is a certain kind of ops person who treats a kickstart file the way a poet treats a blank page. Not because they have to. Because the config file is, in its own way, a complete description of a world — what exists, in what order, under what conditions.</p>

    <p>It still breaks at 3am. The poem doesn't care. The network config is static and the gateway is hardcoded and there is a certain peace in that.</p>

    <div class="quote-box">
        <blockquote>
            <p>flip it . forget the backslash</p>
            <cite>— the kickstart config, speaking directly to you</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Kickstart Aesthetic</h2>
    <p>A kickstart file is declarative before declarative was fashionable. It describes a machine as it should exist: packages, partitions, network, users, post-install scripts that run once and are never seen again. Pure intent, committed to disk.</p>

    <p>The aesthetic is spare. Opinionated. Every line is a choice someone made at a specific moment. The IP address was right when it was written. The nameserver still works, probably. The post-install script chmod 777's something that you will audit someday.</p>

    <div class="fun-facts">
        <h3>Kickstart Poetic Forms</h3>
        <ul>
            <li><strong>The network stanza:</strong> Four lines that describe an entire machine's relationship to the world. Bootproto static. IP declared. Mask assigned. Gateway presumed. Haiku with consequences.</li>
            <li><strong>The %packages section:</strong> A grocery list for a machine. Includes things you don't remember adding. Excludes things you need and will discover missing in production.</li>
            <li><strong>The %post block:</strong> The fugue state at the end. Runs once. Logged nowhere useful. Contains the institutional knowledge of three engineers who have left the company.</li>
            <li><strong>The partitioning scheme:</strong> Someone's strong opinion about /boot size from 2011. Still here. Still 200MB. Still wrong.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Specific Verse</h2>
    <p>The original page contained this:</p>

    <div class="quote-box">
        <blockquote>
            <p><code>network --bootproto=static --ip=10.0.2.15 --netmask=255.255.255.0 --gateway=10.0.2.254 --nameserver=10.0.2.1</code></p>
            <cite>— network configuration as found poem</cite>
        </blockquote>
    </div>

    <p>This is the address space of a VM that no longer exists. The subnet is still technically valid. The gateway is answering pings on another network. The nameserver is a different machine now. The poem outlived the infrastructure. This always happens.</p>

    <p>The <code>10.0.2.0/24</code> range is VirtualBox's default NAT network. It is the range of a thousand test environments and dev boxes and scratch VMs. Someone committed this kickstart to version control and it has been doing exactly what it said ever since, on machines that have been provisioned and deprovisioned and reprovisioned, always with the same static address, always assuming the gateway is where the gateway was.</p>
</div>

<div class="content-section">
    <h2>Sk8 or Die</h2>
    <p>The skateboarding metaphor holds. You commit to the trick. There is a moment where the board is in the air and the outcome is not yet determined. The kickstart file is that moment, extended to the length of a PXE boot sequence.</p>

    <p>Hit the ground running. Or don't. The %post script runs either way. The logs are in /root/anaconda-ks.cfg and nobody will read them until something goes wrong, which is the same relationship the ops team has with the rest of the organization.</p>

    <p>Sk8 or die. Provision or reimage. There is no in-between state in a kickstart file. It either succeeds and you have a machine, or it fails and you start over. This is, in some ways, the clearest metaphor for infrastructure that exists.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/systemd/" class="nav-button">SystemD</a>
    <a href="/.wip/logrotate/" class="nav-button">Logrotate</a>
    <a href="/.wip/" class="nav-button">All Disasters</a>
</div>
