#!/bin/bash

# Root structure
mkdir -p petersalvato.com/{systems,resume,essays,about,contact,assets/{css,js,img,fonts},pages}

# Base files
touch petersalvato.com/{index.php,layout.php,config.php,.htaccess}
echo "<?php // Router or .htaccess rules if needed ?>" > petersalvato.com/.htaccess

# Sample layout.php
cat << 'EOF' > petersalvato.com/layout.php
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
EOF

# Config file
cat << 'EOF' > petersalvato.com/config.php
<?php
$site_title = "Peter Salvato";
$nav_items = [
  "Home" => "/index.php",
  "Systems" => "/systems/index.php",
  "Résumé" => "/resume/index.php",
  "Essays" => "/essays/index.php",
  "About" => "/about/index.php",
  "Contact" => "/contact/index.php",
];
?>
EOF

# Index page
cat << 'EOF' > petersalvato.com/index.php
<?php
$page_title = "Home";
$page_content = "pages/home.php";
include 'layout.php';
?>
EOF

# Home content stub
cat << 'EOF' > petersalvato.com/pages/home.php
<h1>Staff+ Systems Architect</h1>
<p>I design and scale platforms for documentation, internal tools, and interface logic.</p>
<a href="/resume/index.php">Download Résumé</a>
EOF

# Pages with consistent PHP wrapper
for section in systems resume essays about contact; do
  cat << EOF > petersalvato.com/$section/index.php
<?php
\$page_title = "$(tr '[:lower:]' '[:upper:]' <<< ${section:0:1})${section:1}";
\$page_content = "pages/${section}.php";
include '../layout.php';
?>
EOF

  touch petersalvato.com/pages/$section.php
done

# Systems sub-pages
for sys in savepoint-protocol php-site-validator order-of-aetherwright toolkit; do
  cat << EOF > petersalvato.com/systems/$sys.php
<?php
\$page_title = "$(echo $sys | sed 's/-/ /g' | sed 's/.*/\u&/')";
\$page_content = "pages/systems/$sys.php";
include '../layout.php';
?>
EOF

  mkdir -p petersalvato.com/pages/systems
  touch petersalvato.com/pages/systems/$sys.php
done

# Essays sub-pages
for essay in cognitive-durability semantic-traceability remote-systems-thinking; do
  cat << EOF > petersalvato.com/essays/$essay.php
<?php
\$page_title = "$(echo $essay | sed 's/-/ /g' | sed 's/.*/\u&/')";
\$page_content = "pages/essays/$essay.php";
include '../layout.php';
?>
EOF

  mkdir -p petersalvato.com/pages/essays
  touch petersalvato.com/pages/essays/$essay.php
done

echo "✅ Scaffolding complete."
