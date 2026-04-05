---
layout: wip
title: "Equifax - The Breach That Had No Excuses"
permalink: /.wip/equifax/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Equifax</span>
    </div>
    <h1>The Breach That Had No Excuses</h1>
    <p class="page-subtitle">143 million people. One unpatched vulnerability. Months to notice.</p>
</div>

<div class="content-section">
    <h2>What Happened</h2>
    <p>In March 2017, Apache disclosed CVE-2017-5638: a critical remote code execution vulnerability in Apache Struts. A patch was available the same day. Equifax was notified. Equifax had a policy requiring critical patches to be applied within 48 hours. Equifax did not apply the patch. Equifax was subsequently compromised in May 2017 through the unpatched vulnerability. The compromise was not discovered until July 2017. They announced it in September. The data of 147 million people — names, Social Security numbers, birth dates, addresses, credit card numbers — had been sitting on someone else's servers for months.</p>

    <p>The vulnerability was known. The patch was available. The policy said patch it. They did not patch it. This is the whole story.</p>
</div>

<div class="content-section">
    <h2>The Details That Make It Worse</h2>
    <p>The system that wasn't patched was their online dispute portal. The portal people use to dispute information on their credit reports. The portal handling sensitive personal data of the people whose sensitive personal data Equifax exists to hold. The certificate used to inspect encrypted traffic on that system had expired eleven months prior, which is why they didn't detect the exfiltration sooner. They weren't looking. They couldn't see. The monitoring was broken and nobody had noticed.</p>

    <p>After the breach was discovered, Equifax set up a website for affected consumers to check if their data was compromised. The website was hosted on a third-party domain that looked like a phishing site. Equifax's own Twitter account accidentally linked to the phishing lookalike four times instead of the real site. The real site had its own security issues. Investigators found the site accepted any name and any partial social security number and returned "yes, you were affected." Nearly everyone was affected. The site was also found running on a WordPress installation.</p>

    <div class="quote-box">
        <blockquote>
            <p>"This is entirely preventable."</p>
            <cite>— Senator after senator, in hearing after hearing, for months</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Accountability</h2>
    <p>The CEO retired. The CISO retired. The CIO retired. They received significant compensation packages on the way out. The company paid $575 million in settlements, which sounds substantial until you note that affected consumers could claim up to $125 each, the fund was capped at $31 million total, and most consumers who filed received approximately $5.21. Equifax's annual revenue at the time of the breach was approximately $3.1 billion. The stock recovered.</p>

    <p>The CISO had a degree in music composition. This fact circulated as evidence of incompetence, which is reductive — plenty of people with music degrees understand security, and plenty of people with security degrees do not. The relevant credential was not her degree. The relevant credential was the patching policy that said 48 hours and the server that went unpatched for months. The degree was a detail. The process failure was the story.</p>
</div>

<div class="content-section">
    <h2>What This Means for You</h2>
    <p>Your organization holds data. Maybe not 147 million records, but some data. The question is not whether you will face a vulnerability disclosure this week, this month, or this year. You will. The question is whether your patch management process is real — whether it runs, whether people are accountable for it, whether the monitoring that would catch a breach is actually functional and not running on an expired certificate.</p>

    <p>The answer at most companies is: mostly. Mostly patched. Mostly monitored. Mostly compliant. Mostly is fine until it isn't, and when it isn't, the number of people whose data was in that "mostly" column will be in the headline. You do not want your company's name in that headline. The way to not be in that headline is to patch the thing when the patch is available, which is boring, unsexy, and the entire job.</p>

    <div class="fun-facts">
        <h3>Equifax Timeline</h3>
        <ul>
            <li><strong>March 7, 2017</strong> — Apache Struts CVE-2017-5638 disclosed; patch released same day</li>
            <li><strong>March 8, 2017</strong> — Equifax security team notified of vulnerability</li>
            <li><strong>March 9-May 12, 2017</strong> — Patch not applied</li>
            <li><strong>May 13, 2017</strong> — Attackers begin exploiting unpatched system</li>
            <li><strong>July 29, 2017</strong> — Equifax discovers the breach, 78 days after compromise began</li>
            <li><strong>September 7, 2017</strong> — Public disclosure; website for consumers set up</li>
            <li><strong>September 8-11, 2017</strong> — Equifax Twitter links to phishing lookalike four times</li>
            <li><strong>September 26, 2017</strong> — CEO retires with $90M in compensation</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">Back to All Disasters</a>
    <a href="/.wip/cyber/" class="nav-button">Related: Cyber</a>
</div>
