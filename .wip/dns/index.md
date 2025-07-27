---
layout: wip
title: "DNS - It's always DNS"
permalink: /.wip/dns/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">🔥 Home</a> → <span>DNS</span>
    </div>
    <h1>🌐 It's always DNS</h1>
    <p class="page-subtitle">The mystery resolver of our digital age</p>
</div>

<div class="content-section">
    <div class="status-banner error">
        <strong>❌ Status:</strong> NXDOMAIN (as is tradition)
    </div>

    <div class="main-content-area">
        <div class="dns-haiku-container">
            <a href="http://hipku.gabrielmartin.net/" target="_blank">
                <img src="/dns/dns_haiku.png" alt="DNS haiku generator - Words of wisdom for the network-weary" class="dns-haiku-image">
            </a>
            <p class="haiku-caption">Ancient wisdom speaks through the tubes</p>
        </div>
        
        <div class="content-text">
            <p><em>In the beginning was the Word, and the Word was DNS, and DNS was with Root, and DNS was broken.</em></p>

            <div class="quote-box">
                <blockquote>
                    <p>"It's not DNS. There's no way it's DNS. It was DNS."</p>
                    <cite>— Every Network Engineer, Eventually</cite>
                </blockquote>
            </div>

            <div class="dns-resolution-steps">
                <h3>🔍 DNS Resolution Process</h3>
                <div class="resolution-step">
                    <strong>Step 1:</strong> Application asks resolver for example.com
                </div>
                <div class="resolution-step">
                    <strong>Step 2:</strong> Resolver asks root server "Who handles .com?"
                </div>
                <div class="resolution-step">
                    <strong>Step 3:</strong> Root server responds "Ask the .com servers"
                </div>
                <div class="resolution-step">
                    <strong>Step 4:</strong> Resolver asks .com server "Who handles example.com?"
                </div>
                <div class="resolution-step">
                    <strong>Step 5:</strong> .com server responds "Ask example.com's nameservers"
                </div>
                <div class="resolution-step">
                    <strong>Step 6:</strong> Resolver asks example.com nameserver for the record
                </div>
                <div class="resolution-step">
                    <strong>Step 7:</strong> Something goes wrong. It's always Step 7.
                </div>
            </div>

            <div class="dns-record-types">
                <h3>📋 Essential DNS Record Types</h3>
                <div class="record-type">
                    <strong>A:</strong> Points to an IPv4 address (probably wrong)
                </div>
                <div class="record-type">
                    <strong>AAAA:</strong> Points to an IPv6 address (definitely wrong)
                </div>
                <div class="record-type">
                    <strong>CNAME:</strong> Points to another name (which points to wrong address)
                </div>
                <div class="record-type">
                    <strong>MX:</strong> Mail server (hosted by someone who quit 3 years ago)
                </div>
                <div class="record-type">
                    <strong>NS:</strong> Authoritative nameserver (authority questionable)
                </div>
                <div class="record-type">
                    <strong>SOA:</strong> Start of Authority (authority disputed)
                </div>
                <div class="record-type">
                    <strong>TXT:</strong> Random text (usually from that intern in 2019)
                </div>
            </div>

            <div class="troubleshooting-guide">
                <h3>🔧 DNS Troubleshooting Guide</h3>
                <ol>
                    <li>Check if it's DNS (it is)</li>
                    <li>Clear your DNS cache</li>
                    <li>Use a different DNS server</li>
                    <li>Check TTL values (they're all wrong)</li>
                    <li>Restart DNS service</li>
                    <li>Sacrifice a network cable to the packet gods</li>
                    <li>Accept that it was DNS all along</li>
                </ol>
            </div>

            <div class="fun-facts">
                <h3>🔥 DNS Fun Facts</h3>
                <ul>
                    <li>DNS was designed when the internet had 12 computers, all named after Tolkien characters</li>
                    <li>TTL stands for "Time To Live" but really means "Time To Lie"</li>
                    <li>The root DNS servers know everything but tell you nothing useful</li>
                    <li>DNS caching: keeping wrong answers fast since 1983</li>
                    <li>Every DNS query contains the hopes and dreams of a developer who just wants their site to work</li>
                    <li>"DNS propagation" is just a fancy way of saying "nobody knows when this will work"</li>
                    <li>The most secure DNS is one that doesn't resolve anything</li>
                    <li>DNSSEC: making DNS queries fail in cryptographically verifiable ways</li>
                </ul>
            </div>

            <div class="dns-philosophy">
                <h3>🌐 The DNS Philosophy</h3>
                <p>DNS operates on the principle of eventual consistency, which in practice means eventually inconsistent. It's a distributed system where everyone agrees on the protocol but disagrees on everything else.</p>
                
                <p>The beauty of DNS lies in its simplicity: you ask for a name, you get an address. The horror of DNS lies in its complexity: cache poisoning, race conditions, split-brain scenarios, and the eternal question of whether it's really DNS this time.</p>
                
                <p>Remember: DNS is not just a naming system. It's a state of mind. A way of life. A constant reminder that in a distributed system, trust is temporary and authority is always questionable.</p>
            </div>
        </div>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/docker/" class="nav-button">Next Disaster: Docker →</a>
</div>

<style>
.page-header {
    margin-bottom: 3rem;
}

.breadcrumb {
    color: #888;
    margin-bottom: 1rem;
    font-size: 0.9rem;
}

.breadcrumb a {
    color: #ff4500;
    text-decoration: none;
}

.breadcrumb a:hover {
    text-decoration: underline;
}

.page-header h1 {
    font-size: 2.5rem;
    color: #ff4500;
    margin-bottom: 0.5rem;
}

.page-subtitle {
    color: #aaa;
    font-style: italic;
    font-size: 1.1rem;
}

.content-section {
    background: rgba(0, 0, 0, 0.3);
    border-radius: 15px;
    padding: 2rem;
    margin-bottom: 3rem;
}

.status-banner.error {
    background: rgba(255, 0, 0, 0.2);
    border: 1px solid rgba(255, 0, 0, 0.4);
    border-radius: 8px;
    padding: 1rem;
    margin-bottom: 2rem;
    text-align: center;
}

.dns-haiku-container {
    text-align: center;
    margin: 2rem 0 3rem;
}

.dns-haiku-image {
    max-width: 100%;
    height: auto;
    border-radius: 10px;
    border: 2px solid rgba(255, 69, 0, 0.3);
    transition: all 0.3s ease;
    cursor: pointer;
}

.dns-haiku-image:hover {
    border-color: rgba(255, 69, 0, 0.6);
    transform: scale(1.02);
    box-shadow: 0 10px 30px rgba(255, 69, 0, 0.2);
}

.haiku-caption {
    margin-top: 1rem;
    color: #aaa;
    font-style: italic;
    font-size: 0.9rem;
}

.content-text {
    font-size: 1.1rem;
    line-height: 1.7;
    color: #e0e0e0;
}

.content-text p {
    margin-bottom: 1.5rem;
}

.quote-box {
    background: rgba(255, 69, 0, 0.1);
    border-left: 4px solid #ff4500;
    padding: 1.5rem;
    margin: 2rem 0;
    border-radius: 0 8px 8px 0;
}

.quote-box blockquote {
    margin: 0;
    font-style: italic;
}

.quote-box cite {
    display: block;
    margin-top: 1rem;
    color: #ffa500;
    font-size: 0.9rem;
}

.dns-resolution-steps {
    background: rgba(0, 123, 255, 0.1);
    border: 1px solid rgba(0, 123, 255, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.dns-resolution-steps h3 {
    color: #007bff;
    margin-bottom: 1.5rem;
}

.resolution-step {
    background: rgba(0, 0, 0, 0.3);
    border-radius: 8px;
    padding: 1rem;
    margin: 1rem 0;
    border-left: 4px solid #007bff;
    color: #ddd;
}

.dns-record-types {
    background: rgba(40, 167, 69, 0.1);
    border: 1px solid rgba(40, 167, 69, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.dns-record-types h3 {
    color: #28a745;
    margin-bottom: 1.5rem;
}

.record-type {
    background: rgba(0, 0, 0, 0.3);
    border-radius: 8px;
    padding: 1rem;
    margin: 1rem 0;
    border-left: 4px solid #28a745;
    color: #ddd;
}

.record-type strong {
    color: #28a745;
    font-family: monospace;
}

.troubleshooting-guide {
    background: rgba(255, 193, 7, 0.1);
    border: 1px solid rgba(255, 193, 7, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.troubleshooting-guide h3 {
    color: #ffc107;
    margin-bottom: 1.5rem;
}

.troubleshooting-guide ol {
    color: #ddd;
    padding-left: 1.5rem;
}

.troubleshooting-guide li {
    margin: 0.8rem 0;
    line-height: 1.5;
}

.fun-facts {
    background: rgba(255, 69, 0, 0.05);
    border: 1px solid rgba(255, 69, 0, 0.2);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.fun-facts h3 {
    color: #ff4500;
    margin-bottom: 1rem;
}

.fun-facts ul {
    list-style: none;
    padding: 0;
}

.fun-facts li {
    padding: 0.5rem 0;
    border-bottom: 1px solid rgba(255, 69, 0, 0.1);
    color: #ccc;
}

.fun-facts li:last-child {
    border-bottom: none;
}

.fun-facts li:before {
    content: "🌐 ";
    margin-right: 0.5rem;
}

.dns-philosophy {
    background: rgba(108, 117, 125, 0.1);
    border: 1px solid rgba(108, 117, 125, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.dns-philosophy h3 {
    color: #6c757d;
    margin-bottom: 1rem;
}

.dns-philosophy p {
    color: #adb5bd;
    line-height: 1.6;
}

.navigation-footer {
    display: flex;
    justify-content: space-between;
    gap: 1rem;
    margin: 3rem 0;
}

.nav-button {
    background: rgba(255, 69, 0, 0.2);
    border: 1px solid rgba(255, 69, 0, 0.4);
    color: #ff4500;
    padding: 1rem 2rem;
    border-radius: 8px;
    text-decoration: none;
    font-weight: bold;
    transition: all 0.3s ease;
    flex: 1;
    text-align: center;
}

.nav-button:hover {
    background: rgba(255, 69, 0, 0.3);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(255, 69, 0, 0.2);
}

@media (max-width: 768px) {
    .navigation-footer {
        flex-direction: column;
    }
    
    .dns-resolution-steps,
    .dns-record-types,
    .troubleshooting-guide {
        padding: 1.5rem;
    }
    
    .resolution-step,
    .record-type {
        padding: 0.8rem;
        margin: 0.8rem 0;
    }
}
</style>
