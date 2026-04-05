---
layout: wip
title: "Dumpster Fire - A Field Guide to the Codebase You Inherited"
permalink: /.wip/dumpster/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Dumpster Fire</span>
    </div>
    <h1>Dumpster Fire</h1>
    <p class="page-subtitle">It's in production. It has been in production for twelve years. Nobody knows why it works.</p>
</div>

<div class="content-section">
    <h2>The Inheritance</h2>
    <p>You didn't write this code. Nobody admits to writing this code. The git log goes back to 2011 and the commit messages are things like "fix," "fix2," "actually fix," and "WIP (don't merge)" — which was merged in 2013 and has been in production ever since. The original author left the company. Their manager left the company. The person who knew what this did left the company six months ago and their offboarding documentation says "it just works."</p>

    <p>It does, technically, work. You have confirmed this by checking the monitoring, which consists of a single Pingdom check that sends an email to an alias nobody reads. The check is green. Everything is fine.</p>
</div>

<div class="content-section">
    <h2>The Archaeology</h2>
    <p>You have now spent three days trying to understand the codebase before touching it, which was the correct call, and you have learned: it has 0 unit tests. It has 2 integration tests, both of which are skipped with a comment that says "TODO: fix this." The dependency tree includes a library last updated in 2009, a fork of a library that was abandoned in 2014 (the fork was also abandoned, in 2015), and something called "utils.js" that is imported in 47 places and exports 200 functions, most of which are commented out.</p>

    <p>The README says "See docs/." Docs/ contains one file. The file says "See ARCHITECTURE.md." There is no ARCHITECTURE.md.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Don't touch the payment module. Nobody touches the payment module. We don't know what's in the payment module and we have agreed, as a team, not to find out."</p>
            <cite>— Senior engineer, onboarding you on day one</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Dependencies</h2>
    <p>Log4j 1.2.17. OpenSSL 1.0.1. A version of jQuery from before jQuery had versions. There is a vendored copy of a library because "npm wasn't reliable back then" and the vendored copy has local modifications with no explanation, no comment, and no diff. The modifications are load-bearing. You will discover this after removing them.</p>

    <p>Running a vulnerability scan returns 340 findings. You will spend two weeks triaging them and discover that 290 are in transitive dependencies you cannot upgrade without rewriting the application, 45 are false positives, and 5 are real. The 5 real ones were reported in 2019. The ticket to address them has been in the backlog since 2020, tagged "Q3 priority," every Q3.</p>
</div>

<div class="content-section">
    <h2>The Rewrite Conversation</h2>
    <p>You will have this conversation. Probably in your second month. You will bring data: the test coverage, the CVEs, the deployment process that requires SSHing into a server and running a shell script by hand. You will propose a rewrite. Leadership will ask how long it will take. You will say six months. They will hear "six months of no new features." They will say "can we do it incrementally."</p>

    <p>You cannot do it incrementally. The application is a monolith from an era before the word "monolith" was used as a pejorative. Everything touches everything. The payment module is in there somewhere. You agreed not to look.</p>

    <p>The rewrite will be approved eventually. It will take eighteen months. Halfway through, the company will pivot, the requirements will change, and the new system will be deemed too complex for the use case. The old system will remain in production. Someone new will inherit it. They will open the git log and see your commits: "refactor," "refactor2," "actually refactor," "WIP (don't merge)."</p>

    <div class="fun-facts">
        <h3>Signs You Have Inherited a Dumpster Fire</h3>
        <ul>
            <li>The deployment runbook is a Word document last updated in 2016</li>
            <li>There is a server named "old-prod" that is not old and is in prod</li>
            <li>The database has a table called "temp" that has been there since 2010</li>
            <li>A configuration file has a comment that says "DO NOT CHANGE THIS VALUE OR EVERYTHING BREAKS" with no explanation</li>
            <li>The oncall rotation for this service is "the whole team"</li>
            <li>There is a cron job that runs at 3:17am and nobody knows why 3:17</li>
            <li>The test environment was decommissioned "temporarily" in 2021</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">Back to All Disasters</a>
    <a href="/.wip/incident-management/" class="nav-button">Related: Incident Management</a>
</div>
