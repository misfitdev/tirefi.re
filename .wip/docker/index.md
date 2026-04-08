---
layout: wip
title: "ಠ_ಠ in docker"
permalink: /docker/
docker1: true
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/">Home</a> → <span>Docker</span>
    </div>
    <h1>ಠ_ಠ in docker</h1>
    <p class="page-subtitle">containerizing the problem does not solve the problem</p>
</div>

<div class="content-section">
    <p>Docker</p>
</div>

<div class="content-section">
    <h2>The Redirect You Just Experienced</h2>
    <p>The original tirefi.re Docker page had one piece of content: the word "Docker." It also had a meta-refresh redirect that sent you to <code>/docker/moby/docker/</code>. That page redirected to <code>/docker/moby/docker/moby/docker/</code>. Which redirected further. The URL grew until the browser gave up.</p>

    <p>This was the joke. The Docker page was an infinite loop. You went looking for information about Docker and instead you got a recursive redirect that consumed your browser tab and eventually errored out, which is about as accurate a representation of debugging Docker in 2016 as you're going to find.</p>

    <p>The loop looked like this:</p>

    <pre style="background: var(--surface); border: 1px solid var(--border); padding: 1rem; overflow-x: auto;">/docker/
  → /docker/moby/docker/
    → /docker/moby/docker/moby/docker/
      → /docker/moby/docker/moby/docker/moby/docker/
        → /docker/moby/docker/moby/docker/moby/docker/moby/docker/
          → ...</pre>
</div>

<div class="content-section">
    <h2>Why This Is Accurate</h2>
    <p>Docker renamed itself to Moby in 2017, or rather, spun the open-source components into a project called Moby while keeping the commercial product named Docker. This caused genuine confusion about what Docker was, what Moby was, whether they were the same thing, and which one you were actually running. The Docker CLI talked to the Docker daemon. The Docker daemon was built from Moby. Moby contained Docker. You were inside Docker which contained Moby which built Docker.</p>

    <p>This is also an accurate description of what happens when you try to debug a containerized application. You are in a container. The container is running on a host. The host might be a VM. The VM is running in a cloud provider's hypervisor. The network your container thinks it's on is virtual. The network your host is on is also virtual. The IP address you can see from inside the container is not the IP address anyone outside can use. The port you bound is accessible, unless it isn't, depending on how many layers of NAT and iptables rules exist between you and the thing you're trying to reach.</p>
</div>

<div class="quote-box">
    <blockquote>It works in the container. It doesn't work outside the container. It works outside the container on my machine. It doesn't work outside the container in production. The container is identical. The environment is the same. It is not the same.</blockquote>
    <cite>— docker run, solved eventually</cite>
</div>

<div class="content-section">
    <h2>The Layer Cache and Other Gifts</h2>
    <p>Docker's layer cache is clever. Build steps that haven't changed use the cached result. Change one step and everything after it rebuilds. This is efficient and also means that moving your <code>RUN apt-get install</code> line to the top of the Dockerfile is a significant performance optimization, which is knowledge that is not obvious from first principles and costs you time before you acquire it.</p>

    <p>Image sizes grow. Every <code>RUN</code> step that downloads something and doesn't clean up after itself adds a layer with the downloaded files, and then another layer that deletes them, and both layers are in the image, and the image is larger than it needs to be. You learn to chain your <code>RUN</code> commands with <code>&&</code> to stay in a single layer. You audit your images with <code>docker history</code>. You write multi-stage builds. You chase the number down from 2GB to 800MB to 200MB, and somewhere in there you wonder whether the size reduction is worth the Dockerfile complexity, and the answer depends on how many times a day the image is pulled.</p>

    <p>The containers solved the "works on my machine" problem by making "my machine" portable. What they didn't solve is the configuration problem, the secret management problem, the networking problem, or the "what is actually running in production right now" problem. They moved those problems into a different layer of the stack, which is not the same as solving them. The redirect continues.</p>
</div>

<div class="navigation-footer">
    <a href="/" class="nav-button">← All Disasters</a>
</div>
