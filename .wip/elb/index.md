---
layout: wip
title: "ELB - The Load Balancer That Launched a Thousand Arguments"
permalink: /.wip/elb/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>ELB</span>
    </div>
    <h1>Just Use HAProxy</h1>
    <p class="page-subtitle">Or nginx. Or ALB. Or NLB. Or the new thing. There's always a new thing.</p>
</div>

<div class="content-section">
    <h2>The Eternal Debate</h2>
    <p>Every ops team will have this conversation at least once per infrastructure generation. Someone joins who knows HAProxy extremely well. Someone else joined six months ago from AWS-land and considers ELB a solved problem. A third person once configured nginx as a load balancer and has been meaning to write up the config as a blog post since 2018. They will spend two weeks discussing this, produce a comparison matrix, and ultimately keep whatever they have because migrating it is not worth it.</p>

    <p>Whatever they have is probably fine. Load balancers are not the interesting part. The interesting part is the application behind them, which is also not fine, but that's a different problem.</p>
</div>

<div class="content-section">
    <h2>The Contenders</h2>
    <p><strong>HAProxy</strong> is what you use when you need high performance, precise control, and the willingness to read a 400-page documentation PDF. The config file syntax is its own language. The person who knows HAProxy extremely well knows it extremely well because they had to. HAProxy will do exactly what you tell it. If what you told it is wrong, that is your fault and HAProxy will not soften the feedback.</p>

    <p><strong>nginx</strong> was originally a web server and is now everything. The load balancing config is simpler than HAProxy. The caching config is in there too. So is the reverse proxy config. So is the static file serving config. There is probably a line in your nginx.conf that was added in 2017 and nobody is certain what it does but removing it caused an incident in 2019.</p>

    <p><strong>ELB/ALB/NLB</strong> is what you use when you're on AWS and you've decided that not thinking about this is worth the per-LCU cost. The Classic ELB is deprecated. The ALB is for HTTP. The NLB is for TCP. The GLB is for appliances. The one you want depends on your use case in ways that are documented but require reading several pages that each link to four more pages.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We could just use HAProxy."<br>"We're on AWS."<br>"HAProxy works on AWS."<br>"Why would we run something we have to manage when AWS will manage it for us."<br>"Because last month ALB dropped all websocket connections for forty minutes and AWS's response was 'we are investigating.'"<br>"That was one time."</p>
            <cite>— Architecture review, 2022. Same conversation, different year.</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>The Rewrite</h2>
    <p>Someone on your team rewrote the load balancer config from scratch. They said it would be cleaner. It is, technically, cleaner. It is also different from what was running in ways that took six weeks to fully discover. The SSL termination is now handled slightly differently. The health check interval changed. The timeout values were "rationalized," which is to say they were made consistent with each other and inconsistent with what the application actually needs.</p>

    <p>Production handled most of this fine. It did not handle one thing fine. That thing was in the postmortem. The postmortem action item is to add more integration tests for load balancer configuration changes, which will be done in Q3.</p>
</div>

<div class="content-section">
    <h2>The Correct Answer</h2>
    <p>Use whatever your team knows. Use whatever your environment supports. Write down what it does and why. Put it in version control. Add a health check that actually checks whether the application is healthy and not just whether port 80 returns a 200 on the /ping endpoint that always returns 200. Test your failover before you need your failover.</p>

    <p>The load balancer is not the problem. The load balancer is never the problem. Check your application. Check your database connection pool. Check the thing that's been slowly running out of file descriptors since Tuesday. The load balancer is fine.</p>

    <div class="fun-facts">
        <h3>Load Balancer Algorithm Decision Guide</h3>
        <ul>
            <li><strong>Round robin</strong> — what you set it to in 2018 and have not changed</li>
            <li><strong>Least connections</strong> — what the HAProxy person will suggest</li>
            <li><strong>IP hash</strong> — sticky sessions without admitting you need sticky sessions</li>
            <li><strong>Random</strong> — what round robin becomes under load anyway</li>
            <li><strong>Resource-based</strong> — ask the AWS sales rep what this means</li>
        </ul>
    </div>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">Back to All Disasters</a>
    <a href="/.wip/dns/" class="nav-button">Related: DNS</a>
</div>
