<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?= $site_title ?> – <?= $page_title ?></title>
  <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
  <header>
    <nav>
      <?php foreach ($nav_items as $name => $link): ?>
        <a href="<?= $link ?>"><?= $name ?></a>
      <?php endforeach; ?>
    </nav>
  </header>
  <main><?php include $page_content; ?></main>
  <footer>
    <p>© <?= date("Y") ?> <?= $site_title ?>. Visit <a href="https://work.petersalvato.com">work.petersalvato.com</a></p>
  </footer>
</body>
</html>
