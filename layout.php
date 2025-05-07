<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?= $site_title ?> – <?= $page_title ?></title>
  <link rel="stylesheet" href="/assets/styles/styles.css">

</head>
<body>
  <header>
    <div class="brand">
      <a href="/"><strong>Peter Salvato</strong></a> <!-- Styled as a brand, not a heading -->
      <span><strong>
        - Enterprise UX<br />
        - Front-End Systems<br />
        - Remote Platform Leadership
      </strong></span>
    </div>
    <nav>
      <?php foreach ($nav_items as $name => $link): ?>
        <a href="<?= $link ?>"><?= $name ?></a>
      <?php endforeach; ?>
    </nav>
  </header>
  <main><?php include $page_content; ?></main>
  <footer>

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

      <h2 class="footer-heading">© <?= date("Y") ?> <?= $site_title ?>.</h2>
        <ul>
          <li><a href="#">All systems authored.</a></li>
          <li><a href="#">All rights reserved.</a></li>
          <li><a href="#" class='codex'>//Æ::P3#|●.◁.●.⟩.●.▼.▶|//</a></li>
        </ul>

      </section>

    </div>

  </footer>
</body>
</html>
