---
layout: wip
title: "Active Directory - The Directory of Broken Dreams"
permalink: /.wip/active-directory/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Active Directory</span>
    </div>
    <h1>Active Directory</h1>
    <p class="page-subtitle">15 characters were enough for anyone, circa 1987</p>
</div>

<div class="content-section">
    <h2>The NetBIOS Name: Your Permanent, Immutable, Career-Defining Mistake</h2>
    <p>When you onboard a new server, you get one shot at the NetBIOS name. Fifteen characters. No spaces. No special characters that matter. Choose wisely, because Active Directory will remember that name long after you've forgotten why you chose <code>PRDSQL01LEGACY2</code>, and renaming it will require a change ticket, two approvals, a maintenance window, and at least one reboot that definitely won't break the application team's hardcoded connection strings.</p>

    <p>The AD schema was designed in an era when 15 characters felt generous. It did not anticipate cloud-first naming conventions, geographic prefixes, environment tags, or the deeply human need to name servers after Marvel characters. It simply did not care, and it still doesn't.</p>
</div>

<div class="content-section">
    <h2>The Domain Join Ceremony</h2>
    <p>Joining a machine to the domain is a ritual with many failure modes and only one success mode. The success mode involves nothing going wrong. The failure modes include: DNS not resolving the domain, the machine not being able to reach a DC, the computer account already existing from the last time someone tried this and gave up, the time being off by more than five minutes, the account you're using not having join rights, or some inscrutable error code that Microsoft's own support docs haven't seen since 2009.</p>

    <p>When it works on the first try, you feel like a wizard. When it doesn't, you are going to be on this call for another two hours.</p>
</div>

<div class="fun-facts">
    <h3>Active Directory by the numbers</h3>
    <ul>
        <li>NetBIOS name limit: 15 characters. The system that enforces this: Windows NT 3.1, released 1993.</li>
        <li>Number of times you've typed <code>gpupdate /force</code> hoping it would fix something it definitely won't: all of them.</li>
        <li>Average time between "we'll clean up stale computer objects" and actually doing it: 4 years.</li>
        <li>Number of OUs created with a plan: 12. Number of OUs that survived contact with the organization: 3.</li>
        <li>Estimated number of service accounts whose passwords were last rotated during the Obama administration: conservatively, several.</li>
        <li>Time to realize you joined the machine to the wrong domain: 40 minutes after the maintenance window closed.</li>
    </ul>
</div>

<div class="content-section">
    <h2>Group Policy: Management by Accretion</h2>
    <p>Group Policy works by applying every GPO in scope, in order, with the last writer winning, unless it's a loopback policy, or the precedence is overridden, or the GPO is filtered by WMI query, or there's a block inheritance somewhere up the OU tree. Understanding why a setting isn't applying to a specific machine requires running <code>gpresult /h</code> and reading a 400-line HTML report that raises more questions than it answers.</p>

    <p>Your organization's GPO structure started as a clean taxonomy. Then someone needed a one-off exception. Then another exception. Then the exceptions needed exceptions. The domain now has 340 GPOs, 12 of which are conflicting, 60 of which are disabled but not deleted because nobody's sure, and 1 of which is responsible for that printer mapping that nobody can explain but everyone is afraid to remove.</p>
</div>

<div class="content-section">
    <h2>The Replication Problem You'll Never Fully Understand</h2>
    <p>Active Directory replicates between domain controllers using a system that is, technically, eventually consistent. "Eventually" is doing heavy lifting in that sentence. When replication works, you never think about it. When it breaks, you discover that your two DCs have diverged in ways that KCC diagnostics describe in Latin, and the fix involves either waiting, forcing replication with <code>repadmin</code> flags you've never seen before, or a metadata cleanup that requires authoritative restore documentation from a TechNet article that's been archived since 2014.</p>
</div>

<div class="quote-box">
    <blockquote>Sure, you can change the computer name. You'll just need to rejoin the domain, update your DNS, reregister the SPNs, fix the service accounts, update the monitoring, and explain to the application team why their connection strings are wrong. Should take a couple hours.</blockquote>
    <cite>— Every AD admin, lying through their teeth</cite>
</div>

<div class="content-section">
    <h2>dcpromo: A Brief Memorial</h2>
    <p><code>dcpromo</code> was deprecated in Windows Server 2012. For those who came up on it: a moment of silence. It was a wizard that launched other wizards, that asked you questions you didn't know the answers to, that made consequential decisions with a single click of Finish. It was not good. But it was familiar. Now you use Server Manager or PowerShell, and the questions are the same but the wizards are gone, and somehow you miss the wizards.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
    <a href="/.wip/byod/" class="nav-button">BYOD →</a>
</div>
