\version "2.22.00"

nHrnI = \transpose c' es \relative c' {
  \global_transpose
  % S.4
  c1~\p | \repeat unfold 3 { c~ | } c |
  % S.5
  r2 f'4( e) | d r d( c) | b g2.~ | g1 | c, | c'~ |
  % S.6
  c2 g | e1 | R1*2 | e'1~ | e4 r d2~ |
  % S.7
  d4 g, r d' | e4. e8 d4 cis | d1~ | d4 d d d | g,2 r | d'1~ |
  % S.8
  d | R1*3 | \partCombineApart g,1~\f | g~ |
  % S.9
  g4 g b d | e4.\sf e8 d4 e | d4 g, g g | g2\sf g | r4 g g g | d'2\sf d |
  % S.10
  r4 g, g g | bes2\sf bes | \partCombineAutomatic r4 c, c c | c'1 | bes~ | bes4 bes bes bes |
  % S.11
  bes2 bes | bes4. bes8 bes4 bes | \partCombineApart d2 r | R1 | r4 d d d | f2 e |
  % S.12
  c2 r4 c | \partCombineAutomatic c2. r4 | g1 | c2. r4 | c2. c4 | c2 c |
  % S.13
  \repeat unfold 8 {g2} | g1 | c2 g |
  % S.14
  <<c1~{s2 s\dim}>> c1~ | c\! | R1 | \partCombineApart c,\p~ | c |
  % S.15
  c'1~ | \override DynamicTextSpanner.style = #'none c1~\cresc \partCombineAutomatic |  c4 \once \partCombineUnisono c,\f e g | c2 g | d'1 | e4( g\dim) f( e) |
  % S.16
  e2( d) | \partCombineApart c4\p c,\< e g\! | d'1 | g,\f~ | <<g {s4 s2\dim s4\!}>> | c1 | g |
  % S.17
  \partCombineAutomatic c,\p~ | c2. r4 | R1*3 | g'1\p~ | g2 g | c\cresc g |
  % S.18
  g g | e' d | d1\>~ | d4\! r4 r2 | R1*4 |
  % S.19
  g,1\f~ | g | g\sf~ | g | c2\p c | \once \partCombineApart g c | c\cresc c |
  % S.20
  g g | R1*2 | <<e1\f~ {s2\<s4.\>s8\!}>> | e4 r4 r2 | R1*3 | c'1\p~ |
  % S.21
  c1 | c,4 c( e g) | c1~ | c4 c, e g | c1 | e~ | e2 e | e1\fermata \bar "|."
}

nHrnII = \transpose c' es \relative c' {
  \global_transpose
  % S.4
  c1~\p | \repeat unfold 3 { c~ | } c |
  % S.5
  R1*3 | g1 | c~ | c~ |
  % S.6
  c2 e | c1 | R1*2 | e1~ | e4 r d'2~ |
  % S.7
  d4 g, r d' | e4. e8 d4 cis | d1~ | d4 d d d | g,2 r | d'1~ |
  % S.8
  d | R1*3 | \partCombineApart g,,1~\f | g~ |
  % S.9
  g4 g' b g | c4.\sf c8 g4 c | g g g g | e2\sf e | r4 g g g | g2\sf g |
  % S.10
  r4 g g g | g2\sf g | \partCombineAutomatic r4 c, c c | c'1 | bes~ | bes4 bes bes bes |
  % S.11
  bes2 bes | g4. g8 g4 g | \partCombineApart d'2 r | R1 | r4 d d d | d2 g, |
  % S.12
  c2 r4 c | \partCombineAutomatic c,2.\sf r4 | g1 | c2. r4 | c2. c4 | c2 c |
  % S.13
  \repeat unfold 8 {g2} | g1 | c2 g |
  % S.14
  <<c1~{s2 s\dim}>> c1~ | c\! | R1 | \partCombineApart c\p~ | c~ |
  % S.15
  c1~ | \override DynamicTextSpanner.style = #'none c1~\cresc \partCombineAutomatic |  c4  \once \partCombineUnisono c\f e g | c2 g | c1 | c4( e\dim) d( c) |
  % S.16
  c2( g) | \partCombineApart c,4\p c\< e g\! | c1 | g,\f~ | <<g{s4 s2\dim s4\!}>> | c1 | g |
  % S.17
  \partCombineAutomatic c1\p~ | c2. r4 | R1*3 | g1\p~ | g2 g | c'\cresc g |
  % S.18
  g g | e' d | g,1~\> | g4\! r4 r2 | R1*4 |
  % S.19
  g,1\f~ | g | g\sf~ | g | c2\p c | \once \partCombineApart g' c, | c\cresc c |
  % S.20
  g' g | R1*2 | <<c,1\f~ {s2\<s4.\>s8\!}>> | c4 r4 r2 | R1*3 | c1\p~ |
  % S.21
  c1~ | c4 c( e g) | c1~ | c4 c, e g | c1~ | c~ | c2 c | c1\fermata \bar "|."
}

nPosA = \relative c' {
  \global
  % S.4-16
  R1*78 |
  % S.17
  R1*6 | r2 f2\p | as\cresc f |
  % S.18
  es f | g f | f1~\> | f4\! r4 r2 | R1*4 |
  % S.19
  bes1\f | g | bes | g | as2\p g | f g | \override DynamicTextSpanner.style = #'none as\cresc g |
  % S.20
  f2 g | as g | f1 | es1\f | es4 r4 r2 | R1*3 | bes1\p |
  % S.21
  R1*3 | bes1\p\<~ | bes\>~ | bes4\! r4 r2 | R1 | R1\fermata \bar "|."
}

nPosT = \relative c' {
  \global
  % S.4-16
  R1*78 |
  % S.17
  R1*6 | r2 d2\p | c\cresc bes |
  % S.18
  bes bes | bes as | as1~\> | as4\! r4 r2 | R1*4 |
  % S.19
  f'1\f | es | es2 d | es1 | as,2\p bes | d es | \override DynamicTextSpanner.style = #'none as,\cresc bes |
  % S.20
  bes2 es | d es | c\( b\) | c1\f~ | c4 r4 r2 | R1*3 | g1\p |
  % S.21
  R1*3 | g1\p\<~ | g\>~ | g4\! r4 r2 | R1 | R1\fermata \bar "|."
}

nPosB = \relative c' {
  \global
  % S.4-16
  R1*78 |
  % S.17
  R1*6 | r2 bes2\p | as\cresc as |
  % S.18
  g f | es f | d1~\> | d4\! r4 r2 | R1*4 |
  % S.19
  d1\f | es | bes | es, | c'2\p bes | as g | c\cresc bes |
  % S.20
  d2 es | f g | as g | c,1\f~ | c4 r4 r2 | R1*3 | es1\p |
  % S.21
  R1*3 | es,1\p\<~ | es\>~ | es4\! r4 r2 | R1 | R1\fermata \bar "|."
}