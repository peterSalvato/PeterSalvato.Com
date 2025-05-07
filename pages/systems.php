<?php
$page_meta = [
  "title" => "Systems",
  "summary" => "TODO: Add summary for Systems.",
  "type" => "page"
];
?>
<article>
  <h1>Systems</h1>
  <p>Tools and frameworks I've built to manage complexity, scale cognition, and structure authored information across platforms.</p>
  <ul>
  <?php
  $files = glob(__DIR__ . '/systems/*.php');

  function extract_meta($file) {
    $page_meta = [];
    include $file;
    return $page_meta;
  }

  foreach ($files as $file) {
    $meta = extract_meta($file);
    $slug = basename($file, '.php');
    echo "<li><a href='/systems/$slug.php'><strong>{$meta['title']}</strong> – {$meta['summary']}</a></li>";
  }
  ?>
</ul>
</article>
