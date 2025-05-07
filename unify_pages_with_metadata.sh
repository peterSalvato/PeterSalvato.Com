#!/bin/bash

# Unified page_meta injector + route generator

BASE_DIR="./"
PAGES_DIR="$BASE_DIR/pages"

echo "🔧 Starting metadata injection and routing pass..."

# -------- Top-Level Pages -------- #
TOP_LEVEL_FILES=(
  about.php contact.php glossary.php colophon.php rss.php license.php
  resume.php sitemap.php search.php essays.php systems.php home.php
)

for file in "${TOP_LEVEL_FILES[@]}"; do
  slug="${file%.php}"
  readable_title=$(echo "$slug" | sed -E 's/-/ /g' | sed -E 's/.*/\u&/')
  target="$PAGES_DIR/$file"
  route_path="$BASE_DIR/$slug/index.php"
  content_path="pages/$file"

  # Create routed index if missing
  if [ ! -f "$route_path" ]; then
    mkdir -p "$(dirname "$route_path")"
    cat <<EOF > "$route_path"
<?php
\$page_title = "$readable_title";
\$page_content = "../$content_path";
include '../layout.php';
?>
EOF
    echo "✅ Created routed wrapper: /$slug/index.php"
  fi

  # Inject page_meta if not present
  if ! grep -q "\$page_meta" "$target"; then
    TMP_FILE="${target}.tmp"
    cat <<EOF > "$TMP_FILE"
<?php
\$page_meta = [
  "title" => "$readable_title",
  "summary" => "TODO: Add summary for $readable_title.",
  "type" => "page"
];
?>
EOF
    cat "$target" >> "$TMP_FILE"
    mv "$TMP_FILE" "$target"
    echo "📝 Injected page_meta into: $target"
  else
    echo "⚠️ Skipped (already has page_meta): $target"
  fi
done

# -------- Essays -------- #
ESSAY_DIR="$PAGES_DIR/essays"
for file in "$ESSAY_DIR"/*.php; do
  filename=$(basename "$file")
  slug="${filename%.php}"
  readable_title=$(echo "$slug" | sed -E 's/-/ /g' | sed -E 's/.*/\u&/')
  route_path="$BASE_DIR/essays/$slug.php"
  content_path="pages/essays/$filename"

  # Create routed index if missing
  if [ ! -f "$route_path" ]; then
    cat <<EOF > "$route_path"
<?php
\$page_title = "$readable_title";
\$page_content = "../$content_path";
include '../layout.php';
?>
EOF
    echo "✅ Created routed wrapper: /essays/$slug.php"
  fi

  if ! grep -q "\$page_meta" "$file"; then
    TMP_FILE="${file}.tmp"
    cat <<EOF > "$TMP_FILE"
<?php
\$page_meta = [
  "title" => "$readable_title",
  "summary" => "TODO: Add summary for $readable_title.",
  "type" => "essay"
];
?>
EOF
    cat "$file" >> "$TMP_FILE"
    mv "$TMP_FILE" "$file"
    echo "📝 Injected page_meta into: $file"
  else
    echo "⚠️ Skipped (already has page_meta): $file"
  fi
done

# -------- Systems -------- #
SYSTEM_DIR="$PAGES_DIR/systems"
for file in "$SYSTEM_DIR"/*.php; do
  filename=$(basename "$file")
  slug="${filename%.php}"
  readable_title=$(echo "$slug" | sed -E 's/-/ /g' | sed -E 's/.*/\u&/')
  route_path="$BASE_DIR/systems/$slug.php"
  content_path="pages/systems/$filename"

  # Create routed index if missing
  if [ ! -f "$route_path" ]; then
    cat <<EOF > "$route_path"
<?php
\$page_title = "$readable_title";
\$page_content = "../$content_path";
include '../layout.php';
?>
EOF
    echo "✅ Created routed wrapper: /systems/$slug.php"
  fi

  if ! grep -q "\$page_meta" "$file"; then
    TMP_FILE="${file}.tmp"
    cat <<EOF > "$TMP_FILE"
<?php
\$page_meta = [
  "title" => "$readable_title",
  "summary" => "TODO: Add summary for $readable_title.",
  "type" => "system"
];
?>
EOF
    cat "$file" >> "$TMP_FILE"
    mv "$TMP_FILE" "$file"
    echo "📝 Injected page_meta into: $file"
  else
    echo "⚠️ Skipped (already has page_meta): $file"
  fi
done

echo "✅ All metadata injected and routes generated."
