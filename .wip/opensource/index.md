---
layout: wip
title: "Open Source - Thanks for Your Contribution"
permalink: /.wip/opensource/
tags: [culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Open Source</span>
    </div>
    <h1>Thanks for Your Contribution</h1>
    <p class="page-subtitle">the software that runs the world, maintained in someone's spare time</p>
</div>

<div class="content-section">
    <h2>The Dependency Graph</h2>
    <p>There is a library that your company depends on. It handles something critical — XML parsing, TLS certificate validation, a core piece of the authentication flow. It has 47 million downloads a week. It is maintained by one person in Germany who does it on weekends because they care about the craft.</p>
    <p>Your company has never paid them anything. Your company has, however, filed eleven bug reports. Three of them were marked "urgent." One included the phrase "this is blocking our launch."</p>
    <div class="quote-box">
        <blockquote>
            <p>"We'd love to contribute back but we just don't have the bandwidth right now. Have you considered accepting donations?"</p>
            <cite>— Fortune 500 company, closing a bug report as WONTFIX</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>How Open Source Actually Works</h2>
    <p>The theory: a global community of contributors collaborates to build software that benefits everyone. The rising tide lifts all boats.</p>
    <p>The practice: a person burns through their evenings and weekends maintaining something important. Occasionally someone sends a PR that works against three-year-old docs. More often, someone sends a PR that breaks everything and then disappears when asked to fix the tests.</p>
    <p>The maintainer considers archiving the project. They get 200 emails asking them not to. None of those emails include a pull request.</p>

    <div class="fun-facts">
        <h3>Observed Behaviors</h3>
        <ul>
            <li>The most downloaded package on npm has one maintainer and was last updated in 2018</li>
            <li>"Good first issue" labels exist so maintainers can feel hope before being disappointed</li>
            <li>Every enterprise software stack has a dependency three levels deep on a project that needs $500/month to stay alive</li>
            <li>The same companies that build their product on open source describe their own code as "proprietary and confidential"</li>
            <li>"We're open-sourcing this" usually means "we've stopped actively developing this"</li>
            <li>The busiest day for GitHub issues is Monday. Maintainers work weekends.</li>
            <li>Log4Shell happened. The response was to file more bug reports at open source maintainers.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Lifecycle of a Critical Library</h2>
    <p><strong>Year 1:</strong> Clever person solves a real problem, releases the code because why not.</p>
    <p><strong>Year 3:</strong> The library is in 40,000 projects. The person still maintains it alone.</p>
    <p><strong>Year 5:</strong> A major company integrates it into their product and files a critical security bug. The maintainer fixes it in 72 hours. No one says thank you.</p>
    <p><strong>Year 7:</strong> The maintainer posts a note saying they are burning out and may need to step back. Hacker News thread: 400 comments, mostly suggestions for how they should restructure their governance model.</p>
    <p><strong>Year 8:</strong> The library is forked twelve times. None of the forks talk to each other. Three of them have the same unfixed vulnerability.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We take the security of our users seriously. We have coordinated with the upstream maintainer—"</p>
            <cite>— Company whose product is 90% open source they didn't write</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>What Would Actually Help</h2>
    <p>Money helps. GitHub Sponsors exists. Open Collective exists. Most companies that depend on open source have not checked either of these things.</p>
    <p>Code contributions also help, though the overhead of reviewing a bad PR sometimes costs more than the fix is worth. What maintainers mostly want is for people to read the documentation before filing an issue.</p>
    <p>What they get instead is a Slack message in a community channel that says "hey anyone around? urgent issue" from someone who has been using the library for three years and cannot find the GitHub repository.</p>

    <div class="fun-facts">
        <h3>Things That Don't Help</h3>
        <ul>
            <li>Tweeting about how much you love open source</li>
            <li>Conference talks about "giving back to the community"</li>
            <li>Suggesting the maintainer apply for a grant</li>
            <li>Filing the same issue that was closed last year with a note saying "still broken"</li>
            <li>Opening a PR that changes tabs to spaces across the entire codebase</li>
            <li>"Have you tried Rust?"</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/openstack/" class="nav-button">Next: OpenStack →</a>
</div>
