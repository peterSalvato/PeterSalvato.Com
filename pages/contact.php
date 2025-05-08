<?php
$page_meta = [
  "title" => "Contact",
  "summary" => "TODO: Add summary for Contact.",
  "type" => "page"
];
?>
<article>
  <h1>Get in Touch</h1>
  <p>I'm currently open to Staff+ roles in UX systems, documentation infrastructure, or platform design.</p>

  <!-- Contact Page -->
  <div class="contact-page">

    <!-- Header -->
    <header class="contact-header">
      <h1>Contact</h1>
      <p class="tagline">Open to thoughtful collaborations, consulting, or conversation. Get in touch below.</p>
    </header>

    <!-- Contact Form -->
    <section class="contact-form">
      <form action="mailto:your@email.com" method="POST" enctype="text/plain">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message</label>
        <textarea id="message" name="message" rows="6" required></textarea>

        <button type="submit">Send Message</button>
      </form>
    </section>

    <!-- External Links -->
    <section class="external-links">
      <h2>Elsewhere</h2>
      <ul>
        <li><a href="https://github.com/peterSalvato" target="_blank">GitHub</a></li>
        <li><a href="https://codepen.io/yourusername" target="_blank">CodePen</a></li>
        <li><a href="https://www.linkedin.com/in/yourprofile" target="_blank">LinkedIn</a></li>
        <li><a href="mailto:your@email.com">Email</a></li>
      </ul>
    </section>

  </div>


</article>
