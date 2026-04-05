---
layout: wip
title: "RVM - The Wrapper That Manages the Thing That Manages the Thing"
permalink: /.wip/rvm/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>RVM</span>
    </div>
    <h1>The Wrapper That Manages the Thing That Manages the Thing</h1>
    <p class="page-subtitle">just one more layer and it'll work fine</p>
</div>

<div class="content-section">
    <h2>The Version Manager Problem</h2>
    <p>Someone, somewhere, decided that managing Ruby versions was a problem that could be solved with a shell script that overwrites your PATH. Then someone else decided that was wrong and built rbenv. Then someone built asdf to manage the managers. Then someone built mise to replace asdf.</p>

    <p>Your laptop has four different Ruby version managers installed. Three of them are dormant. One of them is active and wrong. The CI server is running Ruby 2.7 because nobody touched it in 2019 and it still works, so nobody is allowed to update it.</p>

    <div class="quote-box">
        <blockquote>
            <p>"I need to wrap this tire with more tire. This will definitely work."</p>
            <cite>— the README for every Ruby version manager, paraphrased</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The .ruby-version Situation</h2>
    <p>The .ruby-version file says 3.1.2. The Gemfile says <code>ruby ">= 2.6"</code>. The application server is running 3.0.4. The developer's laptop has 3.2.0 via mise. The CI pipeline uses whatever is in the Docker image, which was last updated fourteen months ago.</p>

    <p>These are not four different opinions. These are four different production incidents that haven't happened yet.</p>

    <div class="fun-facts">
        <h3>Version Manager Taxonomy</h3>
        <ul>
            <li><strong>RVM:</strong> Ships a shell function called <code>rvm</code> that shadows system Ruby and occasionally ruins your bash prompt. Handles gemsets. Gemsets were a mistake.</li>
            <li><strong>rbenv:</strong> More surgical. Shims. Doesn't touch your shell as aggressively. Requires ruby-build. Doesn't handle gemsets because gemsets were a mistake.</li>
            <li><strong>asdf:</strong> Manages Ruby, Node, Python, Go, and anything else someone has written a plugin for. Plugins of varying quality. One source of truth. Slightly different failure modes.</li>
            <li><strong>mise:</strong> Faster asdf, written in Rust, because everything is being rewritten in Rust. Works great. Will probably need replacing in four years.</li>
            <li><strong>chruby:</strong> Tiny. Does almost nothing. This is a feature. Still requires ruby-install separately. Still needs you to source a shell script.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Gemset Legacy</h2>
    <p>RVM shipped with gemsets — a way to isolate gem installations per project. This solved a real problem. Bundler also solved that problem, more elegantly, at the application layer. You now have both installed, and they interact in ways that require a flowchart to explain at 2am.</p>

    <p>The <code>rvm use 2.7.6@myproject</code> command works. It will stop working the moment you close your terminal. The next developer to clone your repo will spend forty minutes figuring out why bundle exec fails before finding the buried note in the wiki that says "make sure to create the gemset first."</p>

    <div class="quote-box">
        <blockquote>
            <p>"Works on my machine" — said the developer whose machine has a custom rvm gemset that doesn't exist anywhere else.</p>
            <cite>— a postmortem you haven't written yet</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>CI vs. Local vs. Production</h2>
    <p>Three environments. Three Rubies. All of them claim to be "the right one" for exactly as long as it takes to deploy to the next environment.</p>

    <p>The CI server's Ruby version is locked inside a Docker base image last updated when the person who built it was still at the company. Updating it requires touching eight Dockerfiles, three pipelines, and a README that nobody has read in two years. Everyone agrees it should happen. Nobody schedules the time. The build stays green on 3.0.7 until the day a gem drops support for it and the pipeline silently starts installing a different version of something important.</p>

    <div class="fun-facts">
        <h3>Diagnostic Questions You Will Ask in This Order</h3>
        <ul>
            <li>Which Ruby is running right now? (<code>ruby --version</code>)</li>
            <li>Which Ruby does this project want? (<code>cat .ruby-version</code>)</li>
            <li>Which Ruby does the Gemfile want? (scroll to bottom, probably nothing specific)</li>
            <li>Which Ruby is the version manager providing? (<code>rvm current</code> / <code>rbenv version</code>)</li>
            <li>Why are all four answers different?</li>
            <li>Who installed this?</li>
            <li>When did this last work?</li>
            <li>Is it DNS?</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Right Answer</h2>
    <p>Containerize it. Pin the Ruby version in the Dockerfile. Use the same image in CI and production. Never think about version managers again.</p>

    <p>You won't do this. The project already has a .ruby-version file committed. Someone just submitted a PR that bumps it. Three people have opinions about which version manager the team should standardize on. The Slack thread is seventeen messages long and hasn't converged.</p>

    <p>Pick one. Pin it. Write it down. Move on. The alternative is another year of "it works on my machine."</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/chef/" class="nav-button">Chef</a>
    <a href="/.wip/puppet/" class="nav-button">Puppet</a>
    <a href="/.wip/nodejs/" class="nav-button">Node.js</a>
    <a href="/.wip/" class="nav-button">All Disasters</a>
</div>
