---
layout: wip
title: "It's always DNS. Always."
permalink: /dns/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>DNS</span>
    </div>
    <h1>It's always DNS. Always.</h1>
    <p class="page-subtitle">the cache is valid for another 3599 seconds</p>
</div>

<div class="content-section">
    <a href="http://hipku.gabrielmartin.net/" target="_blank">
        <img src="/classic/dns/dns_haiku.png" alt="DNS haiku generator" />
    </a>

    <div class="quote-box">
        <blockquote>It's not DNS.<br>There's no way it's DNS.<br>It was DNS.</blockquote>
        <cite>— every network engineer, eventually</cite>
    </div>
</div>

<div class="content-section">
    <h2>Why It's Always DNS</h2>
    <p>DNS is a distributed caching system built on the assumption that delegated authority is trustworthy and that eventually-consistent state is acceptable for name resolution. Both of these assumptions are mostly fine and occasionally catastrophic. The TTL — the Time to Live — tells resolvers how long to cache an answer. When you change a record, the old answer is correct until the TTL expires everywhere. "DNS propagation" is the polite name for the window during which some resolvers have the new answer and some have the old one, and there is no reliable way to know which you're getting.</p>

    <p>The TTL is the number you set when you're feeling optimistic. A 24-hour TTL means you should lower it before any planned change, wait for the old TTL to expire, make the change, then raise it again. Most people remember this approximately half the time. The other half, they make the change and then wait, and the waiting is unpredictable, and there is no progress bar, and <code>dig @8.8.8.8</code> and <code>dig @1.1.1.1</code> return different answers, and the person in Sydney is seeing something different from the person in Frankfurt, and everything is technically correct and also not working.</p>
</div>

<div class="content-section">
    <h2>The Debugging Loop</h2>
    <p>The DNS debugging loop is short and circular. You check with <code>dig</code>. You check with <code>nslookup</code> because someone on the team only knows <code>nslookup</code>. You flush your local cache. You check again. The answer changed, or it didn't. You check a public resolver. You check the authoritative nameserver directly. The authoritative nameserver has the right answer. The resolver you're using does not. You wait. You check again. It still doesn't. You wait more. Eventually it resolves correctly, or you change something, and you're not sure which was causal.</p>

    <p>The negative cache TTL — the SOA's minimum field, the time to cache NXDOMAIN responses — catches people more than the positive TTL. You deploy something, the name doesn't exist yet, a resolver caches the NXDOMAIN, you create the record, the resolver still returns NXDOMAIN for the cached duration. The record exists. The cache says it doesn't. The application can't connect. The logs say the name doesn't resolve. You check the authoritative server, the record is there, everything is fine, except it isn't.</p>
</div>

<div class="quote-box">
    <blockquote>The record exists. The record has always existed. The authoritative nameserver serves it correctly. The application cannot resolve the name. The TTL expires in four minutes. We are waiting.</blockquote>
    <cite>— incident timeline, T+47 minutes</cite>
</div>

<div class="content-section">
    <h2>Split-Horizon and the Special Cases</h2>
    <p>Split-horizon DNS means you have at least two different answers for the same name, served to different clients based on where they're querying from. Internal clients get internal IPs. External clients get public IPs. This is correct behavior for many architectures and a persistent source of "it works for me" problems when the internal and external answers diverge beyond their intended differences, or when a developer queries from their laptop and gets the internal answer for a name that should be public, or when a monitoring agent outside the VPC can't reach the internal address it resolved and the alert fires and the service is actually fine.</p>

    <p>The resolution is straightforward once you understand split-horizon is in play. Getting to "this is a split-horizon DNS issue" from "the health check is failing and I don't know why" takes longer. You are checking network routes, checking firewall rules, checking the application logs, before someone thinks to ask what address the monitoring agent is actually trying to reach. This is always DNS. It was always going to be DNS. The only variable is how long it takes to arrive at that conclusion.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
