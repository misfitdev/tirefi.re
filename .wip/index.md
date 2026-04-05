---
layout: wip
title: "tirefi.re"
permalink: /.wip/
---

<div class="index-header">
    <h1>tirefi.re</h1>
    <p class="index-tagline">the tire fire burns eternal</p>
</div>

<div class="filter-controls" id="filterControls">
    <div class="filter-input-row">
        <input
            type="search"
            id="filterInput"
            class="filter-input"
            placeholder="filter..."
            autocomplete="off"
            spellcheck="false"
            aria-label="Filter topics"
            aria-controls="filterList"
        >
    </div>
    <div class="filter-tags" role="group" aria-label="Filter by tag">
        <button class="tag-btn" data-tag="cloud" type="button">cloud</button>
        <button class="tag-btn" data-tag="config-mgmt" type="button">config-mgmt</button>
        <button class="tag-btn" data-tag="containers" type="button">containers</button>
        <button class="tag-btn" data-tag="observability" type="button">observability</button>
        <button class="tag-btn" data-tag="incidents" type="button">incidents</button>
        <button class="tag-btn" data-tag="networking" type="button">networking</button>
        <button class="tag-btn" data-tag="enterprise" type="button">enterprise</button>
        <button class="tag-btn" data-tag="linux" type="button">linux</button>
        <button class="tag-btn" data-tag="culture" type="button">culture</button>
    </div>
</div>

<ul class="filter-list" id="filterList" aria-label="Topics" aria-live="polite">
    <li class="filter-item" data-name="aws" data-desc="Amazon's infinite money extraction service" data-tags="cloud">
        <a href="/.wip/aws/"><span class="item-name">aws</span><span class="item-desc">Amazon's infinite money extraction service</span></a>
    </li>
    <li class="filter-item" data-name="chef" data-desc="Too many cooks in the infrastructure kitchen" data-tags="config-mgmt">
        <a href="/.wip/chef/"><span class="item-name">chef</span><span class="item-desc">Too many cooks in the infrastructure kitchen</span></a>
    </li>
    <li class="filter-item" data-name="devops" data-desc="You build it, you break it, you cry about it" data-tags="culture">
        <a href="/.wip/devops/"><span class="item-name">devops</span><span class="item-desc">You build it, you break it, you cry about it</span></a>
    </li>
    <li class="filter-item" data-name="dns" data-desc="It's always DNS. Always." data-tags="networking">
        <a href="/.wip/dns/"><span class="item-name">dns</span><span class="item-desc">It's always DNS. Always.</span></a>
    </li>
    <li class="filter-item" data-name="docker" data-desc="Containerizing your problems since 2013" data-tags="containers">
        <a href="/.wip/docker/"><span class="item-name">docker</span><span class="item-desc">Containerizing your problems since 2013</span></a>
    </li>
    <li class="filter-item" data-name="incident management" data-desc="Managing incidents by creating more incidents" data-tags="incidents">
        <a href="/.wip/incident-management/"><span class="item-name">incident management</span><span class="item-desc">Managing incidents by creating more incidents</span></a>
    </li>
    <li class="filter-item" data-name="microservices" data-desc="Distributed monoliths with extra steps" data-tags="containers">
        <a href="/.wip/microservices/"><span class="item-name">microservices</span><span class="item-desc">Distributed monoliths with extra steps</span></a>
    </li>
    <li class="filter-item" data-name="monitoring" data-desc="Watching everything burn in real-time" data-tags="observability,incidents">
        <a href="/.wip/monitoring/"><span class="item-name">monitoring</span><span class="item-desc">Watching everything burn in real-time</span></a>
    </li>
    <li class="filter-item" data-name="ops" data-desc="Where hope goes to die" data-tags="culture">
        <a href="/.wip/ops/"><span class="item-name">ops</span><span class="item-desc">Where hope goes to die</span></a>
    </li>
    <li class="filter-item" data-name="puppet" data-desc="Configuration management with strings attached" data-tags="config-mgmt">
        <a href="/.wip/puppet/"><span class="item-name">puppet</span><span class="item-desc">Configuration management with strings attached</span></a>
    </li>
    <li class="filter-item" data-name="s3" data-desc="Simple storage service. Simply not working." data-tags="cloud">
        <a href="/.wip/s3/"><span class="item-name">s3</span><span class="item-desc">Simple storage service. Simply not working.</span></a>
    </li>
    <li class="filter-item" data-name="serverless" data-desc="No servers. Just someone else's servers." data-tags="cloud">
        <a href="/.wip/serverless/"><span class="item-name">serverless</span><span class="item-desc">No servers. Just someone else's servers.</span></a>
    </li>
    <li class="filter-item" data-name="systemd" data-desc="Doing everything so you don't have to understand anything" data-tags="linux">
        <a href="/.wip/systemd/"><span class="item-name">systemd</span><span class="item-desc">Doing everything so you don't have to understand anything</span></a>
    </li>
    <li class="filter-item" data-name="weblogic" data-desc="Logic not included" data-tags="enterprise">
        <a href="/.wip/weblogic/"><span class="item-name">weblogic</span><span class="item-desc">Logic not included</span></a>
    </li>
    <li class="filter-item" data-name="windows" data-desc="Blue screens of death in the cloud" data-tags="enterprise">
        <a href="/.wip/windows/"><span class="item-name">windows</span><span class="item-desc">Blue screens of death in the cloud</span></a>
    </li>
    <li class="filter-separator" id="filterSeparator" role="separator" aria-hidden="true">
        <div class="filter-separator-inner">partial matches</div>
    </li>
    <li class="filter-item" data-name="in memoriam" data-desc="The ones we lost along the way" data-tags="">
        <a href="/.wip/in-memoriam/"><span class="item-name">in memoriam</span><span class="item-desc">The ones we lost along the way</span></a>
    </li>
