---
layout: wip
title: "Weblogic: how can it be crap if it costs so much?"
permalink: /weblogic/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>WebLogic</span>
    </div>
    <h1>Weblogic: how can it be crap if it costs so much?</h1>
    <p class="page-subtitle">connection refused</p>
</div>

<div class="content-section">
    <img src="/classic/weblogic/javafire.jpg" alt="java on fire" />

    <p><code>weblogic.nodemanager.NMConnectException: Connection refused. Could not connect to NodeManager.</code></p>
</div>

<div class="content-section">
    <h2>The NodeManager</h2>
    <p>The NodeManager is the process that manages the processes that run your application. It is not the application. It is not the admin server. It is the thing that starts the managed servers, which are the things that run the deployments, which are the things that serve requests. If the NodeManager is not running, the admin server cannot start the managed servers. If the admin server cannot start the managed servers, your application does not start. If the NodeManager is running but the admin server cannot connect to it, the error is <code>NMConnectException: Connection refused</code>, and you have arrived at the WebLogic rite of passage.</p>

    <p>Diagnosing this involves checking whether the NodeManager process is actually running, which it usually is. Then checking whether the port is correct, which it usually is. Then checking whether the SSL configuration matches between the NodeManager and the domain config, which it often doesn't, because someone created the domain with one set of certificates and the NodeManager was last restarted with a different keystore, and the mismatch is silent until the connection attempt fails with an unhelpful error. The NodeManager logs are in <code>$DOMAIN_HOME/nodemanager/</code>. The relevant error is usually three pages into the stack trace.</p>
</div>

<div class="content-section">
    <h2>Oracle's Pricing Model</h2>
    <p>WebLogic is licensed per processor, where "processor" is defined in ways that require a separate document to understand. The document is called the Oracle Processor Core Factor Table, and it exists because not all processors are equal in Oracle's accounting. A SPARC processor core counts differently from an Intel core counts differently from an AMD core. The factor is less than one for most modern processors, which makes the math look better, but the base price is high enough that the per-processor cost still produces invoices that require procurement approval.</p>

    <p>The honest answer to "how can it be crap if it costs so much" is that the cost and the quality are not coupled in the way the question implies. Enterprise software pricing reflects the cost of sales cycles, the cost of support organizations, the cost of the relationship with the customer's procurement department, and the switching cost of the installed base. A piece of software that is deeply embedded in a Fortune 500 company's critical infrastructure can charge for that embeddedness regardless of whether the software itself is pleasant to use. WebLogic is priced for the company that cannot easily leave, not for the company evaluating options.</p>
</div>

<div class="quote-box">
    <blockquote>The migration project began in Q3. The migration project is ongoing. We have identified 47 undocumented dependencies on WebLogic-specific JMS behavior. The license renewal is in November. We will begin Phase 2 planning after the holidays.</blockquote>
    <cite>— architecture review, third consecutive year</cite>
</div>

<div class="content-section">
    <h2>The Migration Project That Never Ends</h2>
    <p>The argument for migrating off WebLogic is obvious and has been obvious for years. Tomcat is free, starts in seconds, and handles most J2EE workloads without a support contract. Spring Boot embedded Tomcat means there is no separate application server to configure. The container ecosystem means you can build a Docker image, run it anywhere, and the operational model is dramatically simpler than maintaining WebLogic domains with managed servers spread across multiple machines and a NodeManager that you have to baby back to life after a patching window.</p>

    <p>The argument against migrating is that the application currently works, the WebLogic-specific APIs are used in ways that are not well documented, the people who wrote those integrations are gone, and testing the migrated application thoroughly enough to be confident would take longer than the remaining license term. So the license gets renewed. The migration project gets a new start date. The team that was going to do the migration gets pulled onto something else. The NodeManager continues to occasionally refuse connections, the workaround is in the runbook, and the runbook says to restart the NodeManager and wait five minutes.</p>

    <p>This is not a failure of intelligence or will. It is an accurate cost-benefit calculation made by people who have been burned by premature migrations before. The devil you know starts and serves requests, mostly. The devil you don't know has unknown failure modes and will require months of stabilization. Enterprise software migrations are infrastructure debt payments: eventually necessary, always more expensive than expected, and easy to defer one more quarter.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
