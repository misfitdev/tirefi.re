---
layout: wip
title: "Facebook - Move Fast and Break the Internet"
permalink: /facebook/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Facebook</span>
    </div>
    <h1>Move Fast and Break Things</h1>
    <p class="page-subtitle">The philosophy that works great until you break the DNS for 3.5 billion people.</p>
</div>

<div class="content-section">
    <h2>The Philosophy</h2>
    <p>"Move fast and break things" was a real company motto, printed on posters, repeated in all-hands meetings, cited in profiles as evidence of a certain kind of bravado. The idea was that speed matters more than perfection, that shipping beats waiting, that caution is a form of slowness and slowness is death. This is not entirely wrong. It is the part they left off the poster that causes problems: "and have a plan for when you break things, and maybe think about what you might be breaking before you break it."</p>

    <p>Facebook eventually retired the motto in 2014, replacing it with "Move fast with stable infrastructure." This was less catchy. It was also, notably, adopted after several years of high-profile outages and a recognition that at a certain scale, "break things" has consequences beyond your sprint velocity.</p>
</div>

<div class="content-section">
    <h2>October 4, 2021</h2>
    <p>At 11:39 AM Eastern, Facebook, Instagram, WhatsApp, Oculus, and Facebook Workplace went down. They stayed down for approximately six hours. The cause was a routine BGP maintenance operation that accidentally withdrew the BGP route announcements for Facebook's entire autonomous system. DNS stopped resolving. The apps couldn't reach their backends. The backends couldn't reach their internal systems. The certificate authority servers were unreachable. The physical badge readers at Facebook campuses used Facebook's internal network and stopped working, meaning employees trying to physically get to the data centers to fix the problem couldn't get into the buildings.</p>

    <p>Engineers eventually had to be physically escorted to the data centers. Once inside, they found that the systems that would normally be used to push configuration changes remotely were also unavailable, because those systems were on the same network that had just been withdrawn from the internet. They had to make changes manually, in person, in the data center.</p>

    <div class="quote-box">
        <blockquote>
            <p>"To the engineers who worked on this problem: that took guts. The rest of the postmortem reads like a distributed systems final exam where every answer is 'because we coupled things that shouldn't be coupled.'"</p>
            <cite>— Nobody at Facebook wrote this. Someone at every other company read the postmortem and thought this.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The BGP Part</h2>
    <p>BGP — Border Gateway Protocol — is how the internet routes traffic between autonomous systems. It is how your ISP knows that traffic for Facebook should go toward Facebook's network. When Facebook withdrew its own routes, the rest of the internet simply stopped knowing where Facebook was. The IP addresses still existed. The servers were still running. Nobody could find them. It is the equivalent of removing your building from every map, every directory, every sign, and then being surprised that customers can't find you.</p>

    <p>BGP is one of those foundational internet protocols that is old, that has known failure modes, and that the entire internet depends on. There have been BGP incidents that knocked out entire regions of the internet. There will be more. BGP was designed when the internet was small and the participants were trusted. The internet is no longer small and the participants include everyone. This is a known problem. The solutions are known. They are not fully deployed because deploying them is hard and the consequences of not deploying them are usually someone else's problem until they are everyone's problem.</p>
</div>

<div class="content-section">
    <h2>What Actually Broke</h2>
    <p>The outage took down communication infrastructure for an estimated 3.5 billion users. WhatsApp is the primary communication channel for enormous portions of the developing world. For six hours, people could not contact their families, coordinate businesses, or access services built on Facebook's infrastructure. The downstream effects included businesses that run entirely through Facebook Pages, NGOs using WhatsApp for field coordination, and the mundane but real reality that a significant fraction of the internet uses "sign in with Facebook" as their authentication method.</p>

    <p>Facebook lost an estimated $65 million in revenue during the outage. Mark Zuckerberg lost approximately $7 billion in net worth as the stock dropped. The engineers who fixed it did so manually, in a data center, after being escorted past locked doors by security. None of this makes it into the "move fast" poster.</p>
</div>

<div class="content-section">
    <h2>The Lesson</h2>
    <p>The lesson is not "don't move fast." The lesson is that at sufficient scale, your infrastructure is not just your infrastructure. Your BGP routes are not just your routes. Your DNS is not just your DNS. The people who will notice your outage include people who don't know your company name, people in countries you don't operate in, people who are just trying to call their grandmother.</p>

    <p>The other lesson, the one that the postmortem buries a bit, is: don't couple your physical access control to the network that you might accidentally take down. That one you can fix with a relatively small project. Maybe put it in the backlog. Tag it Q3 priority.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">Back to All Disasters</a>
    <a href="/dns/" class="nav-button">Related: DNS</a>
</div>
