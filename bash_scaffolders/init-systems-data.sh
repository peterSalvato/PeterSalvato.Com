#!/bin/bash

# Define paths
DATA_DIR="./data"
SYSTEMS_JSON="$DATA_DIR/systems.json"
SYSTEMS_PAGE="./pages/systems.php"

# Make sure data directory exists
mkdir -p "$DATA_DIR"

# Create JSON file with system entries
cat <<EOF > "$SYSTEMS_JSON"
[
  {
    "slug": "savepoint-protocol",
    "title": "Savepoint Protocol",
    "summary": "A semantic documentation system for capturing authored decisions with symbolic metadata."
  },
  {
    "slug": "php-site-validator",
    "title": "PHP Site + GPT Validator",
    "summary": "A ruleset-driven publishing system with GPT validation for structural and semantic accuracy."
  },
  {
    "slug": "order-of-aetherwright",
    "title": "The Order of the Ætherwright",
    "summary": "A symbolic schema for cognitive metadata, used across systems and publishing layers."
  },
  {
    "slug": "toolkit",
    "title": "Component Toolkit (Coming Soon)",
    "summary": "A future-facing UI token and storybook system for modular front-end reuse."
  }
]
EOF

# Create dynamic PHP index for systems
cat <<'EOF' > "$SYSTEMS_PAGE"
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
EOF

echo "✅ Systems section scaffolded with data-driven index."
