\version "2.22.00"

nFlI = \relative c' {
  \global
  % S. 4
  es1~\p | es~ | es~ | es4 r4 r2 | R1*5 |
  % S. 5
  r4 es'4\p g bes | c4. c8( bes4 as) |
  % S. 6
  \partCombineApart bes( es,) \partCombineAutomatic g( bes) | es( d) c2~ | c4 c( as c) | f( es) \partCombineApart d2~ | d4 \partCombineAutomatic b( c d) | es g f es |
  % S. 7
  d1~ | d4 e f g | c, f, a c | d4. d8 c4 bes | es1~ | es4 d c bes |
  % S. 8
  a bes c d | es( g) f2~ | f4 f, f'2~ | f4 es8( d c2) | bes4\f bes d f | g4.\sf g8 f4 es |
  % S. 9
  f bes, bes2~ | bes1~ | bes4 bes bes bes | e2\sf e | r4  bes bes bes | f'2\sf f |
  % S. 10
  r4 bes, bes bes | ges'2\sf ges | r4 bes, bes bes | bes2 as | R1*2 |
  % S. 11
  r4 f\f f f | bes4. bes8 bes4 bes | as2 r | R1 | r4 as as as | des4.\sf des8 des4 des |
  % S. 12
  c2 r | es1\sf | es\sf | ges2 f4 es | es1 | es2 es |
  % S. 13
  ges2 d | es ces | bes bes | as as | ges1 | ges2 ges |
  % S. 14
  << {f1\sf~ | f } {s2 s\dim | s2. s4\!} >> | R1*2 | r4 es\p( g bes) | c4. c8( bes4 as) |
  % S. 15
  bes es, es'2~ | es1~\cresc | es2 r\! | r4 es,\f g bes | c4. c8 bes4 a | es'( bes\dim) as( g) |
  % S. 16
  g2( f ) | es4\p es g\cresc bes | c4. c8 bes4 a | es'\f g f es | << d1 {s4 s2\dim s8 s\!} >> | es4 bes2 as4 | g2 f |
  % S. 17
  es1\p~ | es2. r4 | R1*3 | bes'1\p~ | bes2 bes | c\cresc d |
  % S. 18
  es d | c c | bes1\>~ | bes2.\! r4 | R1*4 |
  % S. 19
  bes1\f | g | bes | g | as2\p g | f g | as\cresc g |
  % S. 20
  f g | as g | f1 | es\f~ | es4 r r2 | R1*3 | r4 es\p( g bes) |
  % S. 21
  c4. c8( bes4  as) | bes es,  es'2~ | es1~ | es~ | es~ | es4 es, g bes | es2 es | es1\fermata \bar "|."
}

nFlII = \relative c' {
  \global
  % S. 4
  es1~\p | es~ | es~ | es4 r4 r2 | R1*5 |
  % S. 5
  r4 es'4\p g bes | as4. as8( g4 f) |
  % S. 6
  \partCombineApart g( es) \partCombineAutomatic g( bes) | es( d) c2~ | c4 c( as c) | f( es) \partCombineApart d2 | \partCombineAutomatic g,1~ | g2 c~ |
  % S. 7
  c bes | bes1~ | bes2 a2 | as1 | r4 bes a g | a d c bes |
  % S. 8
  a bes c d | es( g) f2~ | f4 f, f'2~ | f4 es8( d c2) | bes4\f bes2 d4 | es4.\sf es8 d4 c |
  % S. 9
  d bes bes2~ | bes1~ | bes4 bes bes bes | bes2\sf bes | r4  bes bes bes | bes2\sf bes |
  % S. 10
  r4 bes bes bes | bes2\sf bes | r4 ges ges ges | ges2 es | R1*2 |
  % S. 11
  r4 f\f f f | f4. f8 e4 e | f2 r | R1 | r4 f f f | f4.\sf f8 fes4 fes |
  % S. 12
  es2 r | c'1\sf | bes\sf | a | a | bes2 ces |
  % S. 13
  bes2 as | ges f~ | f es~ | es d | es( fes) | es es |
  % S. 14
  << {es1\sf~ | es } {s2 s\dim | s2. s4\!} >> | R1*2 | r4 es\p( g bes) | c4. c8( bes4 as) |
  % S. 15
  bes es, es'2~ | es1~\cresc | es2 r\! | r4 es,\f g bes | c4. c8 bes4 a | es'( bes\dim) as( g) |
  % S. 16
  g2( f ) | es4\p es g\cresc bes | c4. c8 bes4 a | es'\f bes as g | << {as4( c bes as)} {s4 s2\dim s8 s\!} >> | g4 bes2 as4 | g2 f |
  % S. 17
  es1\p~ | es2. r4 | R1*3 | bes'1\p~ | bes2 bes | c\cresc d |
  % S. 18
  es d | c c | bes1\>~ | bes2.\! r4 | R1*4 |
  % S. 19
  bes1\f | g | bes | g | as2\p g | f g | as\cresc g |
  % S. 20
  f g | as g | f1 | es\f~ | es4 r r2 | R1*3 | r4 es2\p( g4) |
  % S. 21
  as4. \partCombineApart as8( g4  as) \partCombineAutomatic | g es es2~ | es1~ | es~ | es~ | es4 es2 g4 | g2 g | g1\fermata \bar "|."
}

