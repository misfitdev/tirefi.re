---
layout: wip
title: "loosely coupled fires"
permalink: /microservices/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Microservices</span>
    </div>
    <h1>loosely coupled fires</h1>
    <p class="page-subtitle">distributed monolith with extra steps</p>
</div>

<div class="content-section">
    <img src="/classic/microservices/microservices.gif" alt="sick burn" />

    <div class="quote-box">
        <blockquote>We replaced our monolith with micro services so that every outage could be more like a murder mystery.</blockquote>
        <cite>— @honest_update, October 7, 2015</cite>
    </div>
</div>

<div class="content-section">
    <h2>Why We Did This</h2>
    <p>Around 2015, the monolith became a dirty word. The pitch was persuasive: small, independently deployable services, each owning its own data, each scalable in isolation. Teams could work autonomously. Deploys would be surgical. The big ball of mud would finally be decomposed into something comprehensible.</p>

    <p>What actually happened is that the big ball of mud became a distributed big ball of mud. The coupling didn't go away — it just moved from function calls to HTTP. The shared database became ten databases that needed to agree with each other, and they never agreed. The monolithic deploy became 47 pipelines, 12 of which were always broken in ways nobody had time to investigate.</p>

    <p>By 2017 or so, most teams had discovered what distributed systems researchers had known since the 80s: the network is not reliable, latency is not zero, bandwidth is not infinite, and the network is not secure. The fallacies of distributed computing are not edge cases. They are the default operating conditions.</p>
</div>

<div class="content-section">
    <h2>The Murder Mystery</h2>
    <p>The tweet aged perfectly. When a request fails in a microservices architecture, you have a murder and a list of suspects. The auth service says it returned 200. The user service claims it never received the request. The API gateway logged a timeout. The tracing span shows a 400ms gap between two hops that nobody can explain. The service that actually failed logged nothing, because the pod was evicted during the incident and took its logs with it.</p>

    <p>You add distributed tracing. Now you have a very detailed picture of exactly where things go wrong, which is helpful until you realize that fixing the problem requires coordinating changes across four repositories owned by three teams, two of which haven't touched their service in eight months and aren't sure who the on-call is.</p>

    <p>Eventually consistent means eventually incorrect. The saga pattern means your rollback logic is now as complex as your forward logic. Circuit breakers help, until they trip at the wrong time and the degraded fallback path turns out to have a bug that nobody noticed because it was never exercised in production.</p>
</div>

<div class="quote-box">
    <blockquote>Conway's Law guarantees that your service boundaries will mirror your org chart. Your org chart does not reflect a sensible system architecture. This is fine.</blockquote>
    <cite>— observed in the wild, repeatedly</cite>
</div>

<div class="content-section">
    <h2>The Monolith Returns</h2>
    <p>By the early 2020s, a quieter counter-narrative had emerged. Shopify, Stack Overflow, 37signals — organizations running significant production workloads — were publishing pieces with titles like "The Majestic Monolith" and "We Ditched Microservices." The argument was simple: if your team is small enough that people can talk to each other, a monolith is operationally cheaper, easier to debug, and just as scalable for most workloads.</p>

    <p>This did not stop new projects from starting with microservices. The cargo cult is durable. The conference talks were compelling. The LinkedIn posts about "cloud-native architecture" accumulate endorsements. And so teams of eight engineers build service meshes for applications that serve a few thousand users, and wonder why their incident rate is so high.</p>

    <p>The honest version of the microservices story is that they solve real problems at real scale — the kind of scale where having 200 engineers working on the same codebase actually creates coordination problems that network overhead is worth paying to solve. At that scale, the investment makes sense. At most scales, you are paying the tax without receiving the benefit, and the next architecture review will be about consolidating services.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
