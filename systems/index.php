<?php
$page_title = "Systems";
$page_content = null;
include '../layout.php';
?>

<article>
  <h1><?= $page_title ?></h1>
  <p>Tools and frameworks built to scale cognition, structure authorship, and manage semantic complexity.</p>

  <ul>
    <?php
    $files = glob(__DIR__ . '/../pages/systems/*.php');

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
