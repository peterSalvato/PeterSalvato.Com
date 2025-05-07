<article>
  <h1>Systems</h1>
  <p>Tools and frameworks I've built to manage complexity, scale cognition, and structure authored information across platforms.</p>
  <ul>
    <?php
    $systems = json_decode(file_get_contents(__DIR__ . '/../data/systems.json'), true);
    foreach ($systems as $s) {
      echo "<li><a href='/systems/{$s['slug']}.php'><strong>{$s['title']}</strong> – {$s['summary']}</a></li>";
    }
    ?>
  </ul>
</article>
