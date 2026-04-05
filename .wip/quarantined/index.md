---
layout: wip
title: "Quarantined - Remote Ops Work"
permalink: /.wip/quarantined/
tags: [culture]
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Quarantined</span>
    </div>
    <h1>Single Point of Failure: Your ISP</h1>
    <p class="page-subtitle">ops work from home, where the home lab is production-adjacent and the internet is on best-effort SLA</p>
</div>

<div class="content-section">
    <h2>The Setup</h2>
    <p>You work from home now. This is fine. You have a good chair, a good monitor, fiber internet, and a router you configured yourself because you are an infrastructure person and you cannot leave a default configuration alone. The router has VLANs. There is a separate SSID for IoT devices. You have a UPS under the desk.</p>
    <p>The UPS is there because you learned, the first time you responded to an incident during a thunderstorm, that your internet goes out when the power flickers. You now have continuous power to your networking equipment. You do not have continuous power to the cable head-end three blocks away, which goes down in the same thunderstorm and is your actual single point of failure.</p>
    <p>You added a cellular backup. The cellular backup has 30GB per month. One Kubernetes debug session can use 4GB. You are careful now.</p>
</div>

<div class="content-section">
    <h2>The Helpdesk Ticket</h2>
    <p>It does not matter what the problem is. The first response is "are you on VPN?" You are always on VPN. You have been on VPN since 8am. The VPN is how you know the problem is not on your end. You say this. The second response is "have you tried disconnecting and reconnecting to VPN?"</p>
    <p>You disconnect and reconnect. The problem is not resolved. It was never a VPN problem. It was a problem with a service that happens to require VPN to access, which means the ticket system associates all problems with VPN. This has been true for years and will continue to be true.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Are you on VPN?"</p>
            <cite>— IT helpdesk, before reading the ticket. Also after reading the ticket.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>Responding to Incidents in Pajamas</h2>
    <p>The page comes in at 11:47pm. You are in bed but not asleep. You respond within two minutes. You are on the bridge in four. By the time the incident commander does the first status update you have already found the anomaly in the logs and have a working theory.</p>
    <p>This is one of the things nobody talks about when they debate remote work: the on-call response time for someone who works from home, rolls out of bed directly to their desk, and does not have to commute to the office, is often faster than someone who needs to find a quiet place to take the call. There is no commute to the laptop. The laptop is already there. The laptop has been there all day.</p>
    <p>The incident is resolved at 1:20am. You write the initial incident summary. You close the laptop. You go back to bed. You remember, as you fall asleep, that the follow-up tasks are already in the doc. You will look at them in the morning. You have been saying this for three years and it is still true about half the time.</p>

    <div class="fun-facts">
        <h3>Remote Ops Infrastructure Choices</h3>
        <ul>
            <li>Business-grade cable is not business-grade. It is residential cable with a higher price.</li>
            <li>Your home lab's most important function is having a terminal open to production that doesn't drop when your laptop sleeps</li>
            <li>The KVM switch exists so you can respond to a page without putting down your dinner</li>
            <li>A 4G failover that activates automatically feels like witchcraft the first time it saves you during an incident</li>
            <li>Your family has learned not to run the dishwasher during the hours you might be on a bridge call</li>
            <li>You have tested your headset's noise cancellation against a lawnmower and a toddler. It passed one of those tests.</li>
        </ul>
    </div>
</div>

<div class="content-section">
    <h2>The Thing Nobody Prepared You For</h2>
    <p>When you worked in an office, the commute was a transition. You left work and drove home and somewhere in that thirty minutes you became a non-work person. The context switched. Now the context does not switch. The laptop is always on the desk. The Slack is always on your phone. The boundary is wherever you decide to put it, and deciding requires more energy than anyone told you it would.</p>
    <p>Remote ops work is, in aggregate, more efficient. Less commute, faster incident response, fewer interruptions from people walking past your desk to ask questions they could have sent in a message. The physical infrastructure of your home is also, slowly, becoming part of your ops infrastructure. You know this because you think about your ISP's maintenance windows.</p>
    <p>You think about your ISP's maintenance windows. Nobody warned you it would come to this.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Are you dialing in from home? You sound a little muffled."</p>
            <cite>— Someone on a call you joined from your kitchen at 3am while waiting for a deploy to finish</cite>
        </blockquote>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/president/" class="nav-button">← President of On-Call</a>
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
</div>