nObI = \relative c' {
  \global
  % S. 4
  R1*9 |
  % S. 5
  r4 es\p g bes | c4. c8( bes4 as) |
  % S. 6
  bes( es,) g( bes) | es( d) c2~ | c4 c( as c) | f( es) d2~ | d4 b( c d) | es g f es |
  % S. 7
  d1~ | d4 e f g | c, f, a c | d4. d8 c4 bes | es1~ | es4 d c bes |
  % S. 8
  a bes c d | es( g) f2~ | f4 f, f'2~ | f4 es8( d c2) | bes4\f bes d f | g4.\sf g8 f4 es |
  % S. 9
  f \once \partCombineApart bes, bes'2~ | bes1~ | bes4  bes, bes bes | e2\sf e | r4  bes bes bes | f'2\sf f |
  % S. 10
  r4 bes, bes bes | ges'2\sf ges | r4 bes, bes bes | bes2 as | R1*2 |
  % S. 11
  r4 f\f f f | bes4. bes8 bes4 bes | as2 r | R1 | r4 as as as | des4.\sf des8 des4 des |
  % S. 12
  c2 r | es1\sf | es\sf | ges2 f4 es | es1 | es2 es |
  % S. 13
  ges2 d | es ces | bes bes | as as | ges1 | ges2 ges |
  % S. 14
  << {f1\sf~ | f2 r } {s2 s\dim | s2 s2\!} >> r4 f( as ces  | d1) | R1*2 |
  % S. 15
  r4 es,\p( g) bes | c4.\cresc c8 bes4 as | bes2 es, | r4 es\f g bes | c4. c8 bes4 a |  \partCombineApart es'( bes'\dim as g) \partCombineAutomatic |
  % S. 16
  g2( f) | es4\p es g\cresc bes | c4. c8 bes4 a | bes\f g f es | << d1 {s4 s2\dim s8 s\!} >> | es4 bes2 as4 | g2 f |
  % S. 17
  es1\p~ | es2. r4 | R1*4 | r2 bes'\p | c\cresc d |
  % S. 18
  es d | c c | bes1\>~ | bes2.\! r4 | R1*4 |
  % S. 19
  bes1\f | g | bes | g | as2\p g | f g | as\cresc g |
  % S. 20
  f g | as g | f1 | es\f~ | es4 r r2 | R1*4 |
  % S. 21
  R1 | r4 es\p( g bes) | c4. c8( bes4 as) | bes2 es,~ | es2. es4 | g bes es2~ | es es | es1\fermata \bar "|." 
}

