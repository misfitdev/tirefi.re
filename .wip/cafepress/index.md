---
layout: wip
title: "CafePress - Vendor Security Theater"
permalink: /.wip/cafepress/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>CafePress</span>
    </div>
    <h1>CafePress</h1>
    <p class="page-subtitle">The password reset email is in your inbox. So is your password.</p>
</div>

<div class="content-section">
    <h2>A Classic Blunder</h2>
    <p>The original page on this site documented a specific and infuriating experience: trying to use a password manager with CafePress and discovering the site prevented paste in password fields. That's the move vendors make when they store passwords in a way that requires them to be short and simple, and they know it, and they're choosing obfuscation over disclosure. Blocking paste doesn't improve security. It tells you everything about the person who made that decision.</p>

    <p>CafePress later had an actual breach. 23 million records. The passwords were stored with MD5, an algorithm that was deprecated for security purposes before most of their users had graduated high school. The breach happened in 2019. They notified users in 2020. The FTC fined them in 2022. The fine was $500,000. The 23 million affected users remain approximately as informed as they were in 2019.</p>
</div>

<div class="content-section">
    <h2>Password Practices as Tells</h2>
    <p>You can learn a lot about a company's security culture before you ever create an account. Maximum password length of 16 characters means something is hashing on the frontend or storing something truncated. A confirmation email that contains your password in plaintext means your password is stored in plaintext. A paste block in a password field means somebody thought about security and came to the wrong conclusion. These are tells. The poker player who flashes their cards doesn't know they're doing it.</p>

    <p>The right response when a site emails you your password is to change your password and use a unique one, which you should have done anyway, and to lower your trust in that vendor's security posture proportionally, which is to say: all the way down. They have demonstrated what they don't know. What else don't they know?</p>
</div>

<div class="fun-facts">
    <h3>Security theater warning signs, a field guide</h3>
    <ul>
        <li>Your password appears in the "welcome" email they sent after registration.</li>
        <li>Forgot password sends you your current password instead of a reset link.</li>
        <li>The password field rejects your 30-character passphrase because "passwords must be between 8 and 16 characters."</li>
        <li>The "security question" options include "mother's maiden name" and "name of first pet," both of which are publicly available on your Facebook profile from 2008.</li>
        <li>Two-factor authentication is available as a premium feature.</li>
        <li>The privacy policy says your data may be shared with "trusted partners" and the definition of trusted partners is not provided.</li>
        <li>The SSL certificate expired last Tuesday. The site still works. Someone is aware of this.</li>
    </ul>
</div>

<div class="content-section">
    <h2>The Breach Notification Timeline</h2>
    <p>CafePress's breach notification was sent over a year after the breach occurred. This is not unusual. The average time between breach occurrence and discovery is measured in months. The average time between discovery and disclosure is also measured in months, often while legal and PR align on messaging. By the time the notification email arrives, the data has been for sale long enough to have changed hands several times and been incorporated into at least three credential stuffing lists.</p>

    <p>The email will say they take your security seriously. They will offer twelve months of credit monitoring from a service you've never heard of. They will recommend you change your password. They will not say what was actually in the breach, how long it lasted, or what they've changed. The tone will be apologetic without admitting fault. It was written by a lawyer.</p>
</div>

<div class="quote-box">
    <blockquote>We take the security of your personal information very seriously. We have engaged a leading cybersecurity firm to investigate. Out of an abundance of caution, we are notifying affected users. We recommend changing your password. We apologize for any inconvenience this may have caused.</blockquote>
    <cite>— Every breach notification email ever sent, reconstructed from memory</cite>
</div>

<div class="content-section">
    <h2>Eff an Password Manager, Revisited</h2>
    <p>The original page's rage was the right response. Blocking password managers is not a quirk. It's a signal. Sites that block paste in password fields are telling you something about their security philosophy, and the thing they're telling you is that usability theater takes priority over actual security. The users who comply with these restrictions are the ones most likely to reuse passwords, because they can't remember the complex unique ones they can't paste anyway. The security hole the paste block creates is larger than the one it ostensibly closes. This is not a difficult analysis. Someone made a deliberate choice not to do it.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/byod/" class="nav-button">← BYOD</a>
    <a href="/.wip/copyleft/" class="nav-button">Copyleft →</a>
</div>
