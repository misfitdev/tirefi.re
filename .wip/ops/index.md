---
layout: wip
title: "Ops - here, hold this."
permalink: /.wip/ops/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">🔥 Home</a> → <span>Ops</span>
    </div>
    <h1>⚙️ here, hold this.</h1>
    <p class="page-subtitle">Production is on fire, but at least we have automation</p>
</div>

<div class="content-section">
    <div class="status-banner critical">
        <strong>🚨 Status:</strong> Production is down, but the automation is working perfectly
    </div>

    <div class="main-content-area">
        <div class="command-showcase">
            <div class="terminal-window">
                <div class="terminal-header">
                    <div class="terminal-buttons">
                        <span class="terminal-button red"></span>
                        <span class="terminal-button yellow"></span>
                        <span class="terminal-button green"></span>
                    </div>
                    <div class="terminal-title">production-firefighting.sh</div>
                </div>
                <div class="terminal-content">
                    <div class="command-line">
                        <span class="prompt">$</span> cap production extinguish
                    </div>
                    <div class="command-line">
                        <span class="prompt">$</span> fab -H production extinguish
                    </div>
                    <div class="command-line">
                        <span class="prompt">$</span> ansible production -m command extinguish
                    </div>
                    <div class="command-line">
                        <span class="prompt">$</span> for host in $(cat ~/production) ; do \
                    </div>
                    <div class="command-line continuation">
                        ssh ${host} "sudo production" ; done
                    </div>
                    <div class="command-output error">
                        ERROR: Permission denied (publickey)
                    </div>
                    <div class="command-output error">
                        FATAL: Could not connect to host
                    </div>
                    <div class="command-output error">
                        Connection refused
                    </div>
                </div>
            </div>
        </div>

        <img src="/ops/ops.png" alt="🔥" class="hero-image">
        
        <div class="content-text">
            <p><em>Operations: where we turn caffeine into uptime, and occasionally turn uptime back into caffeine. "Here, hold this" are the three most dangerous words in any datacenter.</em></p>

            <div class="ops-tools">
                <h3>🛠️ The Evolution of Ops Tools</h3>
                <div class="tool-timeline">
                    <div class="tool-era">
                        <h4>Stone Age (2000s)</h4>
                        <p>Manual SSH into every server, screen sessions, and prayer</p>
                    </div>
                    <div class="tool-era">
                        <h4>Bronze Age (2010s)</h4>
                        <p>Capistrano, Fabric, and the illusion of automation</p>
                    </div>
                    <div class="tool-era">
                        <h4>Iron Age (2015+)</h4>
                        <p>Ansible, Terraform, and containers everywhere</p>
                    </div>
                    <div class="tool-era">
                        <h4>Information Age (Now)</h4>
                        <p>Kubernetes, service mesh, and nobody knows how anything works</p>
                    </div>
                </div>
            </div>

            <div class="quote-box">
                <blockquote>
                    <p>"The cloud is just someone else's computer catching fire."</p>
                    <cite>— Ancient Ops Wisdom</cite>
                </blockquote>
            </div>

            <div class="fun-facts">
                <h3>🔥 Ops Fun Facts</h3>
                <ul>
                    <li>"Here, hold this" translates to "congratulations, you're now responsible for production"</li>
                    <li>Every ops tool promises to be the last ops tool you'll ever need</li>
                    <li>Automation just means the servers break faster and more consistently</li>
                    <li>The best backup is the one you've never tested</li>
                    <li>"It works on my laptop" is the new "it works on my machine"</li>
                    <li>SSH keys are the new passwords (except when they're not)</li>
                    <li>Every outage teaches us that our monitoring was insufficient</li>
                </ul>
            </div>

            <div class="ops-philosophy">
                <h3>⚙️ The Ops Philosophy</h3>
                <p>In ops, we don't just manage servers - we manage expectations. The expectation that things will break, that backups will fail, and that the one person who knows how the legacy system works is always on vacation.</p>
                
                <p>We are the guardians of production, the keepers of the flame, and the ones who get called at 3 AM when that flame becomes an inferno.</p>
            </div>

            <div class="troubleshooting-guide">
                <h3>🚨 Universal Troubleshooting Steps</h3>
                <ol>
                    <li>Check if it's plugged in</li>
                    <li>Check if DNS is working</li>
                    <li>Blame the network team</li>
                    <li>Check if the disk is full</li>
                    <li>Restart the service</li>
                    <li>Restart the server</li>
                    <li>Update your resume</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/sysadmin-day/" class="nav-button">Next Disaster: Sysadmin Day →</a>
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

.status-banner.critical {
    background: rgba(220, 20, 60, 0.2);
    border: 1px solid rgba(220, 20, 60, 0.4);
    border-radius: 8px;
    padding: 1rem;
    margin-bottom: 2rem;
    text-align: center;
}

.command-showcase {
    margin: 2rem 0;
}

.terminal-window {
    background: #1e1e1e;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
    font-family: 'Courier New', monospace;
}

.terminal-header {
    background: #323233;
    padding: 0.8rem;
    display: flex;
    align-items: center;
    gap: 1rem;
}

.terminal-buttons {
    display: flex;
    gap: 0.5rem;
}

.terminal-button {
    width: 12px;
    height: 12px;
    border-radius: 50%;
}

.terminal-button.red { background: #ff5f56; }
.terminal-button.yellow { background: #ffbd2e; }
.terminal-button.green { background: #27ca3f; }

.terminal-title {
    color: #fff;
    font-size: 0.9rem;
}

.terminal-content {
    padding: 1.5rem;
    background: #1e1e1e;
}

.command-line {
    color: #00ff00;
    margin: 0.5rem 0;
    font-size: 0.9rem;
}

.command-line.continuation {
    margin-left: 2rem;
}

.prompt {
    color: #ff6b6b;
    margin-right: 0.5rem;
}

.command-output {
    color: #ccc;
    margin: 0.3rem 0;
    margin-left: 1rem;
}

.command-output.error {
    color: #ff6b6b;
}

.hero-image {
    width: 100%;
    max-width: 600px;
    height: auto;
    border-radius: 10px;
    margin: 2rem auto;
    display: block;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
}

.content-text {
    font-size: 1.1rem;
    line-height: 1.7;
    color: #e0e0e0;
}

.content-text p {
    margin-bottom: 1.5rem;
}

.ops-tools {
    background: rgba(0, 100, 0, 0.1);
    border: 1px solid rgba(0, 100, 0, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.ops-tools h3 {
    color: #32cd32;
    margin-bottom: 2rem;
}

.tool-timeline {
    display: grid;
    gap: 1.5rem;
}

.tool-era {
    background: rgba(0, 0, 0, 0.3);
    border-left: 4px solid #32cd32;
    padding: 1.5rem;
    border-radius: 0 8px 8px 0;
}

.tool-era h4 {
    color: #90ee90;
    margin-bottom: 0.8rem;
}

.tool-era p {
    color: #ddd;
    margin: 0;
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
    content: "⚙️ ";
    margin-right: 0.5rem;
}

.ops-philosophy {
    background: rgba(128, 0, 128, 0.1);
    border: 1px solid rgba(128, 0, 128, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.ops-philosophy h3 {
    color: #da70d6;
    margin-bottom: 1rem;
}

.ops-philosophy p {
    color: #dda0dd;
    line-height: 1.6;
}

.troubleshooting-guide {
    background: rgba(220, 20, 60, 0.1);
    border: 1px solid rgba(220, 20, 60, 0.3);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.troubleshooting-guide h3 {
    color: #dc143c;
    margin-bottom: 1.5rem;
}

.troubleshooting-guide ol {
    color: #ffb6c1;
    padding-left: 1.5rem;
}

.troubleshooting-guide li {
    padding: 0.3rem 0;
    color: #ddd;
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
    
    .terminal-content {
        padding: 1rem;
    }
    
    .command-line {
        font-size: 0.8rem;
        word-break: break-all;
    }
}
</style>