nObII = \relative c' {
  \global
  % S. 4
  R1*9 |
  % S. 5
  r4 es\p g bes | c4. c8( bes4 as) |
  % S. 6
  bes( es,) g( bes) | g2 g | as2. as4 | d, es f as | g1~ | g4 g c2~ |
  % S. 7
  c bes | bes1~ | bes2 a2 | as1 | r4 bes a g | a d c bes |
  % S. 8
  a bes c d | es( g) f2~ | f4 f,2. | g4 bes2( a4) | bes4\f bes2 d4 | es4.\sf es8 d4 c |
  % S. 9
  d bes bes2~ | bes1~ | bes4 bes bes bes | des2\sf des | r4 bes bes bes | des2\sf des |
  % S. 10
  r4 bes bes bes | bes2\sf bes | r4 ges ges ges | ges2 es | R1*2 |
  % S. 11
  r4 f\f f f | f4. f8 e4 e | f2 r | R1 | r4 f f f | f4.\sf f8 fes4 fes |
  % S. 12
  es2 r | c'1\sf | bes\sf | a | a | bes2 ces |
  % S. 13
  bes2 as | ges f~ | f es~ | es d | es( fes) | es es |
  % S. 14
  << {es1\sf~ | es2 r |} {s2 s\dim | s2 s2\!} >> r4 f( as ces  | d1) | R1*2 |
  % S. 15
  r4 es,2\p g4 | as2\cresc es | g es | r4 es\f g bes | c4. c8 bes4 a | es'(g\dim f es) |
  % S. 16
  es2( d) | es4\p es, g\cresc bes | c4. c8 bes4 a | bes2\f as4 g | as( c\dim bes as) | g bes2 as4 | g2 f |
  % S. 17
  es1\p~ | es2. r4 | R1*4 | r2 bes'\p | c\cresc d |
  % S. 18
  es d | c c | bes1\>~ | bes2.\! r4 | R1*4 |
  % S. 19
  bes1\f | g | bes | g | as2\p g | f g | as\cresc g |
  % S. 20
  f g | as g | f1 | es\f~ | es4 r r2 | R1*4 |
  % S. 21
  R1 | r4 es\p( g bes) | as4.\partCombineApart as8( g4 as) \partCombineAutomatic | g2 es~ | es2. es4 | g bes es2~ | es es | es1\fermata \bar "|." 
}

nKlarI = \transpose c bes \relative c' {
  \global_transpose
  \key f \major
  % S.4
  R1 | r4 f4\p( a c) | d4. d8( c4 bes) | \partCombineApart c4( f,) \partCombineAutomatic f'( e) | d( a8) a d4( c) |
  % S. 5
  bes( g) r2 | R1 | c1~ | c4( g a bes) | a c f2~ | f1~ |
  % S. 6
  f4 r \partCombineApart a,( c) | \partCombineAutomatic f( e) d2~ | d4 d( bes d) | g( f) e2~ | e4 cis( d e) | f a g f |
  % S. 7
  e1~ | e4 fis e d | d1 | g1 | f1~ | f4 e d c |
  % S. 8
  b c d e | f( a) g2~ | g4 g, g'2~ | g4 f8( e d2) | c4\f c e g | a4.\sf a8 g4 f |
  % S. 9
  g \once \partCombineApart c, e g | a4.\sf a8 bes!4 a | g  c, c c | c2\sf c | r4 c c c | g'2\sf g |
  % S. 10
  r4 c, c c | es2\sf es | r4 c c c | c2 bes | r4 es,4\f g bes | c4. as8 g4 f |
  % S. 11
  g2 g | g4. g8 a4 a | bes2 r4 g | c4. c8 bes4 a | bes2 g | bes4.\sf bes8 a!4 a |
  % S. 12
  bes2 r | as4. as8 g4 f | as1 | as'2 g4 f | f1 | f2 f |
  % S. 13
  as2 e | f des | c c | bes bes | as1 | as2 as |
  % S. 14
  d,4 g,( b d | f) g( b d) | << { f1\sf( | e2) r} {s4 s2.\dim | s2 s\!} >> | r4 f,\p( a c) | d4. d8( c4 bes) |
  % S. 15
  c4 f, f'2~ | f1\cresc~ | f2 r | f1\f  | f4. d8 c4 b | f' c\dim( bes a) |
  % S. 16
  c1 | f4\p f, a\cresc c | d4. d8 c4 b | c\f a' g f | << e1 {s4 s2\dim s8 s\!} >> | f4 c2 bes4 | a2 e |
  % S. 17
  f1\p~ | f2. r4 | R1*3 | c'1~\p | c2 c | d\cresc e |
  % S. 18
  f e | d d | c1\>~ | c2.\! r4 | R1*4 |
  % S. 19
  c1\f | a | c | a | bes2\p a | g a | bes\cresc a |
  % S. 20
  g a | bes a | g1 | f\f~ | f4 r r2 | R1*3 | r4 f4\p( a c) |
  % S. 21
  d4. d8( c4 bes) | c f,2.~ | f4 bes( c d) | c2 f~ | f4 a,( c f | a1)~ | a2 f | f1\fermata \bar "|."
}

