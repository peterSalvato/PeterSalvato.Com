#!/bin/bash

BASE="./pages"

declare -A systems
systems=(
  ["savepoint-protocol"]="Savepoint Protocol|A structured documentation system for capturing authored decisions, tagged with semantic metadata."
  ["php-site-validator"]="PHP Site + GPT Validator|A modular publishing system with built-in validation rules for content structure and semantic correctness."
  ["order-of-aetherwright"]="The Order of the Ætherwright|A symbolic token system for classifying authored content across phases, domains, and cognitive states."
  ["toolkit"]="Component Toolkit (Coming Soon)|A modular frontend system for reusable interface tokens and future storybook integration."
)

declare -A essays
essays=(
  ["cognitive-durability"]="Cognitive Durability|Exploring documentation systems that remain legible over time and scale with mental complexity."
  ["semantic-traceability"]="Semantic Traceability|Savepoints as a method of preserving knowledge states and decision paths across authored work."
  ["remote-systems-thinking"]="Remote Systems Thinking|Designing asynchronous systems that support autonomy, clarity, and traceable collaboration."
)

# Create default content for system pages
for slug in "${!systems[@]}"; do
  title="${systems[$slug]%%|*}"
  description="${systems[$slug]#*|}"
  filepath="$BASE/systems/$slug.php"

  echo "Populating $filepath..."
  cat <<EOF > "$filepath"
<article>
  <h1>$title</h1>
  <p>$description</p>
</article>
EOF
done

# Create default content for essay pages
for slug in "${!essays[@]}"; do
  title="${essays[$slug]%%|*}"
  description="${essays[$slug]#*|}"
  filepath="$BASE/essays/$slug.php"

  echo "Populating $filepath..."
  cat <<EOF > "$filepath"
<article>
  <h1>$title</h1>
  <p>$description</p>
</article>
EOF
done

echo "✅ All system and essay pages populated with default content."
