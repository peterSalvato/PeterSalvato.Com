#!/bin/bash

BASE="./pages"

declare -A primary_pages
primary_pages=(
  ["home"]="Staff+ Systems Architect|I design and scale platforms for documentation, internal tools, and interface logic."
  ["about"]="About Me|Over 12 years as a remote platform owner and system architect for complex enterprise SaaS environments."
  ["resume"]="Résumé|Download my full résumé as PDF or explore a structured view of my systems-level experience."
  ["contact"]="Get in Touch|I'm currently open to Staff+ roles in UX systems, documentation infrastructure, or platform design."
)

for slug in "${!primary_pages[@]}"; do
  title="${primary_pages[$slug]%%|*}"
  description="${primary_pages[$slug]#*|}"
  filepath="$BASE/$slug.php"

  echo "Populating $filepath..."
  cat <<EOF > "$filepath"
<article>
  <h1>$title</h1>
  <p>$description</p>
</article>
EOF
done

echo "✅ Primary pages populated with default content."
