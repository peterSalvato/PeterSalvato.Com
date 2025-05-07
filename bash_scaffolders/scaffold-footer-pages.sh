#!/bin/bash

PAGES_DIR="./pages"
FOOTER_PAGES=("glossary" "sitemap" "colophon" "rss" "license" "search")
PATHWAYS=("cognitive-systems-architect" "knowledge-durability-engineer" "semantic-uiux-strategist")

# Generate utility pages
for page in "${FOOTER_PAGES[@]}"; do
  filename="$PAGES_DIR/$page.php"
  echo "Creating $filename..."
  cat <<EOF > "$filename"
<article>
  <h1>$(echo "$page" | sed 's/-/ /g' | sed 's/.*/\u&/') Page</h1>
  <p>Content for the $page page will go here.</p>
</article>
EOF
done

# Generate meta-pathway pages
for path in "${PATHWAYS[@]}"; do
  filename="$PAGES_DIR/$path.php"
  echo "Creating $filename..."
  cat <<EOF > "$filename"
<article>
  <h1>$(echo "$path" | sed 's/-/ /g' | sed 's/.*/\u&/') Pathway</h1>
  <p>This is a conceptual frame reflecting a mode of systems thinking and authorship.</p>
</article>
EOF
done

echo "✅ Footer and pathway pages scaffolded."
