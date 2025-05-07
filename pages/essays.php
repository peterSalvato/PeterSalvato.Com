<article>
  <h1>Essays</h1>
  <p>Brief writings and technical reflections on semantic tooling, UX systems, and remote cognitive infrastructure.</p>
  <ul>
    <?php
    $essays = json_decode(file_get_contents(__DIR__ . '/../data/essays.json'), true);
    foreach ($essays as $e) {
      echo "<li><a href='/essays/{$e['slug']}.php'><strong>{$e['title']}</strong> – {$e['summary']}</a></li>";
    }
    ?>
  </ul>
</article>
