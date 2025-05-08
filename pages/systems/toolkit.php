<?php
$page_meta = [
  "title" => "Toolkit",
  "summary" => "TODO: Add summary for Toolkit.",
  "type" => "system"
];
?>
<?php if (!isset($_extracting_meta)): ?>
<article>
  <h1>Component Toolkit (Coming Soon)</h1>
  <p>A modular frontend system for reusable interface tokens and future storybook integration.</p>
  <p class="tagline">A growing suite of minimal tools to scaffold, parse, and extend authored systems.</p>


  <!-- Toolkit Systems Page -->
  <div class="system-page">

    <!-- What It Is -->
    <section class="what-it-is">
      <h2>What is the Toolkit?</h2>
      <p>The Toolkit is a modular collection of scripts, templates, and utilities used to manage and extend semantic systems like Savepoint Protocol, the Validator, and Ætherwright documentation. It includes Bash and PHP tools for scaffolding pages, validating metadata, and extracting content for reuse.</p>
    </section>

    <!-- Why It Matters -->
    <section class="why-it-matters">
      <h2>Why It Matters</h2>
      <p>Manual authorship workflows don’t scale. The Toolkit provides simple automation and consistency without the complexity or lock-in of full CMS platforms. It's built for fast iteration and long-term clarity.</p>
    </section>

    <!-- How It Works -->
    <section class="how-it-works">
      <h2>How It Works</h2>
      <ul>
        <li><strong>Bash Scaffolders:</strong> Quickly generate page templates with pre-filled metadata blocks and routing logic.</li>
        <li><strong>Validator Hooks:</strong> Use CLI validators to check metadata structure, type safety, and completeness.</li>
        <li><strong>Content Extractors:</strong> Scripts to extract Savepoints, essay data, or glossary terms into JSON or Markdown.</li>
      </ul>
    </section>

    <!-- Who It's For -->
    <section class="who-its-for">
      <h2>Who It's For</h2>
      <p>Builders, developers, and thinkers who want control over their system architecture without sacrificing clarity or maintainability. Perfect for Obsidian users, PHP authors, and CLI-heavy workflows.</p>
    </section>

    <!-- Key Benefits -->
    <section class="key-benefits">
      <h2>Key Benefits</h2>
      <ul>
        <li>Jumpstarts new pages and projects with minimal effort.</li>
        <li>Enforces consistency across your content system.</li>
        <li>Supports clean export for archiving, documentation, or UI integration.</li>
        <li>Modular and extensible—built to be adapted.</li>
      </ul>
    </section>

    <!-- Call to Action -->
    <section class="cta">
      <a href="/contact" class="button">Explore Toolkit Scripts →</a>
    </section>

  </div>


</article>
<?php endif; ?>
