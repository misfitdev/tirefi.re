---
layout: wip
title: "Node.js - I/O is Non-Blocking but Your Ops Team Is Having a Breakdown"
permalink: /.wip/nodejs/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Node.js</span>
    </div>
    <h1>I/O is Non-Blocking</h1>
    <p class="page-subtitle">your ops team is not</p>
</div>

<div class="content-section">
    <h2>500 Internal Server Error</h2>
    <p>The server encountered an internal error or misconfiguration and was unable to complete your request.</p>

    <p>Please contact the server administrator, <code>nodejs@tirefi.re</code>, and inform them of the time the error occurred, and anything you might have done that may have caused the error.</p>

    <p>More information about this error may be available in the server error log, unless you are using Node.js.</p>

    <p>Node fires are small but there are so many of them that they will consume all your inodes.</p>
</div>

<div class="content-section">
    <h2>The left-pad Incident, Briefly</h2>
    <p>In March 2016, a developer named Azer Koçulu unpublished 273 npm packages because he was in a dispute with a company over a package name. One of those packages was left-pad. left-pad was eleven lines of JavaScript that padded a string with spaces or zeros on the left side.</p>

    <p>The internet broke. React broke. Babel broke. The build pipelines of a significant portion of the JavaScript ecosystem ground to a halt because they had a transitive dependency on a function that could have been replaced with <code>''.padStart()</code>, which became standard JavaScript in 2017, possibly in direct response to learning that the ecosystem would collapse without it.</p>

    <p>This was not a Node.js failure. It was an npm failure. npm is Node.js's package ecosystem. The distinction is technically accurate and operationally irrelevant.</p>
</div>

<div class="content-section">
    <h2>node_modules</h2>
    <p>The <code>node_modules</code> directory is where npm installs your project's dependencies. It also installs your dependencies' dependencies. And their dependencies. And so on recursively until you have a directory structure containing more JavaScript files than lines of code in your actual application.</p>

    <p>A typical Node.js project's <code>node_modules</code> directory contains between 500 and 1,500 packages. Most of them were not choices you made. They are the inevitable result of the dependency graph resolving. One of them, somewhere, is a package that does something deeply suspicious with your filesystem. You do not know which one. The <code>npm audit</code> output does not narrow it down to fewer than forty candidates.</p>

    <p>The <code>node_modules</code> directory is excluded from version control because it would make git unusable. It is regenerated on every fresh checkout. The generation produces different results on different systems because package versions float unless explicitly locked, and even with a lockfile, the lockfile was generated on someone's MacBook and you are deploying to Linux.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Just run <code>npm install</code> and it should work."</p>
            <cite>— The README, written on a different operating system, in a different year</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Event Loop and Why Your Application Is Slow</h2>
    <p>Node.js is single-threaded. This is not a bug. The event loop handles concurrent I/O through callbacks, promises, and async/await, which means you get the benefits of concurrent I/O without the complexity of threads, provided none of your operations block.</p>

    <p>Something is blocking. It is always something. The JSON.parse of a large payload. The synchronous file read someone added as a quick fix. The npm package that calls a synchronous crypto operation because it was written in 2013 and the async API wasn't stable yet. The blocking operation brings the event loop to a standstill for all concurrent requests, which means your non-blocking I/O application is blocking on everything while one request processes a 40MB JSON payload from a vendor API.</p>

    <p>The solution is to not do synchronous operations in the hot path. The implementation of that solution requires understanding which of your 847 npm dependencies is doing synchronous operations, which requires profiling, which requires a production-equivalent load test environment, which requires time you don't have because the application is blocking in production right now.</p>
</div>

<div class="content-section">
    <h2>npm audit</h2>
    <p><code>npm audit</code> will tell you about security vulnerabilities in your dependencies. In a mature project, it will find somewhere between 12 and 400 vulnerabilities. Most of them are in devDependencies. Some of them are in packages so deep in the dependency tree that upgrading them would require upgrading five other packages, which have breaking changes, which require code changes, which require testing, which takes a sprint.</p>

    <p>The advisories will range from Low to Critical. The Critical ones are usually in packages that are used for development tooling and are not deployed to production. This does not stop the security scanner from flagging them. You will explain this to the security team quarterly. They will acknowledge the explanation and re-flag them next quarter.</p>

    <p>Node fires are small, but there are so many of them, and they will consume all your inodes.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/docker/" class="nav-button">Related: Docker →</a>
</div>
