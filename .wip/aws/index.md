---
layout: wip
title: "AWS - Service is operating normally"
permalink: /.wip/aws/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">🔥 Home</a> → <span>AWS</span>
    </div>
    <h1>☁️ us-tirefire-1</h1>
    <p class="page-subtitle">Service is operating normally (narrator: it wasn't)</p>
</div>

<div class="content-section">
    <div class="status-banner warning">
        <strong>⚠️ Status:</strong> All systems operational (please ignore the smoke)
    </div>

    <div class="main-content-area">
        <img src="/aws/cloud.jpg" alt="It's probably fine..." class="hero-image">
        
        <div class="content-text">
            <p>Yeah, the db is in us-east-1, but we will move it later.</p>
            
            <p><em>"Later" has been redefined as "when the heat death of the universe forces our hand."</em></p>
            
            <div class="quote-box">
                <blockquote>
                    <p>"us-tirefire-1"</p>
                    <cite>— @grepory, July 30, 2016</cite>
                </blockquote>
            </div>

            <div class="fun-facts">
                <h3>🔥 Fun AWS Facts</h3>
                <ul>
                    <li>Every region is technically "us-tirefire" if you're doing it wrong</li>
                    <li>The "A" in AWS stands for "Absolutely going to cost more than you budgeted"</li>
                    <li>Cross-region replication means your data gets corrupted in multiple locations simultaneously</li>
                    <li>Auto-scaling: automatically scaling your costs to bankruptcy</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">← Back to All Disasters</a>
    <a href="/.wip/s3/" class="nav-button">Next Disaster: S3 →</a>
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

.status-banner {
    background: rgba(255, 165, 0, 0.2);
    border: 1px solid rgba(255, 165, 0, 0.4);
    border-radius: 8px;
    padding: 1rem;
    margin-bottom: 2rem;
    text-align: center;
}

.status-banner.warning {
    background: rgba(255, 69, 0, 0.2);
    border-color: rgba(255, 69, 0, 0.4);
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
    content: "🔥 ";
    margin-right: 0.5rem;
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
}
</style>
