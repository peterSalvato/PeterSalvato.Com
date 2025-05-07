#!/bin/bash

ESSAYS_PAGE="./pages/essays.php"
SYSTEMS_PAGE="./pages/systems.php"

# Essay index content
echo "Populating $ESSAYS_PAGE..."
cat <<EOF > "$ESSAYS_PAGE"
<article>
  <h1>Essays</h1>
  <p>Brief writings and technical reflections on semantic tooling, UX systems, and remote cognitive infrastructure.</p>
  <ul>
    <li><a href="/essays/cognitive-durability.php"><strong>Cognitive Durability</strong> – On legibility, entropy, and design systems built to last.</a></li>
    <li><a href="/essays/semantic-traceability.php"><strong>Semantic Traceability</strong> – How Savepoints enable knowledge state recovery and recursive authorship.</a></li>
    <li><a href="/essays/remote-systems-thinking.php"><strong>Remote Systems Thinking</strong> – What async tool design teaches us about clarity and autonomy at scale.</a></li>
  </ul>
</article>
EOF

# System index content
echo "Populating $SYSTEMS_PAGE..."
cat <<EOF > "$SYSTEMS_PAGE"
<article>
  <h1>Systems</h1>
  <p>Tools and frameworks I've built to manage complexity, scale cognition, and structure authored information across platforms.</p>
  <ul>
    <li><a href="/systems/savepoint-protocol.php"><strong>Savepoint Protocol</strong> – A semantic documentation system for capturing authored decisions with symbolic metadata.</a></li>
    <li><a href="/systems/php-site-validator.php"><strong>PHP Site Validator</strong> – A ruleset-driven publishing system with GPT validation for structural and semantic accuracy.</a></li>
    <li><a href="/systems/order-of-aetherwright.php"><strong>The Order of the Ætherwright</strong> – A symbolic schema for cognitive metadata, used across systems and publishing layers.</a></li>
    <li><a href="/systems/toolkit.php"><strong>Component Toolkit</strong> – A future-facing UI token and storybook system for modular front-end reuse.</a></li>
  </ul>
</article>
EOF

echo "✅ Essays and systems index pages populated with navigation content."
