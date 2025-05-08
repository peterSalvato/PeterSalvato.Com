<?php
$page_meta = [
  "title" => "Php site validator",
  "summary" => "TODO: Add summary for Php site validator.",
  "type" => "system"
];
?>
<?php if (!isset($_extracting_meta)): ?>
<article>
  <h1>PHP Site + GPT Validator</h1>
  <p>A modular publishing system with built-in validation rules for content structure and semantic correctness.</p>


  <!-- PHP Site Validator Systems Page -->
  <div class="system-page">

    <!-- System Title -->
    <section class="system-header">
      <p class="tagline">Metadata-aware content validation and publishing framework.</p>
    </section>

    <!-- What It Is -->
    <section class="what-it-is">
      <h2>What is the PHP Site Validator?</h2>
      <p>An authoring-aware PHP layer for static or semi-dynamic sites. The Validator inspects metadata blocks in your content files and enforces consistency, completeness, and proper formatting before pages are published or rendered.</p>
    </section>

    <!-- Why It Matters -->
    <section class="why-it-matters">
      <h2>Why It Matters</h2>
      <p>Too often, websites rely on human memory to maintain metadata integrity—titles, summaries, tags, and SEO info are scattered or inconsistent. This framework centralizes validation, removes human error, and ensures that structured content remains trustworthy over time.</p>
    </section>

    <!-- How It Works -->
    <section class="how-it-works">
      <h2>How It Works</h2>
      <ul>
        <li><strong>$page_meta Blocks:</strong> Standardized metadata arrays embedded at the top of each page.</li>
        <li><strong>Extraction Mode:</strong> Validator runs in meta-extracting mode, bypassing visual rendering.</li>
        <li><strong>Validation Rules:</strong> Custom rules ensure all required fields are present, typed, and consistent across page types.</li>
        <li><strong>CLI + Bash Tooling:</strong> Includes simple CLI scaffolding scripts to help populate and inspect site content.</li>
      </ul>
    </section>

    <!-- Who It's For -->
    <section class="who-its-for">
      <h2>Who It's For</h2>
      <p>Designed for developers, designers, or system-builders who want to ensure semantic and structural consistency across large content systems without relying on CMS overhead.</p>
    </section>

    <!-- Key Benefits -->
    <section class="key-benefits">
      <h2>Key Benefits</h2>
      <ul>
        <li>Enforces content metadata completeness.</li>
        <li>Reduces publishing errors and inconsistencies.</li>
        <li>Supports automation and clean data export.</li>
        <li>Works with flat-file sites and hybrid stacks.</li>
      </ul>
    </section>

    <!-- Call to Action -->
    <section class="cta">
      <a href="/contact" class="button">View Validator Docs →</a>
    </section>

  </div>
  

</article>
<?php endif; ?>
