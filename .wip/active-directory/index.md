---
layout: wip
title: "I still use dcpromo right?"
permalink: /.wip/active-directory/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Active Directory</span>
    </div>
    <h1>I still use dcpromo right?</h1>
    <p class="page-subtitle">15 characters were enough for anyone, circa 1987</p>
</div>

<div class="content-section">
    <p>NETBIOS will only allow for 15 characters, but AD will allow a lot more.</p>

    <img src="/active-directory/tirefir.png" alt="Don't forget to change your computer name" />
</div>

<div class="content-section">
    <h2>The NetBIOS Name Is Forever</h2>
    <p>When you onboard a new server, you get one shot at the NetBIOS name. Fifteen characters. No spaces. Choose wisely, because Active Directory will remember that name long after you've forgotten why you chose <code>PRDSQL01LEGACY2</code>. Renaming it requires a change ticket, two approvals, a maintenance window, and at least one reboot that will break the application team's hardcoded connection strings. The AD schema was designed in an era when 15 characters felt generous. It did not anticipate cloud-first naming conventions, or the deeply human need to name servers after Marvel characters. It simply did not care, and it still doesn't.</p>
</div>

<div class="content-section">
    <h2>dcpromo: A Brief Memorial</h2>
    <p><code>dcpromo</code> was deprecated in Windows Server 2012. Microsoft replaced it with Server Manager and PowerShell, which is technically more capable and spiritually much worse. <code>dcpromo</code> was a wizard that launched other wizards, that asked you questions you didn't know the answers to, that made consequential decisions with a single click of Finish. It was not good. But it was familiar, and familiar is the coin of the realm in AD administration. Now the wizards are gone and the questions are the same and somehow you miss the wizards.</p>
</div>

<div class="content-section">
    <h2>Group Policy: Configuration Management Before Configuration Management</h2>
    <p>Group Policy is, structurally, what YAML-based config management wanted to be when it grew up. Hierarchical. Inherited. Overridable by policy precedence. Applied at boot and at intervals thereafter. It predated Chef and Puppet by a decade and solved the same problem with a different set of pathologies. Your organization's GPO structure started as a clean taxonomy. Then someone needed a one-off exception. Then another exception. Then the exceptions needed exceptions. The domain now has 340 GPOs, 12 of which conflict, 60 of which are disabled but not deleted because nobody's sure, and 1 of which is responsible for a printer mapping that everyone is afraid to remove.</p>

    <p>Understanding why a setting isn't applying requires running <code>gpresult /h</code> and reading a 400-line HTML report. The report raises more questions than it answers. This is not a bug in the tool. This is the accumulated result of fifteen years of administrative decisions, each of which made sense at the time.</p>
</div>

<div class="content-section">
    <h2>The Kerberos Ticket Experience</h2>
    <p>Kerberos authentication requires that the clocks on your client and your domain controllers agree to within five minutes. This is the single most elegant footgun in enterprise infrastructure. A VM spins up with a stale clock. An NTP sync fails silently. A laptop comes out of hibernation after a timezone change. The error is <code>KDC_ERR_SKEW</code> and the user's experience is that their password stopped working. The fix is to sync the clock. The time it takes to figure out that the fix is syncing the clock is inversely proportional to how much sleep you got last night.</p>
</div>

<div class="quote-box">
    <blockquote>Sure, you can change the computer name. You'll just need to rejoin the domain, update DNS, reregister the SPNs, fix the service accounts, update monitoring, and explain to the application team why their connection strings are wrong. Should take a couple hours.</blockquote>
    <cite>— Every AD admin, every time</cite>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
