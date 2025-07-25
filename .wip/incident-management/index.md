---
layout: wip
title: "Incident Management - Hi, who just joined?"
permalink: /.wip/incident-management/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">🔥 Home</a> → <span>Incident Management</span>
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
    <a href="/.wip/postmortems/" class="nav-button">Next Disaster: Post-mortems →</a>
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

.incident-chant {
    background: rgba(139, 0, 0, 0.2);
    border: 1px solid rgba(139, 0, 0, 0.4);
    border-radius: 10px;
    padding: 2rem;
    margin: 2rem 0;
    text-align: center;
    font-family: 'Courier New', monospace;
}

.error-rate {
    color: #ff6b6b;
    font-size: 1.2rem;
    margin: 0.5rem 0;
    animation: pulse 2s infinite;
}

@keyframes pulse {
    0% { opacity: 1; }
    50% { opacity: 0.7; }
    100% { opacity: 1; }
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

.incident-roles {
    margin: 3rem 0;
}

.incident-roles h3 {
    color: #ff4500;
    margin-bottom: 2rem;
}

.role-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 1rem;
    margin: 2rem 0;
}

.role-card {
    background: rgba(255, 69, 0, 0.1);
    border: 1px solid rgba(255, 69, 0, 0.3);
    border-radius: 8px;
    padding: 1.5rem;
}

.role-card h4 {
    color: #ffa500;
    margin-bottom: 1rem;
}

.role-card p {
    color: #ccc;
    font-style: italic;
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
    content: "🚨 ";
    margin-right: 0.5rem;
}

.incident-timeline {
    background: rgba(30, 30, 30, 0.5);
    border: 1px solid rgba(255, 69, 0, 0.2);
    border-radius: 10px;
    padding: 2rem;
    margin: 3rem 0;
}

.incident-timeline h3 {
    color: #ff4500;
    margin-bottom: 2rem;
}

.timeline-item {
    padding: 1rem;
    margin: 1rem 0;
    border-left: 3px solid #ff4500;
    background: rgba(255, 69, 0, 0.05);
    border-radius: 0 5px 5px 0;
    color: #ddd;
}

.timeline-item strong {
    color: #ffa500;
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
    
    .role-grid {
        grid-template-columns: 1fr;
    }
}
</style>