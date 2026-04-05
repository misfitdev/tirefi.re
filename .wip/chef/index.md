---
layout: wip
title: "This is a kitchen fire"
permalink: /.wip/chef/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Chef</span>
    </div>
    <h1>This is a kitchen fire</h1>
    <p class="page-subtitle">infrastructure as code, cookbooks as debt</p>
</div>

<div class="content-section">
    <img src="/chef/chef_kitchen_fire.gif" alt="chef exec kitchen test --yolo" />

    <p>Chef was supposed to help get the cooks out of the kitchen, right....?</p>
</div>

<div class="content-section">
    <h2>The Promise</h2>
    <p>The infrastructure-as-code pitch was correct. Managing servers by hand — SSHing into boxes, running commands, hoping you remembered to do the same thing on all the nodes — was not sustainable. Chef offered a better model: describe the desired state of a system in code, check that code into version control, run it idempotently on every machine that should match that description. This was genuinely an improvement over what came before.</p>

    <p>The implementation wrapped this model in Ruby, which was either a feature or a problem depending on how you felt about Ruby. Chef's DSL was not quite Ruby — it had its own execution model where resources were declared first and converged later, which meant that normal Ruby control flow didn't always do what you expected. A conditional in a recipe that evaluated at compile time and one that evaluated at converge time behaved differently. You learned the difference by writing the wrong one and being confused by the results.</p>
</div>

<div class="content-section">
    <h2>knife has 47 subcommands</h2>
    <p>The <code>knife</code> command is the CLI interface to the Chef server. It bootstraps nodes, uploads cookbooks, searches the node inventory, manages data bags, edits roles, and does roughly four dozen other things across as many subcommands. <code>knife bootstrap</code>, <code>knife cookbook upload</code>, <code>knife node show</code>, <code>knife search node</code>, <code>knife data bag edit</code>. The subcommand proliferation is real and was not satirical when the joke was first made.</p>

    <p>Berkshelf was the cookbook dependency resolver. You declared your dependencies in a Berksfile, ran <code>berks install</code>, and Berkshelf resolved the dependency graph and fetched the appropriate cookbook versions. In theory. In practice, transitive dependencies would conflict, and Berkshelf's error messages were not helpful about why. You would pin a version explicitly, run again, and find that the pinned version conflicted with something else. You would spend an afternoon resolving this. You would add a lock file comment explaining why version X was pinned. Six months later someone would bump the version and break the resolution again.</p>

    <p>Test Kitchen let you test cookbooks against a local VM before running them in production. This was good. The workflow was <code>kitchen create</code>, <code>kitchen converge</code>, <code>kitchen verify</code>, <code>kitchen destroy</code>. When it worked, it was reassuring. When the VM failed to provision or the converge hung, you would run <code>kitchen destroy</code> and it would hang too, and you would eventually kill the VirtualBox process directly and start over.</p>
</div>

<div class="quote-box">
    <blockquote>The system is in the desired state. The desired state is defined by whichever cookbook ran last. The cookbooks last converged on different dates. The desired states do not agree. The actual state is a negotiation between all of them and reflects no single source of truth. The next chef-client run is in 28 minutes.</blockquote>
    <cite>— infrastructure review, every time</cite>
</div>

<div class="content-section">
    <h2>The Drift Problem</h2>
    <p>Chef runs periodically — by default, every 30 minutes. Between runs, someone might SSH into a node and change something manually. A package gets updated out-of-band. A config file gets edited by a developer debugging an issue at 2am. Chef will notice on the next converge and overwrite the change, or it won't, depending on whether the resource managing that file is still in the run list, whether the attribute value is the same, whether anyone updated the cookbook since the manual change was made.</p>

    <p>The phrase "configuration drift" describes the gap between what Chef thinks a node looks like and what it actually looks like. Chef was supposed to prevent this. In practice, it managed this imperfectly, and "did the converge actually fix the thing" was a question that required checking rather than assuming. The audit tooling existed. Using it consistently was a different matter.</p>

    <p>By the time Kubernetes became the dominant operational paradigm, the argument against configuration management was essentially this: if you can throw away a node and rebuild it from a known image, drift is not a problem you need to solve. The containers replaced the cattle-not-pets philosophy that Chef had been one vehicle for, and took it further. Chef cookbooks are still running in production somewhere, maintained by people who have agreed never to touch them unless something breaks.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
