---
layout: wip
title: "I/O is non-blocking, your ops team is not"
permalink: /.wip/nodejs/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Node.js</span>
    </div>
    <h1>I/O is non-blocking, your ops team is not.</h1>
    <p class="page-subtitle">node fires are small but there are so many they will consume all your inodes</p>
</div>

<div class="content-section">
    <img src="/nodejs/node.gif" alt="node fire" />

    <div style="font-family: monospace; border: 1px solid #ccc; padding: 1em; margin: 1em 0; background: #f9f9f9;">
        <h2 style="font-family: monospace; font-size: 1.1em;">Internal Server Error</h2>
        <p>The server encountered an internal error or
        misconfiguration and was unable to complete
        your request.</p>
        <p>Please contact the server administrator,
        nodejs@tirefi.re and inform them of the time the error occurred,
        and anything you might have done that may have
        caused the error.</p>
        <p>More information about this error may be available
        in the server error log, unless you are using node.js</p>
        <p>node fires are small but there are so many they will consume all your inodes</p>
        <hr>
        <address>Apache/2.2.3 (CentOS) Server at tirefi.re Port 80</address>
    </div>
</div>

<div class="content-section">
    <h2>The node_modules Problem</h2>
    <p>The "JavaScript everywhere" pitch from 2009 was genuine: one language on the client and the server, shared libraries, reduced context-switching for developers. The part that wasn't in the pitch was node_modules. A typical Node.js project's node_modules directory contains between 500 and 1,500 packages. Most of them were not choices you made. They are the inevitable output of the dependency graph resolving, each package pulling in the packages it needs, which pull in the packages they need, until you have a directory structure containing more JavaScript files than lines of code in your actual application.</p>

    <p>In March 2016, a developer unpublished 273 npm packages over a naming dispute. One of them was left-pad — eleven lines of code that padded a string on the left. The internet broke. React broke. Babel broke. The build pipelines of a significant portion of the JavaScript ecosystem ground to a halt because of a transitive dependency on a function that could have been replaced with <code>''.padStart()</code>, which became standard JavaScript in 2017, possibly in direct response to this exact incident. This was technically an npm failure, not a Node.js failure. npm is Node.js's package ecosystem. The distinction is accurate and operationally irrelevant.</p>

    <p>The callback hell that preceded Promises was a specific kind of pain: deeply nested asynchronous operations that were impossible to reason about when they failed, with error handling scattered across function boundaries in ways that made the stack trace useless. Promises improved this. async/await improved it further. The underlying problem — that the event loop is single-threaded and one blocking operation stops everything — did not go away. It became easier to accidentally introduce. The synchronous <code>JSON.parse</code> of a large payload, the <code>fs.readFileSync</code> someone added as a quick fix, the npm package doing synchronous crypto because it was written in 2013: these still bring the event loop to a standstill, they're just harder to find now.</p>
</div>

<div class="quote-box">
    <blockquote>More information about this error may be available in the server error log, unless you are using node.js.</blockquote>
    <cite>— Apache/2.2.3 (CentOS) Server at tirefi.re Port 80</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
