---
layout: wip
title: "tirefi.re"
permalink: /
firebg: true
---

<div class="classic-home">
    <div class="home">
        <h1 class="page-heading">This is a tire fire</h1>
        <p class="main">
            <img src="/tirefirebillow.gif" alt="Moving image of a field of tires on fire.">
        </p>
        <ul class="post-list">
            {% for post in site.posts %}
            <li>
                <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
                <h2><a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h2>
            </li>
            {% endfor %}
        </ul>
        <p class="rss-subscribe">subscribe <a href="/feed.xml">via RSS</a></p>
    </div>
</div>

<div class="wip-home">

<div class="index-header">
    <h1>This is a tire fire</h1>
    <p class="index-tagline">the tire fire burns eternal</p>
</div>

<div class="filter-controls">
    <input
        type="search"
        id="filterInput"
        class="filter-input"
        placeholder="filter..."
        autocomplete="off"
        spellcheck="false"
        aria-label="Filter topics"
        aria-controls="filterList"
        aria-live="polite"
    >
    <div class="filter-meta" id="filterMeta" aria-live="polite"></div>
</div>

<div class="col-head" aria-hidden="true">
    <span>#</span><span>Topic</span><span>Severity</span><span>Description</span>
</div>

<ul class="filter-list" id="filterList" aria-label="Topics">
    <li class="filter-item" data-sev="5" data-name="active directory" data-desc="NetBIOS: 15 characters of permanent regret" data-tags="enterprise,windows,microsoft">
        <a href="/active-directory/"><span class="idx" aria-hidden="true">01</span><span class="item-name">active directory</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">NetBIOS: 15 characters of permanent regret</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="airbnb" data-desc="Disrupting hospitality and uptime simultaneously" data-tags="culture,startups">
        <a href="/airbnb/"><span class="idx" aria-hidden="true">02</span><span class="item-name">airbnb</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Disrupting hospitality and uptime simultaneously</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="american craft" data-desc="Small-batch, locally-sourced, thoroughly unmaintainable" data-tags="culture">
        <a href="/americancraft/"><span class="idx" aria-hidden="true">03</span><span class="item-name">american craft</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Small-batch, locally-sourced, thoroughly unmaintainable</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="australia" data-desc="Everything is trying to kill your uptime" data-tags="culture,infra">
        <a href="/australia/"><span class="idx" aria-hidden="true">04</span><span class="item-name">australia</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">Everything is trying to kill your uptime</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="aws" data-desc="Amazon's infinite money extraction service" data-tags="cloud,amazon">
        <a href="/aws/"><span class="idx" aria-hidden="true">05</span><span class="item-name">aws</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Amazon's infinite money extraction service</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="byod" data-desc="Bring your own device. Also your own vulnerabilities." data-tags="enterprise,culture,security">
        <a href="/byod/"><span class="idx" aria-hidden="true">06</span><span class="item-name">byod</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Bring your own device. Also your own vulnerabilities.</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="cafepress" data-desc="The password reset email contains your password" data-tags="culture,security">
        <a href="/cafepress/"><span class="idx" aria-hidden="true">07</span><span class="item-name">cafepress</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">The password reset email contains your password</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="cfengine" data-desc="Mark Burgess was right. Nobody listened correctly." data-tags="config-mgmt,configmanagement">
        <a href="/cfengine/"><span class="idx" aria-hidden="true">08</span><span class="item-name">cfengine</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">Mark Burgess was right. Nobody listened correctly.</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="chef" data-desc="Too many cooks in the infrastructure kitchen" data-tags="config-mgmt,configmanagement,ruby">
        <a href="/chef/"><span class="idx" aria-hidden="true">09</span><span class="item-name">chef</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">Too many cooks in the infrastructure kitchen</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="copyleft" data-desc="Free as in please consult legal before shipping" data-tags="culture,licensing">
        <a href="/copyleft/"><span class="idx" aria-hidden="true">10</span><span class="item-name">copyleft</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Free as in please consult legal before shipping</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="cryops" data-desc="Five tools, zero sources of truth, one hailmary ACL" data-tags="culture,incidents,config-mgmt">
        <a href="/cryops/"><span class="idx" aria-hidden="true">11</span><span class="item-name">cryops</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">Five tools, zero sources of truth, one hailmary ACL</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="devops" data-desc="You build it, you break it, you cry about it" data-tags="culture,process">
        <a href="/devops/"><span class="idx" aria-hidden="true">12</span><span class="item-name">devops</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">You build it, you break it, you cry about it</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="dns" data-desc="It's always DNS. Always." data-tags="networking,infra">
        <a href="/dns/"><span class="idx" aria-hidden="true">13</span><span class="item-name">dns</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">It's always DNS. Always.</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="docker" data-desc="Containerizing your problems since 2013" data-tags="containers,infra">
        <a href="/docker/"><span class="idx" aria-hidden="true">14</span><span class="item-name">docker</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Containerizing your problems since 2013</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="ibm" data-desc="Pivoting since 1993, still winning government contracts" data-tags="enterprise">
        <a href="/ibm/"><span class="idx" aria-hidden="true">15</span><span class="item-name">ibm</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Pivoting since 1993, still winning government contracts</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="incident management" data-desc="Managing incidents by creating more incidents" data-tags="incidents,oncall,on-call">
        <a href="/incident-management/"><span class="idx" aria-hidden="true">16</span><span class="item-name">incident management</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Managing incidents by creating more incidents</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="infrakit" data-desc="The infrastructure abstraction graveyard" data-tags="containers">
        <a href="/infrakit/"><span class="idx" aria-hidden="true">17</span><span class="item-name">infrakit</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">The infrastructure abstraction graveyard</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="jess frazelle" data-desc="Someone who actually ships things" data-tags="containers,culture">
        <a href="/jessfraz/"><span class="idx" aria-hidden="true">18</span><span class="item-name">jess frazelle</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">Someone who actually ships things</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="logrotate" data-desc="Just makes more smoke for you to grep" data-tags="linux,observability">
        <a href="/logrotate/"><span class="idx" aria-hidden="true">19</span><span class="item-name">logrotate</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Just makes more smoke for you to grep</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="about" data-desc="Why tire fires are the right metaphor for ops" data-tags="culture">
        <a href="/mansplaining/"><span class="idx" aria-hidden="true">20</span><span class="item-name">about</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">Why tire fires are the right metaphor for ops</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="microservices" data-desc="Distributed monoliths with extra steps" data-tags="containers,architecture,distributed">
        <a href="/microservices/"><span class="idx" aria-hidden="true">21</span><span class="item-name">microservices</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">Distributed monoliths with extra steps</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="monitoring" data-desc="Watching everything burn in real-time" data-tags="observability,incidents,oncall,alerting">
        <a href="/monitoring/"><span class="idx" aria-hidden="true">22</span><span class="item-name">monitoring</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Watching everything burn in real-time</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="motivation" data-desc="The ops motivation experience" data-tags="culture">
        <a href="/motivation/"><span class="idx" aria-hidden="true">23</span><span class="item-name">motivation</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">The ops motivation experience</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="nicolas cage" data-desc="The spirit animal of ops" data-tags="culture">
        <a href="/nicolas-cage/"><span class="idx" aria-hidden="true">24</span><span class="item-name">nicolas cage</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">The spirit animal of ops</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="nodejs" data-desc="I/O is non-blocking, your ops team is not" data-tags="culture">
        <a href="/nodejs/"><span class="idx" aria-hidden="true">25</span><span class="item-name">nodejs</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">I/O is non-blocking, your ops team is not</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="openjdk" data-desc="It's all equal. Right?" data-tags="enterprise">
        <a href="/openjdk/"><span class="idx" aria-hidden="true">26</span><span class="item-name">openjdk</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">It's all equal. Right?</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="ops" data-desc="Where hope goes to die" data-tags="culture,oncall,on-call,infra">
        <a href="/ops/"><span class="idx" aria-hidden="true">27</span><span class="item-name">ops</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Where hope goes to die</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="puppet" data-desc="Configuration management with strings attached" data-tags="config-mgmt,configmanagement,ruby">
        <a href="/puppet/"><span class="idx" aria-hidden="true">28</span><span class="item-name">puppet</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">Configuration management with strings attached</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="rvm" data-desc="The wrapper that manages the thing that manages the thing" data-tags="culture,config-mgmt">
        <a href="/rvm/"><span class="idx" aria-hidden="true">29</span><span class="item-name">rvm</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">The wrapper that manages the thing that manages the thing</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="s3" data-desc="Simple storage service. Simply not working." data-tags="cloud,amazon,storage">
        <a href="/s3/"><span class="idx" aria-hidden="true">30</span><span class="item-name">s3</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Simple storage service. Simply not working.</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="serverless" data-desc="No servers. Just someone else's servers." data-tags="cloud,architecture">
        <a href="/serverless/"><span class="idx" aria-hidden="true">31</span><span class="item-name">serverless</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">No servers. Just someone else's servers.</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="simon and czarfunkel" data-desc="Hello czarkness my old friend" data-tags="culture">
        <a href="/simonandczarfunkel/"><span class="idx" aria-hidden="true">32</span><span class="item-name">simon and czarfunkel</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">Hello czarkness my old friend</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="sk8 or die" data-desc="Kickstart files as a form of creative expression" data-tags="linux,culture">
        <a href="/sk8-die/"><span class="idx" aria-hidden="true">33</span><span class="item-name">sk8 or die</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Kickstart files as a form of creative expression</span></a>
    </li>
    <li class="filter-item" data-sev="1" data-name="sysadmin day" data-desc="The one day a year ops gets acknowledged" data-tags="culture">
        <a href="/sysadmin-day/"><span class="idx" aria-hidden="true">34</span><span class="item-name">sysadmin day</span><span class="sev" data-sev="1" style="--n:1" role="img" aria-label="Severity 1 of 5"></span><span class="item-desc">The one day a year ops gets acknowledged</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="systemd" data-desc="Doing everything so you don't have to understand anything" data-tags="linux,infra,os">
        <a href="/systemd/"><span class="idx" aria-hidden="true">35</span><span class="item-name">systemd</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">Doing everything so you don't have to understand anything</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="trumpdays" data-desc="The production system that cannot come down for maintenance" data-tags="culture">
        <a href="/trumpdays/"><span class="idx" aria-hidden="true">36</span><span class="item-name">trumpdays</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">The production system that cannot come down for maintenance</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="vmworld" data-desc="The cert that now costs $80k per year to use" data-tags="enterprise">
        <a href="/vmworld/"><span class="idx" aria-hidden="true">37</span><span class="item-name">vmworld</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">The cert that now costs $80k per year to use</span></a>
    </li>
    <li class="filter-item" data-sev="5" data-name="weblogic" data-desc="Logic not included" data-tags="enterprise,java,oracle">
        <a href="/weblogic/"><span class="idx" aria-hidden="true">38</span><span class="item-name">weblogic</span><span class="sev" data-sev="5" style="--n:5" role="img" aria-label="Severity 5 of 5"></span><span class="item-desc">Logic not included</span></a>
    </li>
    <li class="filter-item" data-sev="2" data-name="well actually" data-desc="Technically correct, contextually useless" data-tags="culture">
        <a href="/wellactually/"><span class="idx" aria-hidden="true">39</span><span class="item-name">well actually</span><span class="sev" data-sev="2" style="--n:2" role="img" aria-label="Severity 2 of 5"></span><span class="item-desc">Technically correct, contextually useless</span></a>
    </li>
    <li class="filter-item" data-sev="4" data-name="windows" data-desc="Blue screens of death in the cloud" data-tags="enterprise,os,microsoft">
        <a href="/windows/"><span class="idx" aria-hidden="true">40</span><span class="item-name">windows</span><span class="sev" data-sev="4" style="--n:4" role="img" aria-label="Severity 4 of 5"></span><span class="item-desc">Blue screens of death in the cloud</span></a>
    </li>
    <li class="filter-item" data-sev="3" data-name="zoom" data-desc="Accidental critical infrastructure, approved by nobody in IT" data-tags="culture">
        <a href="/zoom/"><span class="idx" aria-hidden="true">41</span><span class="item-name">zoom</span><span class="sev" data-sev="3" style="--n:3" role="img" aria-label="Severity 3 of 5"></span><span class="item-desc">Accidental critical infrastructure, approved by nobody in IT</span></a>
    </li>
