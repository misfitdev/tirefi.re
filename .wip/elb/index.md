---
layout: wip
title: "you're welcome @petecheslock"
permalink: /elb/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>ELB</span>
    </div>
    <h1>just use HAProxy, for pete's sake!</h1>
    <p class="page-subtitle">Elastic LOL Balancers</p>
</div>

<div class="content-section">
    <img src="/classic/elb/elastic-LOL-balancer.gif" alt="teach them to balance, they said" />

    <p>Elastic LOL Balancers.</p>
</div>

<div class="content-section">
    <h2>What ELB Was in 2016</h2>
    <p>The Classic Elastic Load Balancer was a managed load balancer that handled the basics: distribute traffic across instances, terminate SSL, do health checks. It did not do host-based routing. It did not do path-based routing. It did not support WebSockets properly. It had a connection draining setting that sometimes worked. It had a pre-warming process where you had to call AWS support ahead of a traffic spike and ask them to provision additional capacity for your load balancer, which was a real thing you had to do, which is why people kept saying "just use HAProxy."</p>

    <p>HAProxy, at the time, could do all of those things. HAProxy had been doing all of those things for years. HAProxy did not require you to call anyone. HAProxy's config file was its own language and the documentation was a 400-page PDF, but the 400-page PDF told you everything HAProxy could do and HAProxy would do exactly that thing, every time, without calling AWS support.</p>
</div>

<div class="content-section">
    <h2>The Argument That Never Ends</h2>
    <p>The ELB vs. HAProxy debate was really the managed service vs. self-operated debate in a specific domain. The managed service removes operational burden at the cost of control and occasionally capability. The self-operated option gives you full control at the cost of becoming the person who has to operate it. Both positions are correct depending on what you value, what your team knows, and how much of your time you want to spend thinking about load balancers versus the application behind them.</p>

    <p>AWS eventually built the Application Load Balancer, which added host-based and path-based routing. Then the Network Load Balancer, for TCP. Then the Gateway Load Balancer, for appliances. The product line expanded to cover most of the capability gap. The people who had built HAProxy expertise in the interim had to make a new calculation. Most of them kept HAProxy because they knew it and it worked and migration is expensive. This is how these decisions always resolve.</p>
</div>

<div class="quote-box">
    <blockquote>The load balancer is not the problem. The load balancer is never the problem. Check your application. Check your database connection pool. Check the thing that has been slowly running out of file descriptors since Tuesday. The load balancer is fine.</blockquote>
    <cite>— The senior engineer, correctly, every time</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
