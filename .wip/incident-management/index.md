---
layout: wip
title: "Incident Management - Hi, who just joined?"
permalink: /.wip/incident-management/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Incident Management</span>
    </div>
    <h1>🚨 Hi, who just joined?</h1>
    <p class="page-subtitle">elevated error rates & existential dread</p>
</div>

<div class="content-section">
    <div class="status-banner critical">
        <strong>🚨 Status:</strong> Everything is fine (Severity 1 incident in progress)
    </div>

    <div class="main-content-area">
        <div class="incident-chant">
            <p class="error-rate">elevated error rates &</p>
            <p class="error-rate">elevated error rates &</p>
            <p class="error-rate">elevated error rates &</p>
            <p class="error-rate">elevated error rates</p>
        </div>

        <img src="/incident-management/incident-management.gif" alt="apis up" class="hero-image">
        
        <div class="content-text">
            <p><em>In the ancient ritual of incident management, we gather in digital war rooms to chant the sacred mantras while our systems burn around us. "Hi, who just joined?" becomes the greeting that haunts our dreams.</em></p>

            <div class="incident-roles">
                <h3>🎭 The Cast of Characters</h3>
                <div class="role-grid">
                    <div class="role-card">
                        <h4>The Incident Commander</h4>
                        <p>Frantically trying to appear calm while everything burns</p>
                    </div>
                    <div class="role-card">
                        <h4>The Person Who Just Joined</h4>
                        <p>"Hi, who just joined? Can someone give me a quick summary?"</p>
                    </div>
                    <div class="role-card">
                        <h4>The Expert Who's On Vacation</h4>
                        <p>"Sorry, I'm in airplane mode, what's the issue?"</p>
                    </div>
                    <div class="role-card">
                        <h4>The Person Who Caused It</h4>
                        <p>Suspiciously quiet in the channel</p>
                    </div>
                </div>
            </div>

            <div class="quote-box">
                <blockquote>
                    <p>"Can everyone please mute except the incident commander?"</p>
                    <cite>— Last words before chaos erupts in voice chat</cite>
                </blockquote>
            </div>

            <div class="fun-facts">
                <h3>🔥 Incident Management Fun Facts</h3>
                <ul>
                    <li>The first rule of incident management: someone will always join and ask for a summary</li>
                    <li>The second rule: that someone is usually a manager</li>
                    <li>"Elevated error rates" is the grown-up way of saying "everything is broken"</li>
                    <li>Every incident starts with "it was working yesterday"</li>
                    <li>The severity is always inversely proportional to how prepared you are</li>
                    <li>Post-mortems are where we pretend we've learned from our mistakes</li>
                    <li>The real incident was the friends we stressed out along the way</li>
                </ul>
            </div>

            <div class="incident-timeline">
                <h3>📅 Typical Incident Timeline</h3>
                <div class="timeline">
                    <div class="timeline-item">
                        <strong>T-0:</strong> "Has anyone noticed elevated error rates?"
                    </div>
                    <div class="timeline-item">
                        <strong>T+5min:</strong> "Hi, who just joined?"
                    </div>
                    <div class="timeline-item">
                        <strong>T+10min:</strong> "Let me get the expert on the call"
                    </div>
                    <div class="timeline-item">
                        <strong>T+15min:</strong> "The expert is unreachable"
                    </div>
                    <div class="timeline-item">
                        <strong>T+30min:</strong> "Have we tried turning it off and on again?"
                    </div>
                    <div class="timeline-item">
                        <strong>T+45min:</strong> "It just started working again"
                    </div>
                    <div class="timeline-item">
                        <strong>T+60min:</strong> "Let's schedule a post-mortem"
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/monitoring/" class="nav-button">Next Disaster: Monitoring →</a>
</div>

<style>
.incident-chant {
    background: var(--surface);
    border: 1px solid var(--border);
    padding: 2rem;
    margin: 2rem 0;
    text-align: center;
    font-family: var(--font);
}

.error-rate {
    color: var(--danger);
    font-size: 1.2rem;
    margin: 0.5rem 0;
}

.incident-roles {
    margin: 3rem 0;
}

.role-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 1rem;
    margin: 2rem 0;
}

.role-card {
    background: var(--surface);
    border: 1px solid var(--border);
    padding: 1.5rem;
}

.role-card h4 {
    color: var(--text-bright);
    margin-bottom: 1rem;
}

.role-card p {
    color: var(--text);
    font-style: italic;
    margin: 0;
}

.incident-timeline {
    background: var(--surface);
    border: 1px solid var(--border);
    padding: 2rem;
    margin: 3rem 0;
}

.timeline-item {
    padding: 1rem;
    margin: 1rem 0;
    border-left: 3px solid var(--border-hi);
    background: transparent;
    color: var(--text);
}

.timeline-item strong {
    color: var(--text-bright);
}

@media (max-width: 768px) {
    
    
    .role-grid {
        grid-template-columns: 1fr;
    }
}
</style>