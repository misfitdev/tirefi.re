---
layout: wip
title: "Windows - This is a Windows fire"
permalink: /windows/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Windows</span>
    </div>
    <h1>This is a Windows fire</h1>
    <p class="page-subtitle">You know you miss Windows ME..</p>
</div>

<div class="content-section">
    <a href="https://www.reddit.com/r/rant/comments/3o95vb/microsoft_fuck_you_windows_10/"><img src="/classic/windows/windows_burning.gif" alt="AHHHH Windows!." /></a>

    <p>You know you miss Windows ME..</p>
</div>

<div class="content-section">
    <h2>The Datacenter</h2>
    <p>In a shop that is otherwise Linux, the Windows servers are a separate country. They have their own authentication domain, their own patching cycle, their own tooling, and a small group of people who know how they work. Everyone else treats them as an external dependency — something that exists, produces outputs, must not be touched. The Windows admins are fluent in a dialect nobody else speaks: Group Policy, WMI queries, PowerShell remoting, the specific sequence of things you do when a domain controller develops opinions.</p>

    <p>The servers are there because something required them. A vendor-supplied application that only runs on Windows Server. A reporting tool. Something involving IIS. The original decision was made years ago and the justification is now tribal knowledge — "it's always been that way" is the documentation. The application vendor assures you they're working on a Linux version. They have been working on the Linux version for six years.</p>
</div>

<div class="content-section">
    <h2>Patch Tuesday</h2>
    <p>The second Tuesday of every month, Microsoft releases a batch of security updates. This is a known, scheduled event. It is still dreaded. Not because the patches are optional — they are not optional, the CVEs are real and the attackers read the patch notes — but because "patch" and "reboot" are synonymous in Windows, and "reboot" means "whatever undocumented state that server had accumulated over eight months of uptime is now gone, and you will find out what it was when the application doesn't start."</p>

    <p>The change freeze exists to prevent patches being applied without a maintenance window. The maintenance window exists to allow patches to be applied with someone watching. The someone watching is on-call on a Tuesday night, waiting for IIS to come back up and the application pool to warm, refreshing the monitoring dashboard to see whether the health check turns green. Sometimes it does. Sometimes there is a thing that has always worked before and does not work now, and the thing is a service dependency, and the service dependency has a log, and the log is in Event Viewer, and Event Viewer has eleven thousand information-level entries surrounding the one error entry, and it is midnight.</p>
</div>

<div class="content-section">
    <h2>The Exception</h2>
    <p>"Some things only run on Windows" is the sentence that has kept Windows in datacenters for twenty years past the point where anyone wanted it there. It is usually true when stated. The some things are real: legacy line-of-business applications compiled against .NET Framework versions that don't run on .NET Core, hardware drivers for devices that have no Linux support, software whose vendor considers Linux a feature request rather than a platform. You containerize what you can, you migrate what you can migrate, and the things that remain are the things that cannot be moved without breaking something the business actually uses.</p>

    <p>WSL was Microsoft's acknowledgment that developers had left. Azure was the acknowledgment that the datacenter was leaving. Windows Server persists in the places where the leaving hasn't finished yet, which is most places, which is why there are still Windows servers in racks next to Linux boxes, being patched on the second Tuesday of every month, rebooting into whatever state they reboot into, producing logs in Event Viewer that are technically searchable.</p>
</div>

<div class="quote-box">
    <blockquote>The vendor's Linux version is in active development and expected to be available in a future release.</blockquote>
    <cite>— support ticket response, 2019; also 2021; also 2023</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
