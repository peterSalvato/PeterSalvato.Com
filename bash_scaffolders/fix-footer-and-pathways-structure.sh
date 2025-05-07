#!/bin/bash

# Directories and lists
PAGES_DIR="pages"
FOOTER_ROUTES=(glossary sitemap colophon rss license search)
PATHWAYS=(cognitive-systems-architect knowledge-durability-engineer semantic-uiux-strategist)

echo "🔧 Rebuilding clean layout-compliant routing for footer + pathway pages..."

# Ensure pages directory exists
mkdir -p "$PAGES_DIR"

# Process all routes (footer + pathways)
for route in "${FOOTER_ROUTES[@]}" "${PATHWAYS[@]}"; do
  # Clean up orphan root-level .php file if it exists
  if [[ -f "$route.php" ]]; then
    echo "🧹 Removing orphaned file: $route.php"
    rm "$route.php"
  fi

  # Move any existing content to /pages/ if needed
  if [[ -f "$route/index.php" ]]; then
    CONTENT_PATH="$PAGES_DIR/$route.php"
    grep -q "<article" "$route/index.php" && mv "$route/index.php" "$CONTENT_PATH"
  fi

  # Ensure content file exists
  CONTENT_PATH="$PAGES_DIR/$route.php"
  if [[ ! -f "$CONTENT_PATH" ]]; then
    echo "📝 Creating $CONTENT_PATH"
    echo "<article><h1>$(echo $route | sed 's/-/ /g' | sed 's/.*/\u&/') Page</h1><p>Content placeholder for $route.</p></article>" > "$CONTENT_PATH"
  fi

  # Create routed index.php
  mkdir -p "$route"
  ROUTE_FILE="$route/index.php"
  echo "<?php
\$page_title = \"$(echo $route | sed 's/-/ /g' | sed 's/.*/\u&/')\";
\$page_content = \"../$PAGES_DIR/$route.php\";
include '../layout.php';
?>" > "$ROUTE_FILE"

  echo "✅ Routed: /$route/index.php with clean content reference"
done

echo "✅ Footer and pathway structure fully aligned with site routing convention."
