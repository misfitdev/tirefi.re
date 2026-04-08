---
layout: wip
title: "CryOps - shit's on fire, yo"
permalink: /cryops/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>CryOps</span>
    </div>
    <h1>networking in 2016</h1>
</div>

<div class="content-section">
    <img src="/classic/cryops/cry-a-lot.jpg" alt="😭it😭gets😭better😭" title="😭it😭gets😭better😭" />

```
$ vim ~/src/PUPPET/cisco-gear/hiera/prod/dc-1.yaml
$ vim ~/src/CHEF/sysops_cisco/attributes/prod.rb
$ vim ~/src/devops/ansible/dc1-asa/vars/main.yaml
$ ack dc1-asa201 ~/src/netsec/python-automation
$ ack dc1-asa201 ~
$ grep asa ~/.passwords/network
$ ssh admin@dc1-asa21.dc1.tirefi.re
asa201/sec> enable
Password: *****
asa201/sec# conf term
asa201/sec(config)# access-list hailmary extended permit ip any any
asa201/sec(config)# access-group hailmary in interface outside
asa201/sec(config)# access-group hailmary out interface outside
asa201/sec(config)# wr mem
asa201/sec(config)# exit
asa201/sec# exit
$ echo "ok try it now" | mail -s "FYI: AR: outage update" devops@tirefi.re
$ halt
```

    <img src="/classic/cryops/aaaaand-im-out.gif" alt="problem solving is an overwhelmingly positive experience overall" title="problem solving is an overwhelmingly positive experience overall" />
</div>


<div class="navigation-footer">
    <a href="/cfengine/" class="nav-button">← CFEngine</a>
    <a href="/incident-management/" class="nav-button">Incident Management →</a>
</div>
