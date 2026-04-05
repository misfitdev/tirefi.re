---
layout: wip
title: "BYOD - Bring Your Own Disaster"
permalink: /.wip/byod/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>BYOD</span>
    </div>
    <h1>BYOD</h1>
    <p class="page-subtitle">Bring Your Own Device. Also your own vulnerabilities.</p>
</div>

<div class="content-section">
    <h2>Sure, You Can WiFi Your Phone From Our Network</h2>
    <p>The original BYOD policy in most organizations was not a policy. It was a decision made by one person in IT who got tired of the same question and answered "yeah, fine" one afternoon in 2011. Then it became informal practice. Then it became something the auditors noticed. Then it became a policy retroactively written to describe what was already happening, with a "permitted use" section that nobody reads and an enforcement mechanism that doesn't exist.</p>

    <p>This is how most enterprise security policies work. They are archaeology, not architecture.</p>
</div>

<div class="content-section">
    <h2>The MDM Situation</h2>
    <p>Mobile Device Management is the enterprise's answer to BYOD, and the answer is: your personal device, our policies. Want to access corporate email from your phone? Install this agent. The agent will be able to wipe your device, enforce a PIN policy, disable screenshots in corporate apps, and report your device's compliance status to a server run by a vendor whose security practices you cannot audit. You agreed to this in a terms-of-service popup that appeared once during onboarding and has never been shown again.</p>

    <p>The alternative is a corporate-issued device. The corporate-issued device is a 2019 laptop running Windows 10 with 4GB of RAM and a SOE image that includes software you will never use but cannot remove. Pick your inconvenience.</p>
</div>

<div class="fun-facts">
    <h3>The BYOD security surface area</h3>
    <ul>
        <li>The personal device accessing corporate resources also has seventeen apps installed, some of which were last updated when Obama was in office.</li>
        <li>The VPN client on the personal device is version 4.2. The version that fixed the authentication bypass is 4.7.</li>
        <li>The corporate WiFi network the personal device connects to is also the network the conference room TVs are on, the network the IP phones are on, and the network the printer that still runs Windows XP is on.</li>
        <li>Network segmentation was discussed at the last security review. It is scheduled for next quarter. It has been scheduled for next quarter for three years.</li>
        <li>The employee who lost their personal phone in a taxi last Tuesday had corporate email on it. They mentioned this on Thursday.</li>
        <li>Shadow IT is just BYOD for software. You solved one and inherited the other.</li>
    </ul>
</div>

<div class="content-section">
    <h2>Shadow IT: BYOD's Logical Conclusion</h2>
    <p>When the approved tools don't do what people need, people use unapproved tools. This is not malice. It is efficiency. The engineer who set up a personal Dropbox to share files with a contractor was not trying to violate data governance policy — they were trying to do their job with the tools that worked, because the approved tool required a three-week provisioning process and a sponsor at the director level.</p>

    <p>Shadow IT is a symptom. The disease is IT friction so high that circumventing IT is the path of least resistance. You can write a policy banning Shadow IT. You cannot enforce it without fixing the friction. Fixing the friction requires resources. Resources require prioritization. Prioritization requires it to be on someone's OKRs. And we're back to next quarter.</p>
</div>

<div class="quote-box">
    <blockquote>We support personal devices connecting to the corporate network pursuant to completion of the BYOD agreement, device enrollment in our MDM solution, installation of the approved endpoint security client, and acknowledgment of the Acceptable Use Policy. The process takes approximately forty-five minutes. The helpdesk is open Tuesday and Thursday.</blockquote>
    <cite>— The BYOD onboarding experience, in full</cite>
</div>

<div class="content-section">
    <h2>The Zero Trust Pivot</h2>
    <p>Zero Trust is the industry's answer to BYOD, shadow IT, and the general problem of a perimeter that dissolved while everyone was looking at Slack. The idea: don't trust the network, trust the identity. Authenticate everything. Authorize everything. Log everything. This is correct and also requires a complete rebuild of how your network, identity, and access systems work. The tool vendors will tell you it's a journey, not a destination. What they mean is: you will be buying licenses from us indefinitely.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/active-directory/" class="nav-button">← Active Directory</a>
    <a href="/.wip/cafepress/" class="nav-button">CafePress →</a>
</div>
