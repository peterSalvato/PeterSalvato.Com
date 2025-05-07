#!/bin/bash

ROUTES=(glossary sitemap colophon rss license search)
PATHWAYS=(cognitive-systems-architect knowledge-durability-engineer semantic-uiux-strategist)
PAGES_DIR="pages"

echo "🔧 Aligning routing for footer and pathway pages..."

# Cleanup orphan top-level pages that shouldn't render standalone
for name in "${ROUTES[@]}" "${PATHWAYS[@]}"; do
  TOPLEVEL_FILE="$name.php"
  if [[ -f "$TOPLEVEL_FILE" ]]; then
    echo "🧹 Removing orphan: $TOPLEVEL_FILE"
    rm "$TOPLEVEL_FILE"
  fi
done

# Footer Pages
for route in "${ROUTES[@]}"; do
  mkdir -p "$route"
  cat <<EOF > "$route/index.php"
<?php
\$page_title = "$(echo "$route" | sed 's/-/ /g' | sed 's/.*/\u&/')";
\$page_content = "../$PAGES_DIR/$route.php";
include '../layout.php';
?>
EOF
  echo "✅ Routed: /$route/index.php"
done

# Pathway Pages
for route in "${PATHWAYS[@]}"; do
  mkdir -p "$route"
  cat <<EOF > "$route/index.php"
<?php
\$page_title = "$(echo "$route" | sed 's/-/ /g' | sed 's/.*/\u&/')";
\$page_content = "../$PAGES_DIR/$route.php";
include '../layout.php';
?>
EOF
  echo "✅ Routed: /$route/index.php"
done

echo "✅ All footer and pathway pages routed with layout.php. Old standalone files cleaned."