</ul>

<p class="filter-empty" id="filterEmpty" style="display:none">no matches</p>

<script>
(function() {
    var input = document.getElementById('filterInput');
    var list = document.getElementById('filterList');
    var separator = document.getElementById('filterSeparator');
    var emptyMsg = document.getElementById('filterEmpty');
    var tagBtns = document.querySelectorAll('.tag-btn');
    var items = Array.prototype.slice.call(list.querySelectorAll('.filter-item:not(.filter-separator)'));

    tagBtns.forEach(function(btn) {
        btn.addEventListener('click', function() {
            btn.classList.toggle('active');
            filter();
        });
    });

    input.addEventListener('input', filter);

    function getActiveTags() {
        return Array.prototype.slice.call(document.querySelectorAll('.tag-btn.active'))
            .map(function(b) { return b.dataset.tag; });
    }

    function textMatches(item, text) {
        if (!text) return true;
        var name = (item.dataset.name || '').toLowerCase();
        var desc = (item.dataset.desc || '').toLowerCase();
        return name.indexOf(text) !== -1 || desc.indexOf(text) !== -1;
    }

    function tagMatches(item, tags) {
        if (!tags.length) return true;
        var itemTags = (item.dataset.tags || '').split(',').filter(Boolean);
        return tags.some(function(t) { return itemTags.indexOf(t) !== -1; });
    }

    function filter() {
        var text = (input.value || '').toLowerCase().trim();
        var tags = getActiveTags();
        var both = text && tags.length;
        var strong = [], weak = [], hidden = [];

        items.forEach(function(item) {
            var tm = textMatches(item, text);
            var tgm = tagMatches(item, tags);

            if (both) {
                if (tm && tgm)       strong.push(item);
                else if (tm || tgm)  weak.push(item);
                else                 hidden.push(item);
            } else {
                if (tm && tgm) strong.push(item);
                else           hidden.push(item);
            }
        });

        /* Reorder DOM: strong → separator → weak → hidden */
        strong.forEach(function(item) { list.insertBefore(item, separator); });
        list.insertBefore(separator, weak[0] || null);
        weak.forEach(function(item) { list.appendChild(item); });
        hidden.forEach(function(item) { list.appendChild(item); });

        strong.forEach(function(i) { i.style.display = ''; });
        weak.forEach(function(i) { i.style.display = ''; });
        hidden.forEach(function(i) { i.style.display = 'none'; });

        var showSep = both && strong.length && weak.length;
        separator.style.display = showSep ? '' : 'none';

        var anyVisible = strong.length + weak.length > 0;
        emptyMsg.style.display = anyVisible ? 'none' : '';

        /* Fix border-top on first visible item */
        list.querySelectorAll('.filter-item').forEach(function(item, idx) {
            item.style.borderTop = '';
        });
        var firstVisible = strong[0] || weak[0];
        if (firstVisible) firstVisible.style.borderTop = '1px solid var(--border)';
    }

    /* Initial border-top on the actual first item */
    if (items[0]) items[0].style.borderTop = '1px solid var(--border)';
})();
</script>