</ul>

<p class="filter-empty" id="filterEmpty" style="display:none">no matches</p>

<script>
(function() {
    var input    = document.getElementById('filterInput');
    var list     = document.getElementById('filterList');
    var emptyMsg = document.getElementById('filterEmpty');
    var meta     = document.getElementById('filterMeta');
    var items    = Array.prototype.slice.call(list.querySelectorAll('.filter-item'));
    var original = items.slice();
    var total    = items.length;
    var noMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    /* cache original text for highlight restore */
    items.forEach(function(item) {
        item._name = item.querySelector('.item-name');
        item._desc = item.querySelector('.item-desc');
        item._origName = item._name ? item._name.textContent : '';
        item._origDesc = item._desc ? item._desc.textContent : '';
        item._shown = true;
    });

    input.addEventListener('input', filter);

    /* fuzzy match — returns score + matched positions in target */
    function fuzzyMatch(query, target) {
        var q = query.toLowerCase(), t = target.toLowerCase();
        var qi = 0, pos = [];
        for (var ti = 0; ti < t.length && qi < q.length; ti++) {
            if (t[ti] === q[qi]) { pos.push(ti); qi++; }
        }
        if (qi < q.length) return { score: 0, pos: [] };
        var score = 100;
        score -= pos[0] * 3;
        for (var i = 1; i < pos.length; i++) {
            if (pos[i] === pos[i-1] + 1) score += 15;
        }
        var c = pos[0];
        if (c === 0 || /[\s\-_,]/.test(t[c-1])) score += 25;
        if (t.indexOf(q) !== -1) score += 20;
        return { score: Math.max(1, score), pos: pos };
    }

    function itemMatch(query, item) {
        var nm = fuzzyMatch(query, item.dataset.name || '');
        var dm = fuzzyMatch(query, item.dataset.desc || '');
        var tm = fuzzyMatch(query, (item.dataset.tags || '').replace(/,/g,' '));
        var ns = nm.score * 4, ds = dm.score * 2, ts = tm.score;
        var best = Math.max(ns, ds, ts);
        return {
            score: best,
            namePos: ns >= ds && ns >= ts ? nm.pos : [],
            descPos: ds > ns && ds >= ts  ? dm.pos : []
        };
    }

    function esc(s) {
        return s.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
    }

    function highlight(text, pos) {
        if (!pos || !pos.length) return esc(text);
        var set = {}, out = '';
        pos.forEach(function(p) { set[p] = 1; });
        for (var i = 0; i < text.length; i++) {
            var ch = esc(text[i]);
            out += set[i] ? '<span class="match-char">' + ch + '</span>' : ch;
        }
        return out;
    }

    function restoreText(item) {
        if (item._name) item._name.textContent = item._origName;
        if (item._desc) item._desc.textContent = item._origDesc;
    }

    /* spring-ish enter */
    function animIn(el) {
        if (noMotion) return;
        el.getAnimations().forEach(function(a) { a.cancel(); });
        el.animate([
            { opacity: '0', transform: 'translateX(-5px)' },
            { opacity: '1', transform: 'translateX(0)' }
        ], { duration: 200, easing: 'cubic-bezier(0.22,1,0.36,1)', fill: 'forwards' });
    }

    /* spring compress exit */
    function animOut(el, done) {
        if (noMotion) { done(); return; }
        var h = el.offsetHeight;
        if (!h) { done(); return; }
        el.getAnimations().forEach(function(a) { a.cancel(); });
        var anim = el.animate([
            { height: h + 'px', opacity: '1' },
            { height: '0px',    opacity: '0' }
        ], { duration: 150, easing: 'cubic-bezier(0.4,0,1,1)', fill: 'forwards' });
        anim.onfinish = done;
    }

    function filter() {
        var query = (input.value || '').trim();

        if (!query) {
            items.forEach(function(item) {
                item.getAnimations().forEach(function(a) { a.cancel(); });
                item._shown = true;
                list.appendChild(item);
                item.style.display = '';
                restoreText(item);
            });
            emptyMsg.style.display = 'none';
            if (meta) meta.textContent = '';
            setBorderTop(original);
            return;
        }

        var scored = items.map(function(item) {
            var m = itemMatch(query, item);
            return { item: item, score: m.score, namePos: m.namePos, descPos: m.descPos };
        }).sort(function(a, b) { return b.score - a.score; });

        var visible = [];
        scored.forEach(function(s) {
            var item = s.item;
            list.appendChild(item);
            if (s.score > 0) {
                var wasHidden = !item._shown;
                item._shown = true;
                item.style.display = '';
                if (item._name) item._name.innerHTML = highlight(item._origName, s.namePos);
                if (item._desc) item._desc.innerHTML = highlight(item._origDesc, s.descPos);
                if (wasHidden) animIn(item);
                visible.push(item);
            } else {
                if (item._shown) {
                    item._shown = false;
                    restoreText(item);
                    animOut(item, (function(el) {
                        return function() { if (!el._shown) el.style.display = 'none'; };
                    })(item));
                }
            }
        });

        emptyMsg.style.display = visible.length ? 'none' : '';
        if (meta) meta.textContent = (query && visible.length) ? visible.length + ' / ' + total : '';
        setBorderTop(visible);
    }

    function setBorderTop(visible) {
        items.forEach(function(item) { item.classList.remove('first-visible'); });
        if (visible.length) visible[0].classList.add('first-visible');
    }

    setBorderTop(original);
})();
</script>

</div>
