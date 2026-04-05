---
layout: wip
title: "This is a Equifax tire fire"
permalink: /.wip/equifax/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Equifax</span>
    </div>
    <h1>This is a Equifax tire fire</h1>
    <p class="page-subtitle">get your shit together</p>
</div>

<div class="content-section">
    <img src="/equifax/equifuct.gif" alt="get you shit together equifax" />

    <p>Seriously? get your shit together Equifax!</p>
</div>

<div class="content-section">
    <h2>What Happened</h2>
    <p>In March 2017, Apache disclosed CVE-2017-5638: a critical remote code execution vulnerability in Apache Struts. A patch was available the same day. Equifax was notified. Equifax had a policy requiring critical patches to be applied within 48 hours. Equifax did not apply the patch. Equifax was subsequently compromised in May 2017 through that unpatched vulnerability. The compromise was not discovered until July 2017, because the certificate used to inspect encrypted traffic on that system had expired eleven months prior and nobody had noticed. They announced the breach in September. The data of 147 million people — names, Social Security numbers, birth dates, addresses, credit card numbers — had been on someone else's servers for months.</p>

    <p>The vulnerability was known. The patch was available. The policy said patch it. They did not patch it. This is the whole story.</p>
</div>

<div class="content-section">
    <h2>The Response</h2>
    <p>After discovery, Equifax set up a website for affected consumers to check whether their data was compromised. The website was hosted on a third-party domain that looked like a phishing site. Equifax's own Twitter account accidentally linked to the phishing lookalike four times instead of the real site. The real site had its own problems: it accepted any name and any partial Social Security number and returned "yes, you were affected" for nearly everyone, which is technically correct because nearly everyone was affected, but not a useful result. The site was also found to be running on a WordPress installation, which is a fine choice for a blog and an unusual choice for a breach notification portal handling the sensitive data of 147 million people.</p>

    <p>The credit monitoring service offered as remediation required affected consumers to waive their right to participate in class action lawsuits as a condition of enrollment. This was not a subtle move. It was noticed immediately. Equifax removed the clause. The "check if you were affected" tool remained in operation, returning results of unclear accuracy, for months.</p>
</div>

<div class="content-section">
    <h2>The Accountability</h2>
    <p>The CEO retired. The CISO retired. The CIO retired. They received compensation packages. The company eventually paid $575 million in settlements. Affected consumers could claim up to $125 each, except the fund was capped at $31 million total for cash payments, so most consumers who filed received approximately $5.21 after the fund was divided by the number of claims. Equifax's annual revenue at the time was approximately $3.1 billion. The stock recovered. The 147 million people whose data was exposed have not recovered their data. You cannot un-expose a Social Security number.</p>
</div>

<div class="quote-box">
    <blockquote>Your organization holds data. The question is not whether you will face a vulnerability disclosure this week, this month, or this year. You will. The question is whether your patch management process is real — whether it runs, whether people are accountable for it, whether the monitoring is functional and not running on an expired certificate that nobody checked for eleven months.</blockquote>
    <cite>— The Equifax postmortem, generalized</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
