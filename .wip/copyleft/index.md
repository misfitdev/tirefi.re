---
layout: wip
title: "Copyleft - Open Source License Hell"
permalink: /.wip/copyleft/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Copyleft</span>
    </div>
    <h1>Open Source Licensing</h1>
    <p class="page-subtitle">Free as in "please read the entire license before shipping anything"</p>
</div>

<div class="content-section">
    <h2>Industrial Waste</h2>
    <p>The original license on this site called its contents "Industrial Waste" — you can have it, but the problems are yours, don't leave it in a pond. This is the most honest open source license ever written. Most licenses are more formal and less honest. They exist on a spectrum from "you can do anything" to "you can do anything as long as you do everything," and the interesting part is figuring out where your specific use case falls, which requires either a lawyer or a very high tolerance for ambiguity.</p>

    <p>Neither option is free.</p>
</div>

<div class="content-section">
    <h2>The Spectrum</h2>
    <p>On one end: the WTFPL. Do What The F*** You Want. Two clauses, both of which say you can do what you want. No attribution required. No requirements of any kind. Legal teams hate it because they can't be sure it's enforceable, and a license that might not be enforceable is almost worse than no license, which is a perspective that tells you something about how legal teams think about open source.</p>

    <p>On the other end: AGPL. The GNU Affero General Public License. Source must be provided. Modifications must be released. If you run it as a service, that counts as distribution. Your entire codebase is now potentially in scope. Legal teams see AGPL in a dependency and file an emergency ticket. The ticket sits for three weeks because everyone has the same ticket and nobody knows what to do.</p>
</div>

<div class="fun-facts">
    <h3>License compatibility matrix, simplified</h3>
    <ul>
        <li>MIT: Do whatever. Credit us. That's it. Legal teams: "We can work with this."</li>
        <li>Apache 2.0: Like MIT but with a patent grant. Legal teams: "We can work with this, probably."</li>
        <li>GPL v2: Share your changes. Legal teams: "Does our product link to this? Define 'link.'"</li>
        <li>GPL v3: Like v2 but updated for the modern era, which means more clauses. Legal teams: "Does our product link to this? Define 'our product.'"</li>
        <li>AGPL: Share your changes, including if you run it as a SaaS. Legal teams: *files emergency ticket*</li>
        <li>SSPL: MongoDB's license, not OSI-approved, definitely not open source, definitely still called open source in press releases.</li>
        <li>BSL: Business Source License. Open source with an expiry date and conditions. Legal teams have a meeting about this one.</li>
        <li>WTFPL: Legal teams: "Is this real? Can we use this? I need a second opinion."</li>
    </ul>
</div>

<div class="content-section">
    <h2>The License Audit</h2>
    <p>At some point in every company's growth, someone in legal discovers that the engineering team has been pulling in open source dependencies without tracking their licenses. This person will want a full audit. The audit will reveal that the application has 847 transitive dependencies, that 12 of them are GPL-licensed, that 3 of those are AGPL-licensed, and that 2 of those are used in a service that's been in production for four years.</p>

    <p>The audit will not have a clear resolution. There will be a meeting. Then another meeting. Then a decision to "remediate" which means finding an alternative or getting a legal opinion on whether the current usage qualifies as distribution. The alternative will take two sprints. The legal opinion will cost more than two sprints. Everyone will agree the real fix is better license tracking going forward. Going forward is not the same as right now.</p>
</div>

<div class="quote-box">
    <blockquote>The license says you can use this in commercial products as long as you include the license text, provide source for modifications, don't use the contributor names for endorsement, and grant a patent license to all users. The lawyers have been discussing whether the last clause applies to us for about six weeks. They'll get back to us.</blockquote>
    <cite>— The dependency review, unresolved</cite>
</div>

<div class="content-section">
    <h2>The "Open Core" Model</h2>
    <p>The venture-backed open source company eventually discovers that "open source" and "sustainable business" have a tension. The resolution is open core: the core is open, the good stuff is enterprise. The community builds the core. The company sells the good stuff. The community starts to wonder what they're building the core for. The company hires developer relations people to manage this concern. The developer relations people are sincerely earnest and cannot explain the license change that converted the community's contributions into proprietary enterprise features. The community forks the project. The company issues a blog post about how committed they are to open source. This has happened more than a dozen times in the past five years. It will happen again.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/cafepress/" class="nav-button">← CafePress</a>
    <a href="/.wip/cryops/" class="nav-button">CryOps →</a>
</div>
