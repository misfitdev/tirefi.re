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
    <li class="filter-separator" id="filterSeparator" aria-hidden="true" style="display:none">
        <div class="filter-separator-inner"></div>
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
    var items = Array.prototype.slice.call(
        list.querySelectorAll('.filter-item:not(.filter-separator)')
    );

    /* Store original order */
    var originalOrder = items.slice();

    input.addEventListener('input', filter);

    function filter() {
        var text = (input.value || '').toLowerCase().trim();

        if (!text) {
            /* Restore original order, show everything */
            originalOrder.forEach(function(item) {
                list.appendChild(item);
                item.style.display = '';
            });
            separator.style.display = 'none';
            emptyMsg.style.display = 'none';
            setBorderTop();
            return;
        }

        var textMatches = [];
        var tagMatches = [];

        items.forEach(function(item) {
            var name = (item.dataset.name || '').toLowerCase();
            var desc = (item.dataset.desc || '').toLowerCase();
            var tags = (item.dataset.tags || '').toLowerCase();

            var inText = name.indexOf(text) !== -1 || desc.indexOf(text) !== -1;
            var inTags = tags.indexOf(text) !== -1;

            if (inText) {
                textMatches.push(item);
            } else if (inTags) {
                tagMatches.push(item);
            }
        });

        /* Reorder: text matches → separator → tag matches → hidden */
        textMatches.forEach(function(item) {
            list.insertBefore(item, separator);
            item.style.display = '';
        });

        var showSep = textMatches.length > 0 && tagMatches.length > 0;
        separator.style.display = showSep ? 'list-item' : 'none';

        if (tagMatches.length) {
            /* Insert separator first, then tag matches after it */
            tagMatches.forEach(function(item) {
                list.appendChild(item);
                item.style.display = '';
            });
        }

        /* Hide items that matched neither */
        items.forEach(function(item) {
            if (textMatches.indexOf(item) === -1 && tagMatches.indexOf(item) === -1) {
                item.style.display = 'none';
                list.appendChild(item); /* park at end */
            }
        });

        var anyVisible = textMatches.length + tagMatches.length > 0;
        emptyMsg.style.display = anyVisible ? 'none' : '';

        setBorderTop();
    }

    function setBorderTop() {
        /* First visible item needs a top border; others don't need special handling */
        var first = null;
        items.forEach(function(item) {
            if (!first && item.style.display !== 'none') first = item;
            item.classList.remove('first-visible');
        });
        if (first) first.classList.add('first-visible');
    }

    setBorderTop();
})();
</script>
