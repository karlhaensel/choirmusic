\version "2.22.00"

nHrnI = \transpose c' es \relative c' {
  \global_transpose
  c1~\p | \repeat unfold 3 { c~ | } c |
  r2 f'4( e) | d r d( c) | b g2.~ | g1 | c, | c'~ |
  c2 g | e1 | R1*2 | e'1~ | e4 r d2~ |
  d4 g, r d' | e4. e8 d4 cis | d1~ | d4 d d d | g,2 r | d'1~ |
  d | R1*3 | \partCombineApart g,1~\f | g~ |
  g4 g b d | e4.\sf e8 d4 e | d4 g, g g | g2\sf g | r4 g g g | d'2\sf d |
  r4 g, g g | bes2\sf bes | \partCombineAutomatic r4 c, c c | c'1 | bes~ | bes4 bes bes bes |
  bes2 bes | bes4. bes8 bes4 bes | \partCombineApart d2 r | R1 | r4 d d d | f2 e |
  c2 r4 c | \partCombineAutomatic c2. r4 | g1 | c2. r4 | c2. c4 | c2 c |
  \repeat unfold 8 {g2} | g1 | c2 g |
  <<c1~{s2 s\dim}>> c1~ | c\! | R1 | \partCombineApart c,\p~ | c |
  c'1~ | \override DynamicTextSpanner.style = #'none c1~\cresc \partCombineAutomatic |  c4 \once \partCombineUnisono c,\f e g | c2 g | d'1 | e4( g\dim) f( e) |
  e2( d) | \partCombineApart c4\p c,\< e g\! | d'1 | g,\f~ | <<g {s4 s2\dim s4\!}>> | c1 | g |
  \partCombineAutomatic c,\p~ | c2. r4 | R1*3 | g'1\p~ | g2 g | c\cresc g |
  g g | e' d | d1\>~ | d4\! r4 r2 | R1*4 |
  g,1\f~ | g | g\sf~ | g | c2\p c | \once \partCombineApart g c | c\cresc c |
  g g | R1*2 | <<e1\f~ {s2\<s4.\>s8\!}>> | e4 r4 r2 | R1*3 | c'1\p~ |
  c1 | c,4 c( e g) | c1~ | c4 c, e g | c1 | e~ | e2 e | e1\fermata |
}

nHrnII = \transpose c' es \relative c' {
  \global_transpose
  c1~\p | \repeat unfold 3 { c~ | } c |
  R1*3 | g1 | c~ | c~ |
  c2 e | c1 | R1*2 | e1~ | e4 r d'2~ |
  d4 g, r d' | e4. e8 d4 cis | d1~ | d4 d d d | g,2 r | d'1~ |
  d | R1*3 | \partCombineApart g,,1~\f | g~ |
  g4 g' b g | c4.\sf c8 g4 c | g g g g | e2\sf e | r4 g g g | g2\sf g |
  r4 g g g | g2\sf g | \partCombineAutomatic r4 c, c c | c'1 | bes~ | bes4 bes bes bes |
  bes2 bes | g4. g8 g4 g | \partCombineApart d'2 r | R1 | r4 d d d | d2 g, |
  c2 r4 c | \partCombineAutomatic c,2.\sf r4 | g1 | c2. r4 | c2. c4 | c2 c |
  \repeat unfold 8 {g2} | g1 | c2 g |
  <<c1~{s2 s\dim}>> c1~ | c\! | R1 | \partCombineApart c\p~ | c~ |
  c1~ | \override DynamicTextSpanner.style = #'none c1~\cresc \partCombineAutomatic |  c4  \once \partCombineUnisono c\f e g | c2 g | c1 | c4( e\dim) d( c) |
  c2( g) | \partCombineApart c,4\p c\< e g\! | c1 | g,\f~ | <<g{s4 s2\dim s4\!}>> | c1 | g |
  \partCombineAutomatic c1\p~ | c2. r4 | R1*3 | g1\p~ | g2 g | c'\cresc g |
  g g | e' d | g,1~\> | g4\! r4 r2 | R1*4 |
  g,1\f~ | g | g\sf~ | g | c2\p c | \once \partCombineApart g' c, | c\cresc c |
  g' g | R1*2 | <<c,1\f~ {s2\<s4.\>s8\!}>> | c4 r4 r2 | R1*3 | c1\p~ |
  c1~ | c4 c( e g) | c1~ | c4 c, e g | c1~ | c~ | c2 c | c1\fermata |
}