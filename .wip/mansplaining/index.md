---
layout: wip
title: "Well, Actually..."
permalink: /.wip/mansplaining/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>About</span>
    </div>
    <h1>2 W's of Tirefi.re</h1>
    <p class="page-subtitle">the when and why of this particular fire</p>
</div>

<div class="content-section">
    <p>In 2016 I went to interview at a shop about 35 miles from where I live in Austin. I normally wouldn't take a job on the other side of the river, but the way the hiring manager understood things (he was a recent hire himself), we'd be helping an org develop and deploy a new version of their 15-year old application onto AWS, and migrate some hosting workloads into the cloud as well. Shortly after joining it became apparent that there were some entrenched development patterns that would make that difficult. Tight coupling of application logic with the infrastructure meant that if we wanted to get something into AWS quickly, we'd likely have to replicate a decent amount of the internal network logic in AWS. We started looking deeper into the network and compute infrastructure, and realized things were going to be far, far more difficult than anyone with any internal context had communicated to us.</p>

    <p>In our primary datacenter, we had at least 3 hypervisors, 5 network vendors, Puppet 2.7, Puppet 3.4, Rundeck, Jenkins, and Octopus deploy, our business-critical MySQL databases were running on 5+ year old machines with in OpenVZ, provisioning new sites required orchestrating network configuration changes in Cisco, A10, Vyatta, a central Nginx proxy, and probably more but just writing this down makes me tired. Anyway, I needed a way to cope with the constant surprises and despair this caused, so that I could keep maintaining as positive an attitude as possible and inspiring people to dive into more positive patterns. There was an emergent meme at the time that 2016 was a tire fire in general, so when I realized that I wanted to make a website about tire fires I did a domain search. Turns out, tirefi.re was available and so I grabbed it.</p>

    <p>The idea of the site is basically this: When one feels like whatever they're working on is a tire fire, they can fork the code, add an entry for their thing with a well-intentioned joke about the thing (hopefully involving imagery), make a PR, and have a bit of a cathartic laugh on the internet that others can share in. I'm incredibly grateful to the people who've become part of the project through their contributions, whether in the github repository or elsewhere. If you tell someone about the project, link to it, whatever, my hope is that everyone comes away with a sensible chuckle or two and their day is just a little better.</p>

    <p>Feel free to add your own story or experience with this Super Duper Web Sight below. That's my When and Why story.</p>

    <p>Thanks,<br>Shaun</p>
</div>

<div class="content-section">
    <h2>What Happened Next</h2>
    <p>The job didn't work out the way the hiring manager had framed it. It rarely does when the discovery phase reveals that the migration scope was understood only by people who had every incentive to understate it. The MySQL on OpenVZ stayed where it was. The five network vendors stayed. The domain search, however, yielded tirefi.re for a few dollars a year, and that turned out to be the thing worth keeping.</p>

    <p>Since 2016, the site has accumulated contributors who recognized the feeling — the specific ops experience of inheriting something that has been technically functional long past the point where anyone fully understands why, and needing somewhere to put the laugh about it. The entries have grown. The technologies have changed. The underlying experience of being handed a tire pile and a match and asked to please not let it spread to the servers next door has not changed at all.</p>

    <p>The tire fire metaphor has held up. A tire fire starts because something deferred finally ignites. Standard suppression doesn't work — burning rubber keeps reigniting. The smoke drifts into places it wasn't supposed to reach. And critically: the tires were already out of service. The pile was already there. The fire is just the natural end state of accumulated decisions. That's ops. That's this site.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
