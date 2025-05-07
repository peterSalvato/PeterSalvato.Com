#!/bin/bash

# Define paths
DATA_DIR="./data"
ESSAYS_JSON="$DATA_DIR/essays.json"
ESSAYS_PAGE="./pages/essays.php"

# Make sure data directory exists
mkdir -p "$DATA_DIR"

# Create JSON file with entries
cat <<EOF > "$ESSAYS_JSON"
[
  {
    "slug": "cognitive-durability",
    "title": "Cognitive Durability",
    "summary": "On legibility, entropy, and design systems built to last."
  },
  {
    "slug": "semantic-traceability",
    "title": "Semantic Traceability",
    "summary": "Savepoints and how they preserve knowledge state across authorship."
  },
  {
    "slug": "remote-systems-thinking",
    "title": "Remote Systems Thinking",
    "summary": "Designing tools that enable clarity and autonomy at distance."
  }
]
EOF

# Create dynamic PHP index for essays
cat <<'EOF' > "$ESSAYS_PAGE"
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
EOF

echo "✅ Journal (essays) system scaffolded with data-driven index."
