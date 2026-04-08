---
layout: wip
title: "GNU - The Philosophy That Became a License Compliance Problem"
permalink: /gnu/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>GNU</span>
    </div>
    <h1>GNU/Linux</h1>
    <p class="page-subtitle">Well, actually.</p>
</div>

<div class="content-section">
    <h2>The Project</h2>
    <p>In 1983, Richard Stallman announced the GNU Project with the goal of creating a free Unix-like operating system. Free as in freedom, not as in price — the distinction he has made approximately eight hundred million times since and which remains genuinely important and genuinely exhausting to explain to new people. By the early 1990s, GNU had most of the components for a complete OS: compilers, utilities, editors. What it lacked was a kernel. Linus Torvalds provided the kernel in 1991. Stallman argues, with some justification, that the result should be called GNU/Linux to acknowledge the GNU components. The rest of the world says "Linux." Stallman has been correcting people about this since 1992. It has not worked.</p>

    <p>The GNU/Tirefire thing practically writes itself.</p>
</div>

<div class="content-section">
    <h2>Free Software vs. Open Source</h2>
    <p>There is a philosophical divide here that matters and that most people who use Linux don't think about. Stallman's Free Software Foundation cares about user freedom as a moral principle: software that restricts what you can do with it is ethically wrong, not just inconvenient. The Open Source Initiative, founded in 1998, reframed this as a pragmatic development methodology: open source produces better software. Same practice, different justification.</p>

    <p>The difference sounds academic until you're deciding whether to use a library under the GPL or the MIT license for a product you plan to sell. The GPL says: if you distribute software that includes GPL code, you must distribute your source code too. The MIT license says: do whatever you want, just keep the copyright notice. Corporate legal teams have formed opinions on this distinction. The opinions cost billable hours. The billable hours are why your company's open source review process takes six weeks.</p>

    <div class="quote-box">
        <blockquote>
            <p>"I'd just like to interject for a moment. What you're referring to as Linux, is in fact, GNU/Linux, or as I've recently taken to calling it, GNU plus Linux."</p>
            <cite>— Richard Stallman, 2009, in a post that became a copypasta template for "well, actually" corrections across the entire internet</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The GPL in Practice</h2>
    <p>The GPL — General Public License — is the license Stallman wrote to ensure that free software stays free. Any derivative work must also be GPL. This is called "copyleft," a pun on copyright that Stallman invented and which remains the cleverest thing about the whole framework. The GPL version 2 covers the Linux kernel. The GPL version 3 added protections against Tivoization — the practice of using GPL software in hardware that prevents users from modifying it. The Linux kernel specifically uses GPLv2 only, not "or later," which means GPLv3 doesn't apply, which is a source of ongoing tension between Linus Torvalds and the FSF that has been ongoing since 2007.</p>

    <p>Your corporate legal team does not want to hear any of this. They want to know: can we ship it, and are we exposed. The answer is: probably yes, and it depends. This is not a satisfying answer. It is, however, the answer.</p>
</div>

<div class="content-section">
    <h2>RMS</h2>
    <p>Richard Stallman's personal history is complicated in ways that this site won't relitigate. He resigned from MIT and the FSF in 2019 following controversy over statements he made. He was reinstated to the FSF board in 2021, which caused a significant number of the FSF's major supporters to withdraw funding and issue public statements. The GNU Project has continued. The philosophical arguments about software freedom continue. The license compliance problems continue. The corporate legal teams continue to charge hourly rates for advice that amounts to "try to use MIT-licensed things when you can."</p>

    <p>The ideas in free software — user freedom, the right to inspect, modify, and share software — are worth taking seriously independent of any one person's biography. The institutions are imperfect. The ideas outlast the institutions. This is true of most ideas worth having.</p>

    <div class="fun-facts">
        <h3>License Quick Reference</h3>
        <ul>
            <li><strong>GPL v2</strong> — Linux kernel; derivatives must be GPL; your legal team will ask clarifying questions</li>
            <li><strong>GPL v3</strong> — adds Tivoization protection; Linus won't use it; Android can't use it</li>
            <li><strong>LGPL</strong> — "lesser" GPL; linking doesn't count as a derivative; legal team slightly less alarmed</li>
            <li><strong>AGPL</strong> — GPL but for network use; SaaS loophole closed; legal team immediately alarmed</li>
            <li><strong>MIT</strong> — do what you want; keep the notice; legal team happy; Stallman unhappy</li>
            <li><strong>Apache 2.0</strong> — like MIT but with patent termination clause; legal team prefers this</li>
            <li><strong>WTFPL</strong> — exactly what it sounds like; legal team will not allow it in your codebase</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">Back to All Disasters</a>
    <a href="/debate/" class="nav-button">Related: Debates</a>
</div>
