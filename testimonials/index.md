---
title: Patient testimonials
layout: page
testimonials:
    - text: >
        Nancy, this experience has made me more aware of myself and my place
        in the universe
      initials: S.M.
    - text: >
        The physical improvements after these sessions have been relief of
        chronic knee pain from an old injury, an increased peak flow and no
        exacerbations of asthma for the first time in 2 years. In general felt
        as though I had a whole body tune up as well as a lightening up of an
        often too serious mind.
      initials: C.M.
    - text: >
        I believe the acupuncture is helping me become stronger in all of the
        aspects of my life…
      initials: S.G.
    - text: >
        Nancy listens and takes the time to understand your needs. She is very
        compassionate, knowledgeable, and is always full of encouragement.
        Nancy has a passion for her work, and I look forward to my
        appointments. Because of Nancy, acupuncture has become a mainstay in
        my life.
      initials: D.L.
    - text: >
        Dear Nancy,

        I wanted to let you know, in written form, how much I have benefited from acupuncture and somatic experience.  I have told you many times after treatments how refreshed and relaxed I feel after acupuncture and somatic experience sessions with you.  This letter serves as written record; please feel free to use it as you wish.

        When I first came to you several years ago, I had a lot of stress in my life.  I had come a long way, but still more to go on my journey. . .

        One more thing I wish to note…I fully believe that acupuncture and somatic experience should be co-joined. . . I think the two are intertwined, and am thankful to have found someone who specializes in both, you!

        With your services, I have developed tremendous peace of mind, as well as strong inner powers of body awareness.  . . .  your training has served you well, and I am honored to be one of your patients.

        I look forward to continued treatments with you in the future for as long as it holds possible.

      initials: J.S.M.
---
{% for t in page.testimonials %}
<blockquote>
<p>{{ t.text|newline_to_br }}</p>
<small>{{ t.initials }}</small>
</blockquote>
{% endfor %}
