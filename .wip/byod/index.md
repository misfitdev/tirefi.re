---
layout: wip
title: "Corporate BYOD Strategy"
permalink: /.wip/byod/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>BYOD</span>
    </div>
    <h1>Corporate BYOD Strategy</h1>
    <p class="page-subtitle">Bring your own device. Also your own vulnerabilities.</p>
</div>

<div class="content-section">
    <img src="/byod/byod.png" alt="Bring Your Own Device Strategy" />

    <p>... sure, you can wifi your phone from our network.</p>
</div>

<div class="content-section">
    <h2>The Policy That Wrote Itself</h2>
    <p>The original BYOD policy in most organizations was not a policy. It was a decision made by one person in IT who got tired of the same question and answered "yeah, fine" one afternoon in 2011. Then it became informal practice. Then the auditors noticed. Then someone wrote a policy retroactively describing what was already happening, with a "permitted use" section that nobody reads and an enforcement mechanism that does not exist. This is how most enterprise security policies are born. They are archaeology, not architecture.</p>

    <p>The four-page policy document that resulted contains: a scope section that applies to all devices, a definitions section that defines "device" in three different ways, a responsibilities matrix that lists eleven stakeholders with overlapping accountabilities, and a compliance section that says violations "may result in disciplinary action" without specifying what action or who decides. It was approved by the security committee in 2019 and has not been reviewed since. The network it describes has changed substantially. The policy has not.</p>
</div>

<div class="content-section">
    <h2>MDM: Your Personal Device, Our Policies</h2>
    <p>Mobile Device Management is the enterprise's answer to BYOD, and the answer is: your hardware, our jurisdiction. Want corporate email on your phone? Install this agent. The agent will enforce PIN policies, disable screenshots in corporate apps, log your device's compliance status, and retain the ability to remotely wipe the device — including your personal photos, your personal apps, your personal data. You agreed to this in a terms-of-service popup during onboarding. It appeared once. It will not appear again.</p>

    <p>The MDM enrollment experience has improved considerably from the early days and is now merely tedious rather than actively hostile. You will spend 45 minutes installing certificates, configuring profiles, and confirming that yes, you understand the company can wipe this device. Then corporate email will work. Then there will be a firmware update and you will spend another 20 minutes reconfirming everything. This is the ongoing carrying cost of the convenience of not carrying two phones.</p>
</div>

<div class="content-section">
    <h2>Shadow IT: BYOD's Logical Conclusion</h2>
    <p>When the approved tools don't do what people need, people use unapproved tools. This is not malice. It is efficiency. The engineer who set up a personal Dropbox to share files with a contractor was not trying to violate data governance policy. They were trying to do their job with the tools that worked, because the approved alternative required a three-week provisioning process and a director-level sponsor. Shadow IT is a symptom. The disease is IT friction high enough that circumvention is the path of least resistance. You can write a policy banning it. You cannot enforce the policy without fixing the friction. The friction requires resources. Resources require prioritization. Prioritization requires OKRs. We will revisit this next quarter.</p>
</div>

<div class="quote-box">
    <blockquote>We support personal devices connecting to the corporate network pursuant to completion of the BYOD agreement, device enrollment in MDM, installation of the approved endpoint security client, and acknowledgment of the Acceptable Use Policy. The process takes approximately 45 minutes. The helpdesk is open Tuesday and Thursday.</blockquote>
    <cite>— The BYOD onboarding experience, in full</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
