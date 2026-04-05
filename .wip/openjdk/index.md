---
layout: wip
title: "OpenJDK - It's All Equal, Right?"
permalink: /.wip/openjdk/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>OpenJDK</span>
    </div>
    <h1>It's All Equal, Right?</h1>
    <p class="page-subtitle">...</p>
    <p class="page-subtitle">right?</p>
</div>

<div class="content-section">
    <h2>The Oracle Acquisition of Sun, Briefly</h2>
    <p>Sun Microsystems invented Java. Sun open-sourced Java as OpenJDK in 2007. Oracle acquired Sun in 2010 for $7.4 billion. Oracle is a company whose primary business model is licensing, and they had just acquired one of the most widely deployed programming language runtimes in enterprise computing.</p>

    <p>If you did not immediately understand that this was going to result in a licensing situation, you had not been paying attention to Oracle.</p>
</div>

<div class="content-section">
    <h2>The 2019 Licensing Change</h2>
    <p>Oracle Java SE 8u211, released in April 2019, changed the license terms. The Oracle JDK was no longer free for commercial use in production. Businesses running Oracle JDK in production now owed Oracle money — per user, per processor, per year, depending on how you counted, and Oracle's counting has historically been generous to Oracle.</p>

    <p>This affected every enterprise that had been running Oracle JDK without thinking about it, which was most enterprises, because for years the answer to "which JDK?" was "the Oracle one, obviously" and no one had looked at the terms lately.</p>

    <p>The scramble began. OpenJDK was free. OpenJDK was compatible. OpenJDK was not quite the same thing in ways that would become apparent over time, and the time in which they became apparent was always the worst possible time.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We just need to swap the JDK. It's the same code base. It'll take a week."</p>
            <cite>— The estimate, Q2 2019</cite>
        </blockquote>
    </div>

    <div class="quote-box">
        <blockquote>
            <p>"We're still on Oracle JDK 8."</p>
            <cite>— The status, eighteen months later</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Enterprise That Still Runs Java 8</h2>
    <p>Java 8 was released in 2014. It is 2026. There are production systems running Java 8 that will be running Java 8 in 2030. This is not stubbornness. It is the rational outcome of the following calculation:</p>

    <p>Upgrading Java versions in enterprise applications requires testing. Not light testing — thorough testing of every integration, every library, every framework that has accumulated behavioral assumptions about the JVM version they were developed against. An application that has been in production for ten years has ten years of accumulated JVM assumptions. Some of them are documented. Most are not. The ones that are not documented are discovered by running the application on a newer JVM and seeing what breaks.</p>

    <p>The testing environment is production-equivalent in theory. In practice, it has slightly different data, slightly different load patterns, slightly different infrastructure configuration, and will not reproduce the failure mode that appears in production six weeks after the upgrade when a specific combination of data triggers a behavior that changed subtly between JVM versions.</p>

    <p>Java 8 works. It has always worked. It will continue to work. The things built on Java 8 also work, having been tuned and patched for a decade against exactly this JVM. The upgrade path is possible. The upgrade path is also a minefield that someone has to own, and the person who owns it has been managing the Java 8 systems for eight years and knows where the bodies are buried, and if they start the upgrade project they won't finish it before their next review cycle, and so the bodies stay buried and the JVM stays at 8.</p>
</div>

<div class="content-section">
    <h2>Which OpenJDK, Specifically</h2>
    <p>OpenJDK is an open source project. Multiple vendors distribute builds of OpenJDK. Adoptium (formerly AdoptOpenJDK). Amazon Corretto. Microsoft OpenJDK. Azul Zulu. Red Hat OpenJDK. IBM Semeru. Eclipse Temurin. These are not the same binary. They have the same source. They are built differently, by different organizations, with different support commitments, on different schedules.</p>

    <p>Your enterprise may have a preferred distribution. Your cloud provider has a preferred distribution. Your application server vendor supports specific distributions. Your security team has scanned one distribution and not the others. The distribution you chose when you first switched from Oracle JDK may or may not be the right choice three years later when the organization's requirements have changed.</p>

    <p>It's all equal. It is not all equal. The differences are real and the differences are small and the differences are enough to cause an incident once and that incident will be in the postmortem and the postmortem will recommend a distribution standardization initiative and the initiative will be assigned to someone who is also managing the Java 8 migration and won't be started for six months.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/ibm/" class="nav-button">Related: IBM →</a>
</div>
