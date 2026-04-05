---
layout: wip
title: "What idiot called it serverless and not \"The Emperor's New Servers\""
permalink: /.wip/serverless/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Serverless</span>
    </div>
    <h1>What idiot called it serverless and not "The Emperor's New Servers"</h1>
    <p class="page-subtitle">just somebody else's servers</p>
</div>

<div class="content-section">
    <img src="/serverless/noserverless.png" alt="Just Somebody Else's" />

    <p>Stickers coming soon to the TireFire cafepress store. All profits go to the "Drunk Domain Purchasing" fund.</p>

    <p>Special thanks to @sdmouton for spending his hard earned devop bucks on dumb jokes.</p>
</div>

<div class="content-section">
    <h2>The Abstraction Sells Itself</h2>
    <p>Serverless is a great pitch. You write a function. You deploy the function. The function runs when it needs to run and doesn't cost anything when it doesn't. No capacity planning, no patching, no on-call for the runtime. It is, in theory, infrastructure that disappears until needed.</p>

    <p>In practice, the servers did not disappear. They are in a warehouse somewhere, owned by Amazon or Google or Microsoft, and you are paying for them on a consumption model with a billing dashboard that is genuinely difficult to read. The "no servers" part means "no servers you control," which is a different and in some ways worse situation. When your function runs in a broken execution environment, you will file a support ticket and wait.</p>
</div>

<div class="content-section">
    <h2>Cold Starts and the Debugging Void</h2>
    <p>The cold start problem is simple: if your function hasn't run recently, the platform needs to spin up a new execution environment, load your code, initialize your dependencies, and then run your handler. This takes somewhere between 100ms and several seconds depending on the runtime, your package size, and what the platform feels like doing. It is not configurable in any meaningful sense. You can pay for provisioned concurrency, which is just "reserved capacity" with a different name, which is just "servers" with a different billing model.</p>

    <p>Debugging a failed function invocation is an exercise in inference. You have logs if you wrote them. You have a duration and a status code. You have whatever the platform decided to surface in its observability tooling, which is usually less than you want. If the function timed out, you know it timed out but not necessarily why. If it ran for 18ms and returned a 500, you have 18ms of execution to account for, and the platform may have thrown away the runtime before the logs fully flushed. You are not debugging code. You are reading tea leaves.</p>
</div>

<div class="quote-box">
    <blockquote>The function ran. The function failed. The logs show the start and not the end. This is the complete diagnostic information available. The function has since run successfully forty times.</blockquote>
    <cite>— Lambda investigation, closed as transient</cite>
</div>

<div class="content-section">
    <h2>Vendor Lock-In at the Function Level</h2>
    <p>The lock-in story for serverless is rarely discussed honestly at the point of adoption. Your functions are portable — they're just code. Your event sources are not. Your IAM bindings, your VPC configurations, your DLQ setup, your cold start mitigations, your layer dependencies, your concurrency limits: these are all platform-specific. The wiring that makes functions useful is entirely proprietary.</p>

    <p>The billing surprise comes later. Serverless is cheap for spiky, unpredictable workloads where you'd otherwise be provisioning for peak. It is not always cheap for steady, predictable workloads, where a small instance would cost less and not have cold starts. The sales pitch focuses on the first case. Most workloads, once they reach production and users, start looking like the second case. The cloud bill review meeting is where this gets discovered.</p>

    <p>None of this means serverless is bad. For the right workload, it genuinely eliminates operational overhead. The problem is that "the right workload" is a narrower category than the sales materials suggest, and the discovery process involves a production incident or an unexpectedly large invoice.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
