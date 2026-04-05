---
layout: wip
title: "ಠ_ಠ OpenJDK"
permalink: /.wip/openjdk/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>OpenJDK</span>
    </div>
    <h1>It's all equal, right?</h1>
    <p class="page-subtitle">...</p>
</div>

<div class="content-section">
    <p>Right?</p>
    <img src="/openjdk/openjdk-tomcat.jpg" alt="🔥" />
</div>

<div class="content-section">
    <h2>The 2019 Licensing Event</h2>
    <p>Sun Microsystems open-sourced Java as OpenJDK in 2007. Oracle acquired Sun in 2010. Oracle is a company whose primary business model is licensing, and they had just acquired one of the most widely deployed language runtimes in enterprise computing. If you did not immediately understand that this was going to result in a licensing situation, you had not been paying attention to Oracle.</p>

    <p>Oracle Java SE 8u211, released in April 2019, changed the terms. Oracle JDK was no longer free for commercial use in production. Every enterprise that had been running Oracle JDK without thinking about it — which was most enterprises, because for years the answer to "which JDK?" was "the Oracle one, obviously" — now owed Oracle money. The scramble began. OpenJDK was free. OpenJDK was compatible. OpenJDK was not quite the same thing in ways that would become apparent at the worst possible moments.</p>

    <p>The JDK flavor proliferation that followed is its own kind of fire. OpenJDK is an open source project. Multiple vendors now distribute builds of it: Adoptium (formerly AdoptOpenJDK, now producing Eclipse Temurin), Amazon Corretto, Microsoft OpenJDK, Azul Zulu, Red Hat OpenJDK, IBM Semeru. These are not the same binary. They have the same source. They are built differently, by different organizations, with different support commitments, on different schedules. Your application server vendor supports specific distributions. Your security team has scanned one distribution and not the others. The distribution you chose in 2019 when you first switched from Oracle JDK may not be the right choice three years later when you have different requirements, a different cloud provider, and a different security team asking different questions.</p>

    <p>The app server that "supports JDK 8" does not specify which JDK 8. There are enough of them now that this is a meaningful ambiguity. You will discover which ones it doesn't support in production, at a moment when the question is no longer hypothetical.</p>
</div>

<div class="quote-box">
    <blockquote>We just need to swap the JDK. It's the same code base. It'll take a week.</blockquote>
    <cite>— The estimate, Q2 2019. The migration completed in 2021. Some teams are still on Oracle JDK 8.</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
