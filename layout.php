<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?= isset($page_title) ? $page_title . ' | Peter Salvato' : 'Peter Salvato' ?></title>
  <link rel="stylesheet" href="/assets/styles/styles.css" />
</head>
<body>
  <header>
    <a href="/" class="brand">
      <span class="name">Peter Salvato</span>
      <span class="tagline">UX Architecture · System Thinking · Platform Durability</span>
    </a>
    <nav>
      <a href="/">Home</a>
      <a href="/systems/">Systems</a>
      <a href="/essays/">Essays</a>
      <a href="/resume/">Résumé</a>
      <a href="/about/">About</a>
      <a href="/contact/">Contact</a>
    </nav>
  </header>

  <main>
    <?php if (!empty($page_content)) include $page_content; ?>
  </main>

  <footer>
    <!-- Your footer structure -->
    <div class="footer-grid">

      <section class="footer-column">
        <h2 class="footer-heading">Resources</h2>
        <ul>
          <li><a href="/glossary.php">Glossary</a></li>
          <li><a href="/sitemap.php">Sitemap</a></li>
          <li><a href="/colophon.php">Colophon</a></li>
        </ul>
      </section>

      <section class="footer-column">
        <h2 class="footer-heading">Meta Links</h2>
        <ul>
          <li><a href="/rss.xml">RSS Feed</a></li>
          <li><a href="/license.php">License</a></li>
          <li><a href="/search.php">Search</a></li>
        </ul>
      </section>

      <section class="footer-column">
        <h2 class="footer-heading">Pathways</h2>
        <ul>
          <li><a href="#">Cognitive Systems Architect</a></li>
          <li><a href="#">Knowledge Durability Engineer</a></li>
          <li><a href="#">Semantic UI/UX Strategist</a></li>
        </ul>
      </section>

      <section class="footer-column footer-right">
        <p>©2025 Peter Salvato</p>
        <p>All systems authored.<br>All rights reserved.</p>
        <p class="footer-codex">//Æ::P3#|●.◁.●.⟩.●.▼.▶|//</p>
      </section>

      </div>
  </footer>
</body>
</html>
