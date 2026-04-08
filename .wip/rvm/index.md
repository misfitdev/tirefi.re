---
layout: wip
title: "RVM - easy to install, manage, and work with"
permalink: /.wip/rvm/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>RVM</span>
    </div>
    <h1>This is a tire fire that is "easy to install, manage, and work with"</h1>
    <p class="page-subtitle">Managing your Ruby version manager manager since the curl-to-bash era.</p>
</div>

<div class="content-section">
    <img src="/rvm/tire-test2.jpg" alt="A tire fire that is &quot;easy to install, manage, and work with&quot;" class="hero-image">

    <p>I just need to wrap this tire with more tire, this will work great.</p>
</div>

<div class="content-section">
    <h2>The Problem Being Solved</h2>
    <p>Ruby has always had a version problem. Gems depend on specific Ruby versions. Projects depend on specific gem versions. System Ruby is owned by the OS and touching it breaks things. The solution was a tool that installs multiple Rubies in your home directory and switches between them based on context. RVM did this in 2009 via a shell function that rewrote your PATH and a collection of bash scripts that the README described, with sincere confidence, as easy to install, manage, and work with.</p>

    <p>This was not incorrect, exactly. RVM solved the problem it was designed to solve. The issue was that it solved it by becoming part of your shell environment in a way that was difficult to fully understand or unwind. The installation instruction was a curl-to-bash. The configuration involved sourcing a script in your bash profile. The gemset feature — a way to isolate gem installations per project — was elegant until Bundler existed, at which point you had two overlapping solutions to the same isolation problem and they interacted in ways that required knowing which one was active.</p>
</div>

<div class="content-section">
    <h2>The Alternatives</h2>
    <p>rbenv followed RVM with a different philosophy: shims instead of shell functions, surgical PATH manipulation instead of wholesale replacement, no gemsets because gemsets were a mistake. rbenv required ruby-build as a separate plugin, which required remembering that it was a separate plugin. It was more comprehensible than RVM and broke your shell in subtler ways.</p>

    <p>Then asdf appeared, promising to manage not just Ruby but every language runtime with a single tool. Then mise rewrote asdf in Rust and ran faster. Then chruby existed quietly in the corner, doing almost nothing and being fine, requiring you to source a shell script but otherwise staying out of your business. The Node ecosystem independently developed nvm, n, fnm, and volta, solving the same problem in parallel with no coordination, which suggests the problem is load-bearing and the solution space is genuinely disputed.</p>

    <p>The `.ruby-version` file is the monument to this history. It sits in the project root, pins a version, and will be interpreted differently by RVM, rbenv, asdf, mise, and chruby, each of which will honor it, ignore it, or interpret it slightly differently depending on the tool's current configuration and what else is installed. The file exists to eliminate ambiguity. It does not eliminate ambiguity.</p>
</div>

<div class="content-section">
    <h2>CI vs Local vs Production</h2>
    <p>Three environments. Three Rubies. All of them correct for some definition of correct. The CI server's Ruby version is locked inside a Docker base image that was last updated when the person who built it was still at the company. Updating it requires touching multiple Dockerfiles, several pipelines, and coordinating a deploy across environments that are all theoretically pinned to the same version and are not. Everyone agrees it should happen. Nobody schedules the time. The build stays green on whatever it's on until a gem drops support for it, at which point the pipeline fails in a way that takes three hours to diagnose because the error message is about a gem, not about Ruby.</p>
</div>

<div class="quote-box">
    <blockquote>Works on my machine — said the developer whose machine has a gemset that doesn't exist anywhere else.</blockquote>
    <cite>— a postmortem you haven't written yet</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
