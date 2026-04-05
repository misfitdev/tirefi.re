---
layout: wip
title: "Debate - The Arguments That Actually Matter"
permalink: /.wip/debate/
---

<div class="page-header">
    <div class="breadcrumb">
        <a href="/.wip/">Home</a> → <span>Debate</span>
    </div>
    <h1>The Debates That Actually Matter</h1>
    <p class="page-subtitle">Presidential elections come and go. Tabs vs. spaces is forever.</p>
</div>

<div class="content-section">
    <h2>A Note on Debates</h2>
    <p>You came here because you remember a page about presidential debates. That content has been retired. The debates worth having are the ones that have been running continuously since before most of your dependencies were written, will never be resolved, and will be relitigated in your next PR review regardless of what the style guide says.</p>

    <p>These are those debates.</p>
</div>

<div class="content-section">
    <h2>Tabs vs. Spaces</h2>
    <p>The oldest war. The one that predates your career, your company, and probably your birth. Both sides have reasonable arguments. Both sides are completely wrong about the other side being unreasonable. The real outcome is always the same: a .editorconfig file that nobody configured their editor to read, committed by someone who thought this would settle it.</p>

    <p>Spaces: consistent rendering everywhere. Tabs: configurable width, semantic meaning, accessibility benefits for developers who prefer larger indentation. The correct answer is whatever your codebase already uses and a pre-commit hook that enforces it. The actual answer in your codebase is a mix of both, introduced gradually over six years, with one file that uses tabs-converted-to-spaces-converted-back-to-tabs.</p>

    <div class="quote-box">
        <blockquote>
            <p>"We use spaces."<br>"Actually, line 847 uses a tab."<br>"That's from the file Dave copied from Stack Overflow in 2019."<br>"Dave is still here."</p>
            <cite>— A code review, ongoing</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>Vim vs. Emacs</h2>
    <p>This debate peaked in approximately 1993 and has been running on inertia ever since. Vim people will tell you their editor is everywhere, that you need to know it for server work, that the modal editing becomes second nature after only six months of constant confusion. They are correct. Emacs people will tell you their editor is an operating system, that org-mode changed their life, that with enough configuration it can do anything. They are also correct.</p>

    <p>The actual debate now is between people who have opinions about either and developers who use VS Code and have never once felt bad about it. The VS Code people are winning because they shipped something instead of configuring their editor. The vim people are furious. The emacs people already knew this would happen and have a package for it.</p>

    <p>The correct editor is the one that lets you close it without Googling how to exit. You know which one that eliminates.</p>
</div>

<div class="content-section">
    <h2>Git Rebase vs. Merge</h2>
    <p>Merge says: history is a record of what happened. Rebase says: history is a record of what we wish had happened. Both are defensible. Your team will pick one policy, someone will violate it immediately, and the git log will look exactly like it always has: a combination of merge commits, rebased linear history, squash commits, and one branch that was force-pushed three times and is now technically orphaned.</p>

    <p>The teams that care most about clean git history are the teams where nobody is shipping fast enough to make the git log messy. The teams shipping fast enough to make the git log messy are too busy to care about the git log. This is not a coincidence.</p>

    <div class="quote-box">
        <blockquote>
            <p>"Never force push to main."<br>"I know."<br>"You just force pushed to main."<br>"I meant to push to my branch."<br>"Your branch is main."</p>
            <cite>— #git-help, 11:47pm</cite>
        </blockquote>
    </div>
</div>

<div class="content-section">
    <h2>On Debates in General</h2>
    <p>The purpose of a technical debate is not to reach a conclusion. It is to establish that you have opinions, that your opinions are correct, and that the other person's opinions, while not wrong exactly, reflect a fundamental misunderstanding of the tradeoffs involved. The debate ends not when someone is persuaded but when someone has to go to standup.</p>

    <p>Document your decision in the README. Enforce it with tooling. Move on. The next engineer will reopen the issue in their first week PR anyway.</p>
</div>

<div class="navigation-footer">
    <a href="/.wip/" class="nav-button">Back to All Disasters</a>
    <a href="/.wip/giforgif/" class="nav-button">Related: GIF Pronunciation</a>
</div>
