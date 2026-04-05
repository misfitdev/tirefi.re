---
layout: wip
title: "CryOps - The Configuration Drift Postmortem"
permalink: /.wip/cryops/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>CryOps</span>
    </div>
    <h1>CryOps</h1>
    <p class="page-subtitle">Your infrastructure is managed by five competing tools simultaneously. Three of them are wrong.</p>
</div>

<div class="content-section">
    <h2>The Moment of Recognition</h2>
    <p>There is a specific moment in infrastructure work where you realize you don't know what is actually running your systems. Not in a theoretical way — in a practical, immediate, someone-is-paged way. You pull up the Puppet manifest. It says one thing. You check the Chef cookbook. It says a different thing. Ansible was used for a one-off change six months ago. The Terraform state was last reconciled before the migration. You SSH in and look at the actual file. It matches none of them.</p>

    <p>This is configuration drift. This is also Tuesday at 2am. The firewall ACL that's blocking traffic exists in none of your automation tools because it was added manually during an incident by someone who meant to come back and codify it. They didn't come back. You're back instead.</p>
</div>

<div class="content-section">
    <h2>The Original Scene, Annotated</h2>
    <p>The original page showed a terminal session from 2016: open the Puppet repo, open the Chef repo, run ack against the Python automation, grep your password file, SSH to the device, make the change manually, email "ok try it now," halt. This was a person trying to find the right place to make a change and discovering that "the right place" was every place simultaneously, and so the actual change happened in none of them.</p>

    <p>The trailing <code>halt</code> was not a system command. It was a personal one.</p>
</div>

<div class="fun-facts">
    <h3>Configuration drift by the stages of grief</h3>
    <ul>
        <li>Denial: "Puppet definitely manages that. Let me check the manifest." (The manifest has not been updated since 2019.)</li>
        <li>Anger: "Why are there three different Ansible inventories and none of them list this host?"</li>
        <li>Bargaining: "If I just make this one manual change and write a ticket to clean it up later..." (The ticket will be closed as 'won't fix' in Q3.)</li>
        <li>Depression: "The Terraform state file is 40,000 lines. The actual infrastructure differs from it in at least 12 documented ways and an unknown number of undocumented ones."</li>
        <li>Acceptance: "We have a config management tool. It manages some things. Some things manage themselves. Some things were managed once and are now self-determining. This is fine."</li>
    </ul>
</div>

<div class="content-section">
    <h2>How You Get Here</h2>
    <p>Nobody plans to have five competing configuration management tools. It happens one reasonable decision at a time. CFEngine or Puppet was already there when you arrived. Chef was adopted by the team that wanted more flexibility, and they're still here, and their cookbooks are in production. Ansible was brought in for the Windows boxes because the existing tool didn't handle them well, and then it expanded because it was easier to write playbooks than to learn the Puppet DSL for new people. Terraform handles the cloud resources because nothing else does infrastructure provisioning well. The CI/CD pipeline also modifies configuration files directly because it was faster to implement than threading everything through the config management tools.</p>

    <p>None of these decisions were wrong. The outcome is.</p>
</div>

<div class="content-section">
    <h2>The Access-List</h2>
    <p>The original code added <code>access-list hailmary extended permit ip any any</code> on both the inbound and outbound interface of a firewall. This is the network equivalent of taking the lock off the door and replacing it with a sign that says "please knock." It worked. The outage was resolved. The ACL sat in production, undocumented, unmanaged by any automation tool, until either someone found it in a security review or the next engineer SSHed into the device and found it the same way they found the original problem: by accident, at a bad time.</p>

    <p>The word "hailmary" in the ACL name was doing a lot of honest work. That engineer knew what they were doing. They just needed the thing to work right now and the documentation to be a future problem. This is a trade that gets made at 2am. The books are kept by whoever is on-call next.</p>
</div>

<div class="quote-box">
    <blockquote>The system is in the desired state. The desired state is defined by whichever of the five tools ran last. The tools last ran on different dates. The desired states do not agree. The actual state is a negotiation between all of them and reflects no single source of truth. The next chef-client run is in 28 minutes.</blockquote>
    <cite>— The infrastructure, in a candid moment</cite>
</div>

<div class="content-section">
    <h2>The Consolidation Project</h2>
    <p>Every organization that reaches this state eventually launches a consolidation project. The goal: one tool, one source of truth, all configuration managed consistently. The project is scoped in Q1. It has a champion, a working group, a Confluence page, and a Jira epic. By Q3, the easy migrations are done. By Q4, the project has stalled on the hard cases — the systems that have been manually modified in ways that haven't been documented, the tools that three critical services depend on and can't be migrated without a rewrite, the team that was going to handle their piece but got pulled into a higher-priority incident and never came back.</p>

    <p>The consolidation project is closed at end of year with a note that the remaining items will be addressed in next year's roadmap. The five tools are still running. The hailmary ACL is still there. The next engineer will find it the same way you did.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/cfengine/" class="nav-button">← CFEngine</a>
    <a href="/.wip/incident-management/" class="nav-button">Incident Management →</a>
</div>
