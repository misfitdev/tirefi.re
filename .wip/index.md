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
            <img src="/tirefirebillow.gif" alt="Moving image of a field of tires on fire." loading="lazy" decoding="async">
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
{%- for t in site.data.topics %}
    <li class="filter-item" data-sev="{{ t.sev }}" data-name="{{ t.name }}" data-desc="{{ t.desc | escape }}" data-tags="{{ t.tags }}">
        <a href="{{ t.url }}"><span class="idx" aria-hidden="true">{{ forloop.index | prepend: '0' | slice: -2, 2 }}</span><span class="item-name">{{ t.name }}</span><span class="sev" data-sev="{{ t.sev }}" style="--n:{{ t.sev }}" role="img" aria-label="Severity {{ t.sev }} of 5"></span><span class="item-desc">{{ t.desc | escape }}</span></a>
    </li>
{%- endfor %}
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