nKlarII = \transpose c bes \relative c' {
  \global_transpose
  \key f \major
  % S.4
  R1 | r4 f4\p( a c) | bes4. bes8( a4 g) | \partCombineApart a4( f) \partCombineAutomatic f'( e) | d( a8) a d4( c) |
  % S. 5
  bes( g) r2 | R1 | e1~ | e2 f4 e | f1~ | f4 bes( a g) |
  % S. 6
  a2 \partCombineApart a4( c) | \partCombineAutomatic a2 a | bes2. bes4 | e, f g bes | a1~ | a4 a d2~ |
  % S. 7
  d c | c1~ | c2 b2 | bes1 | r4 c b a | b e d c |
  % S. 8
  b c d e | f( a) g2~ | g4 g,2. | a4 c2( b4) | c4\f c2 e4 | f4.\sf f8 e4 d |
  % S. 9
  e \once \partCombineApart c c e | f4.\sf f8 g4 f | e c c c | fis,2\sf fis | r4 c' c c | c2\sf c |
  % S. 10
  r4 c c c | as2\sf as | r4 as as as | as2 f | r4
  es\f g bes | c4. as8 g4 f |
  % S. 11
  g2 g | g4. g8 a4 a | bes2 r4 g | c4. c8 bes4 a | bes2 g | g4.\sf g8 ges4 ges |
  % S. 12
  f2 r | as4. as8 g4 f | as1 | b | b  | c2 des |
  % S. 13
  c2 bes | as g~ | g f~ | f e | f( ges) | f f |
  % S. 14
  d4 g,( b d | f) g( b d) | << { des1\sf( | c2) r} {s4 s2.\dim | s2 s\!} >> | r4 f,\p( a c) | d4. d8( c4 bes) |
  % S. 15
  c4 f, f'2~ | f1\cresc~ | f2 r | b,2\f c | d4. d8 c4 b | f' a,\dim( g f) |
  % S. 16
  a2( bes) | f4\p f a\cresc c | d4. d8 c4 b | c2\f bes!4 a | bes( d\dim c bes) | a c2 bes4 | a2 e |
  % S. 17
  f1\p~ | f2. r4 | R1*3 | e1~\p | e2 c' | d\cresc e |
  % S. 18
  f e | d d | c1\>~ | c2.\! r4 | R1*4 |
  % S. 19
  c1\f | a | c | a | bes2\p a | g a | bes\cresc a |
  % S. 20
  g a | bes a | g1 | f\f~ | f4 r r2 | R1*3 | r4 f2\p( a4) |
  % S. 21
  bes4. \partCombineApart bes8( a4 bes) \partCombineAutomatic | a f2.~ | f4 \partCombineApart bes( a bes) \partCombineAutomatic | a2 c~ | c4 f,( a c) | c1~ | c2 c | c1\fermata \bar "|."
}

