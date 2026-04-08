---
layout: wip
title: "kickstart and flip"
permalink: /sk8-die/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>sk8 or die</span>
    </div>
    <h1>the fire starts under your feet</h1>
    <p class="page-subtitle">flip it. forget the backslash.</p>
</div>

<div class="content-section">
    <p><img src="/classic/sk8-die/kickflip.gif" alt="sk8 or die.."></p>

    <p>flip it . forget the backslash</p>

    <pre><code>network --bootproto=static --ip=10.0.2.15 --netmask=255.255.255.0
--gateway=10.0.2.254 --nameserver=10.0.2.1</code></pre>

    <p>hit the ground running</p>
</div>

<div class="content-section">
    <h2>The Kickstart File as Cultural Artifact</h2>
    <p>Red Hat's Kickstart format was unattended installation: a declarative description of a machine as it should exist, consumed by Anaconda at boot time. Packages, partitions, network configuration, users, and a <code>%post</code> block for everything else. PXE boot, DHCP hands off the kernel and initrd, the installer pulls the kickstart file from a URL, and twenty minutes later you have a machine. The network booted. The file ran. The machine exists.</p>

    <p>This was infrastructure automation before "infrastructure automation" was a job title. Before Chef, before Puppet, before Ansible. Before anyone had thought to call it GitOps. The kickstart file sitting in a TFTP server directory, last modified in 2009, still working, is the direct ancestor of every cloud-init userdata script and every Terraform provisioner that came after it.</p>

    <p>"Forget the backslash" is about line continuation in kickstart network directives. The correct form is everything on one line. The temptation to break it across lines with a backslash is real, because the line is long, and the backslash doesn't work the way you expect, and you spend twenty minutes debugging an install that fails silently at the network configuration step before you figure out why. The original page knew this. It said: forget the backslash.</p>
</div>

<div class="content-section">
    <h2>The Migration That Never Quite Finished</h2>
    <p>The journey from kickstart files to something more modern — Ansible, cloud-init, Packer, whatever the current answer is — happened, mostly, over a period of about ten years. The part that didn't fully happen was the decommissioning of the old kickstart infrastructure. The TFTP server is probably still running. The kickstart files are probably still in a git repository somewhere, committed by people who have since left. The PXE boot environment works. Nobody wants to touch it.</p>

    <p>This is because the thing it does — provision a physical machine from scratch without human interaction — is still occasionally necessary, and the alternative is to rebuild the capability with modern tooling at a cost in time that nobody has budgeted for. The kickstart file from 2009 provisions machines correctly. The 10.0.2.15 address is wrong for the current network, but someone updated that at some point. Probably. The <code>%post</code> block is doing something that was important enough to write down but not important enough to comment.</p>

    <p>Sk8 or die. You commit to the trick. The board is in the air. The kickstart file is running. The outcome is not yet determined. Hit the ground running, or reimage and try again. There is no in-between state in a kickstart installation.</p>
</div>

<div class="quote-box">
    <blockquote>The poem outlived the infrastructure. This always happens.</blockquote>
    <cite>— the 10.0.2.0/24 subnet, no longer in use</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
