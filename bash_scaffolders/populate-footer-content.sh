#!/bin/bash

PAGES_DIR="./pages"

declare -A contents

contents[glossary]='<article>
  <h1>Glossary</h1>
  <dl>
    <dt>Savepoint</dt>
    <dd>A structured semantic checkpoint used to capture authored state in recursive systems.</dd>
    <dt>Validator</dt>
    <dd>A syntax- and logic-based checker that ensures authored content follows defined structural and semantic rules.</dd>
    <dt>Codex</dt>
    <dd>A symbolic representation system used to encode project lineage, domain focus, and authorship status.</dd>
    <dt>Durability</dt>
    <dd>The ability for knowledge systems to remain legible, useful, and contextual over time.</dd>
  </dl>
</article>'

contents[sitemap]='<article>
  <h1>Sitemap</h1>
  <ul>
    <li><a href="/">Home</a></li>
    <li><a href="/systems/">Systems</a></li>
    <li><a href="/resume/">Résumé</a></li>
    <li><a href="/essays/">Essays</a></li>
    <li><a href="/about/">About</a></li>
    <li><a href="/contact/">Contact</a></li>
  </ul>
</article>'

contents[colophon]='<article>
  <h1>Colophon</h1>
  <p>This site was hand-authored using PHP, semantic HTML, and a minimalist CSS scaffold. No CMS, no framework, no JavaScript dependencies.</p>
  <ul>
    <li>Fonts: IBM Plex Mono, system UI stack</li>
    <li>Stack: PHP + flat files + GitHub Codespaces</li>
    <li>Graphics: Designed in Figma + Affinity Designer</li>
    <li>Deployment: Manual or static host preview</li>
  </ul>
</article>'

contents[rss]='<article>
  <h1>RSS Feed</h1>
  <p>A machine-readable feed for essays and system updates is coming soon. For now, subscribe via email or check back periodically.</p>
</article>'

contents[license]='<article>
  <h1>License</h1>
  <p>All content ©2025 Peter Salvato unless otherwise noted. Systems documentation and essays are shared for reference only and may not be reused without explicit permission.</p>
</article>'

contents[search]='<article>
  <h1>Search</h1>
  <p>Search is not currently implemented. Browse via Systems and Essays sections or use CTRL+F. Semantic search is in development via the Validator framework.</p>
</article>'

# Generate files
for name in "${!contents[@]}"; do
  file_path="$PAGES_DIR/$name.php"
  echo "Populating $file_path..."
  echo "${contents[$name]}" > "$file_path"
done

echo "✅ Footer link content populated with real markup."