nFagI = \relative c' {
  \global
  % S.4
  bes1~\p | bes | c2( bes4 as) | bes1 | c |
  % S. 5
  c | c | r4 bes, d f | as4. as8 g4 f | g bes2. | c4 as( bes c) |
  % S. 6
  bes2 es4( d) | c g c bes | as c f es | d as d c | b d( c b) | c2 f~ |
  % S. 7
  f4 bes, d f | g4. g8 f4 e | f1 | r4 bes,, d f | g4. g8 f4 es | c' d g f |
  % S. 8
  es4 d a bes | c d es2 | d4 es f d | bes( c8 d) es2 | d4\f r r2 | R1 |
  % S. 9
  r4 \once \partCombineApart bes d f | g4.\sf g8 f4 \once \partCombineApart es | f bes, bes bes | e2\sf e | r4 bes bes bes | des2\sf des |
  % S. 10
  r4 bes bes bes | ges'2\sf ges | r4 des des des | des2 c | r4 des,\f f as | bes4. bes8 as4 ges |
  % S. 11
  as2 as | des4. des8 des4 des | c f, as c | des4.\sf des8 c4 bes | c2 c | f,4.\sf f8 bes4 bes |
  % S. 12
  c4 as c es | ges4. ges8 f4 es | ges1 | es2 f4 ges | ges1 | ges2 f |
  % S. 13
  ges2 f | es d~ | d bes | ces bes | ges1 | ges2 ges |
  % S. 14
  f4 f,( a c | es) f( a c) | << { es1\sf } {s4 s2 \dim s4\!} >> | d4 bes,( d f) | bes1\p | es2( d4 c) |
  % S. 15
  bes1 | as2\cresc bes4 c | bes1 | c2\f g' | es1~ | es4 bes\dim d, es |
  % S. 16
  bes'1 | es,4\p es g\cresc bes | c4. c8 f2 | g2\f d4 es | f( as\dim g f) | es d2 c4 | es2 bes |
  % S. 17
  bes1\p~ | bes2. r4 | R1*3 | f'1\p~ | f2 d | c\cresc f |
  % S. 18
  es f | bes, as | as1\>~ | as4\! r4 r2 | R1*4 |
  % S. 19
  f1\f | g2 es'~ | es d | es1 | as,2\p bes | d es | as,\cresc bes |
  % S. 20
  as2 g | as bes | c b | << c1\f~ {s2\<s4.\>s8\!} >> | c4 r4 r2 | R1*3 | bes1\p |
  % S. 21
  c2( bes4 c) | bes es,( g bes) | c4. c8( bes4 c) | bes2. es,4 | g bes es2~ | es1~ | es2 g | g1\fermata \bar "|."
}

nFagII = \relative c' {
  \global
  % S.4
  g1~\p | g | as2( g4 f) | g1 | g |
  % S. 5
  as | a | r4 bes, d f | as4. as8 g4 f | g1 | as4 es( g as) |
  % S. 6
  g2 es'4( d) | c g c bes | as c f es | d as d c | b f( es d) | c4 bes! a2 |
  % S. 7
  bes4 bes' d f | g4. g8 f4 e | f1 | r4 bes,, d f | g4. g8 f4 es | f2 es'4 d |
  % S. 8
  c4 bes es, d | c bes a2 | bes4 c d2 | es f | bes4\f r4 r2 | R1 |
  % S. 9
  r4 \once \partCombineApart bes bes d | es4.\sf es8 d4 \once \partCombineApart es | d  bes bes bes | des2\sf des | r4  bes bes bes | f2\sf f |
  % S. 10
  r4 bes bes bes | es,2\sf es | r4 es es es | as1 | r4 des,\f f as | bes4. bes8 as4 ges |
  % S. 11
  f2 f | bes4. bes8 bes4 bes | as f as c | des4.\sf des8 c4 bes | as2 as | des,4.\sf des8 des4 des |
  % S. 12
  as'4 as c es | ges4. ges8 f4 es | ges1 | c, | ces | bes2 as |
  % S. 13
  es'2 ces | bes as | ges ges | f bes, | es( fes) | es es |
  % S. 14
  a,4 f( a c | es) f( a c) | << { ces1\sf } { s4 s2 \dim s4\!} >> | bes4 bes,( d f) | g,1\p | as |
  % S. 15
  g'1 | es\cresc | g | c2\f bes | a2 bes4 c | bes bes,\dim d es |
  % S. 16
  bes1 | es4\p es g\cresc bes | c4. c8 f2 | g2\f d4 es | << bes1 {s4 s2\dim s8 s\!} >> | c4 g as2 | bes as |
  % S. 17
  g1\p~ | g2. r4 | R1*3 | bes1\p~ | bes2 f | as\cresc as |
  % S. 18
  g f | es f | f1\>~ | f4\! r4 r2 | R1*4 |
  % S. 19
  d1\f | es | f | es | c2\p bes | f' es | c\cresc bes |
  % S. 20
  d2 es | f g | as g | <<c,1\f~ {s2\<s4.\>s8\!} >> | c4 r4 r2 | R1*3 | g'1\p |
  % S. 21
  as2( g4 as) | g es( g bes) | as4. as8( g4 as) | g2. es4 | g bes es2~ | es1~ | es2 es | es1\fermata \bar "|." 
}