---
layout: wip
title: "You have committed one of the classic blunders."
permalink: /cafepress/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>CafePress</span>
    </div>
    <h1>Eff An Password Manager</h1>
    <p class="page-subtitle">The password reset email is in your inbox. So is your password.</p>
</div>

<div class="content-section">
    <p>Teespring has a longer run-up to gratification than I'd like, let's see about that snarkowski alternative.</p>

    <img src="/classic/cafepress/violation-one.png" alt="thanks for the inspiration @pczarkowski" />

    <p>Uhh... ok, if you absolutely insist...</p>

    <img src="/classic/cafepress/violation-two.png" alt="seriously though its probably fine" />

    <p>How 'bout fuckin no.</p>

    <img src="/classic/cafepress/stand-there-in-your-wrongness.gif" alt="excuse me while i nope the fuck outta here" />

    <p>Eff an Cafepress, too.</p>
</div>

<div class="content-section">
    <h2>The Plaintext Tell</h2>
    <p>There is a category of security failure that announces itself before you ever lose data. Blocking paste in a password field is one of them. A site that prevents paste has thought about passwords in a way that led to a wrong conclusion — that users typing their password is more secure than users pasting it — and that wrong conclusion tells you something about the rest of their security reasoning. A maximum password length of 20 characters is another tell. If a site cannot accept a 40-character passphrase, something upstream is truncating, and truncation means the stored value is shorter than what you sent, and that means the storage is not a proper hash.</p>

    <p>The tell that closes the case is the password reset email that contains your current password. Not a reset link. Your password. In plaintext. In an email. If a site can email you your password, your password is not hashed. It is stored in a form that is reversible. The technical term for this is a catastrophic security failure. The vendor's term for it, when asked, is usually some variation of "we take security very seriously."</p>
</div>

<div class="content-section">
    <h2>CafePress: From Password Theater to Actual Breach</h2>
    <p>CafePress had a breach in 2019. 23 million records. The passwords were stored with MD5, an algorithm that was deprecated for password hashing purposes in approximately 2004. This is separate from the plaintext issue documented on the original page, which may or may not have been remediated by then — but the MD5 finding suggests the security culture that produced the original paste-blocking and plaintext-emailing was still operational a decade later. The breach was discovered in 2019. Notification went out in 2020. The FTC fined them $500,000 in 2022. The 23 million affected users are approximately as informed about the downstream consequences of their data being sold as they were in 2019, which is to say: not very.</p>
</div>

<div class="content-section">
    <h2>The Breach Notification Letter</h2>
    <p>When it arrives — and at some vendor you use, at some point in the next several years, it will arrive — the breach notification email will tell you that the company takes your security seriously, that they have engaged a leading cybersecurity firm to investigate, that out of an abundance of caution they are notifying you, and that you should change your password. It will not tell you what data was specifically exposed, for how long, or what was done with it. It will offer 12 months of credit monitoring from a service you have never heard of. It was written by a lawyer. The signature will be a C-suite title. That person did not write it.</p>
</div>

<div class="quote-box">
    <blockquote>The paste block is not protecting anyone. The person it inconveniences most is the user who had a strong, unique, randomly generated password ready to go. The person it does not inconvenience at all is the attacker who has already obtained the plaintext from the breach.</blockquote>
    <cite>— The security review that was never commissioned</cite>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
