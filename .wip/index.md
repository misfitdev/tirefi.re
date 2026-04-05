---
layout: wip
title: "tirefi.re"
permalink: /.wip/
---

<div class="index-header">
    <h1>tirefi.re</h1>
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
</div>

<ul class="filter-list" id="filterList" aria-label="Topics">
    <li class="filter-item" data-name="aws" data-desc="Amazon's infinite money extraction service" data-tags="cloud,amazon">
        <a href="/.wip/aws/"><span class="item-name">aws</span><span class="item-desc">Amazon's infinite money extraction service</span></a>
    </li>
    <li class="filter-item" data-name="chef" data-desc="Too many cooks in the infrastructure kitchen" data-tags="config-mgmt,configmanagement,ruby">
        <a href="/.wip/chef/"><span class="item-name">chef</span><span class="item-desc">Too many cooks in the infrastructure kitchen</span></a>
    </li>
    <li class="filter-item" data-name="devops" data-desc="You build it, you break it, you cry about it" data-tags="culture,process">
        <a href="/.wip/devops/"><span class="item-name">devops</span><span class="item-desc">You build it, you break it, you cry about it</span></a>
    </li>
    <li class="filter-item" data-name="dns" data-desc="It's always DNS. Always." data-tags="networking,infra">
        <a href="/.wip/dns/"><span class="item-name">dns</span><span class="item-desc">It's always DNS. Always.</span></a>
    </li>
    <li class="filter-item" data-name="docker" data-desc="Containerizing your problems since 2013" data-tags="containers,infra">
        <a href="/.wip/docker/"><span class="item-name">docker</span><span class="item-desc">Containerizing your problems since 2013</span></a>
    </li>
    <li class="filter-item" data-name="incident management" data-desc="Managing incidents by creating more incidents" data-tags="incidents,oncall,on-call">
        <a href="/.wip/incident-management/"><span class="item-name">incident management</span><span class="item-desc">Managing incidents by creating more incidents</span></a>
    </li>
    <li class="filter-item" data-name="microservices" data-desc="Distributed monoliths with extra steps" data-tags="containers,architecture,distributed">
        <a href="/.wip/microservices/"><span class="item-name">microservices</span><span class="item-desc">Distributed monoliths with extra steps</span></a>
    </li>
    <li class="filter-item" data-name="monitoring" data-desc="Watching everything burn in real-time" data-tags="observability,incidents,oncall,alerting">
        <a href="/.wip/monitoring/"><span class="item-name">monitoring</span><span class="item-desc">Watching everything burn in real-time</span></a>
    </li>
    <li class="filter-item" data-name="ops" data-desc="Where hope goes to die" data-tags="culture,oncall,on-call,infra">
        <a href="/.wip/ops/"><span class="item-name">ops</span><span class="item-desc">Where hope goes to die</span></a>
    </li>
    <li class="filter-item" data-name="puppet" data-desc="Configuration management with strings attached" data-tags="config-mgmt,configmanagement,ruby">
        <a href="/.wip/puppet/"><span class="item-name">puppet</span><span class="item-desc">Configuration management with strings attached</span></a>
    </li>
    <li class="filter-item" data-name="s3" data-desc="Simple storage service. Simply not working." data-tags="cloud,amazon,storage">
        <a href="/.wip/s3/"><span class="item-name">s3</span><span class="item-desc">Simple storage service. Simply not working.</span></a>
    </li>
    <li class="filter-item" data-name="serverless" data-desc="No servers. Just someone else's servers." data-tags="cloud,architecture">
        <a href="/.wip/serverless/"><span class="item-name">serverless</span><span class="item-desc">No servers. Just someone else's servers.</span></a>
    </li>
    <li class="filter-item" data-name="systemd" data-desc="Doing everything so you don't have to understand anything" data-tags="linux,infra,os">
        <a href="/.wip/systemd/"><span class="item-name">systemd</span><span class="item-desc">Doing everything so you don't have to understand anything</span></a>
    </li>
    <li class="filter-item" data-name="weblogic" data-desc="Logic not included" data-tags="enterprise,java,oracle">
        <a href="/.wip/weblogic/"><span class="item-name">weblogic</span><span class="item-desc">Logic not included</span></a>
    </li>
    <li class="filter-item" data-name="windows" data-desc="Blue screens of death in the cloud" data-tags="enterprise,os,microsoft">
        <a href="/.wip/windows/"><span class="item-name">windows</span><span class="item-desc">Blue screens of death in the cloud</span></a>
    </li>
</ul>

<p class="filter-empty" id="filterEmpty" style="display:none">no matches</p>

<script>
(function() {
    var input = document.getElementById('filterInput');
    var list = document.getElementById('filterList');
    var emptyMsg = document.getElementById('filterEmpty');
    var items = Array.prototype.slice.call(list.querySelectorAll('.filter-item'));
    var originalOrder = items.slice();

    input.addEventListener('input', filter);

    /* fzf-style fuzzy subsequence scoring.
     * All query chars must appear in target in order.
     * Score rewards: early start, consecutive runs, word boundaries, exact substring. */
    function fuzzyScore(query, target) {
        var q = query.toLowerCase();
        var t = target.toLowerCase();
        var qi = 0, positions = [];
        for (var ti = 0; ti < t.length && qi < q.length; ti++) {
            if (t[ti] === q[qi]) { positions.push(ti); qi++; }
        }
        if (qi < q.length) return 0;

        var score = 100;
        score -= positions[0] * 3;                          /* earlier start = better */
        for (var i = 1; i < positions.length; i++) {
            if (positions[i] === positions[i - 1] + 1) score += 15; /* consecutive bonus */
        }
        var c = positions[0];
        if (c === 0 || /[\s\-_,]/.test(t[c - 1])) score += 25;    /* word boundary bonus */
        if (t.indexOf(q) !== -1) score += 20;               /* exact substring bonus */
        return Math.max(1, score);
    }

    function itemScore(query, item) {
        var name = item.dataset.name || '';
        var desc = item.dataset.desc || '';
        var tags = (item.dataset.tags || '').replace(/,/g, ' ');
        return Math.max(
            fuzzyScore(query, name) * 4,
            fuzzyScore(query, desc) * 2,
            fuzzyScore(query, tags) * 1
        );
    }

    function filter() {
        var query = (input.value || '').trim();

        if (!query) {
            originalOrder.forEach(function(item) {
                list.appendChild(item);
                item.style.display = '';
            });
            emptyMsg.style.display = 'none';
            setBorderTop(originalOrder);
            return;
        }

        var scored = items.map(function(item) {
            return { item: item, score: itemScore(query, item) };
        }).sort(function(a, b) { return b.score - a.score; });

        var visible = [];
        scored.forEach(function(s) {
            list.appendChild(s.item);
            if (s.score > 0) { s.item.style.display = ''; visible.push(s.item); }
            else              { s.item.style.display = 'none'; }
        });

        emptyMsg.style.display = visible.length ? 'none' : '';
        setBorderTop(visible);
    }

    function setBorderTop(visible) {
        items.forEach(function(item) { item.classList.remove('first-visible'); });
        if (visible.length) visible[0].classList.add('first-visible');
    }

    setBorderTop(originalOrder);
})();
</script>
