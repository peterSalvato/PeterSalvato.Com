<article>
  <h1><?= $page_title ?></h1>
  <p>Reflections and frameworks on semantic tooling, cognitive systems, authorship infrastructure, and remote UX practice.</p>

  <ul>
    <?php
    $files = glob(__DIR__ . '/essays/*.php');

    function extract_meta($file) {
      $page_meta = [];
      include $file;
      return $page_meta;
    }

    foreach ($files as $file) {
      $meta = extract_meta($file);
      $slug = basename($file, '.php');
      echo "<li><a href='/essays/$slug.php'><strong>{$meta['title']}</strong> – {$meta['summary']}</a></li>";
    }
    ?>
  </ul>
</article>

