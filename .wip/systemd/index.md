---
layout: wip
title: "service blob stop"
permalink: /.wip/systemd/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>systemd</span>
    </div>
    <h1>service blob stop</h1>
    <p class="page-subtitle">PID 1 has opinions about your cron jobs, your DNS, and your logs, whether you asked or not.</p>
</div>

<div class="content-section">
    <img src="/systemd/systemd.gif" alt="service blob stop" />

    <p>systemd shall eat the world, even as you set it on fire.</p>
</div>

<div class="content-section">
    <h2>PID 1 and Its Ambitions</h2>
    <p>systemd started as an init system. The original case was reasonable: SysV init was slow, the ordering was specified by symlinks and renamed scripts, and parallel startup required timing hacks. systemd offered dependency declaration, socket activation, and a genuine improvement in boot time. In 2010 this was a defensible scope.</p>

    <p>Then it absorbed cron-like functionality with timers. Then it replaced syslog with the journal. Then networkd and resolved took over network configuration and DNS. Then logind, then machined, then nspawn. The pattern is consistent: identify an adjacent system component, observe that it could integrate more tightly with the service manager, and absorb it. The scope of "init system" expanded until it meant "most of userspace."</p>

    <p>Lennart Poettering has said, correctly, that these components are optional and can be replaced. This is technically true. It is also true that distributions have steadily shipped the full stack, that documentation increasingly assumes it, and that integrating anything cleanly with systemd-resolved while not running systemd-networkd is an afternoon of configuration archaeology.</p>
</div>

<div class="content-section">
    <h2>The Migration Friction</h2>
    <p>The transition period between SysV init and systemd produced a specific class of pain that is not fully over. The old interface was <code>service nginx restart</code>. The new interface is <code>systemctl restart nginx</code>. Both work on most distributions for now, because someone wrote a compatibility shim. The shim prints a deprecation notice. You suppress the deprecation notice. Years pass. Someone new to the team uses the old form, gets the deprecation notice, asks about it, and you explain the whole thing again.</p>

    <p>The journal replaced text logs with a binary format. <code>journalctl</code> reads it. <code>journalctl -u service-name -f</code> follows it. <code>journalctl --since "10 minutes ago"</code> filters by time. This works well enough. The part where it doesn't work is when the journal fills your disk because the default retention configuration is "fill the disk and then start rotating," and your service is logging at debug level in production because someone deployed with the wrong config, and now you have a full disk and a systemd journal that is the only thing writing to it, and killing the journal to get space back is more involved than <code>rm -rf /var/log/nginx/*.log</code>.</p>
</div>

<div class="quote-box">
    <blockquote>The unit file has a syntax error on line 14. systemd loaded it anyway. The service started. The service is running. systemctl reports the syntax error. The service continues to run. This is fine.</blockquote>
    <cite>— observed in production, filed as informational</cite>
</div>

<div class="content-section">
    <h2>The Unit File as Configuration Surface</h2>
    <p>Unit files are declarative and mostly sensible. You declare what a service needs, what it should do when it fails, what environment it runs in. The <code>Restart=on-failure</code> directive is genuinely useful. <code>After=network-online.target</code> expresses a dependency clearly. This part of systemd is fine.</p>

    <p>The part that accumulates complexity is the ordering. <code>Wants</code>, <code>Requires</code>, <code>After</code>, <code>Before</code>, <code>BindsTo</code>, <code>PartOf</code> — these express different semantics about what happens when dependencies fail or stop. Getting this wrong means your service doesn't start on boot, or starts too early, or starts and immediately stops because its dependency was declared wrong. The failure mode is silent. <code>systemctl status</code> tells you the service is inactive. <code>journalctl -u service -b</code> tells you it started and stopped. Why it stopped requires reading the dependency graph, which requires <code>systemctl list-dependencies</code>, which shows you a tree that is correct but not annotated with the failure reason.</p>

    <p>You run <code>systemctl daemon-reload</code> after every unit file change. You learn this by forgetting it once and spending twenty minutes confused about why your edit had no effect. This is not a bad design exactly — the in-memory state and the on-disk state are separate things and that matters. It is just one more thing to remember.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← All Disasters</a>
</div>
