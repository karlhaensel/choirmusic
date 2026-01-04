\version "2.24.4"

tempusImperfectum = {
  \time 4/2
  \set Timing.timeSignatureFraction = #'(4 . 4)
}

noTimeSignature = { \once \omit Staff.TimeSignature }

global = {
  \key g \mixolydian
  \tempusImperfectum
  \autoBeamOff
}

nSopran = \relative c'' {
  \global
  d2. d4 b2 e | c a d b | a1 r | R\breve | r2 d, e4 fis g a |
  b2 c4 d a2 a | g1 r | a2. a4 f2 bes | a d2. d4 b2 | e c a d~ |
  d g, fis1 | r2 g2. g4 e2 | a f d g~ | g fis g1 | R\breve |
  r2 d e4 fis g a | b2 d4 e a,2( g~ | g) fis g1 | R\breve | r1 r4 e' c a |
  d4. d8 c2 r b | c d gis, r4 e' | c b a8([ b c a] b[ c] d2) cis4 | d1 r |
  
  R\breve | r2 d2 a4 a8 a a4 b | c2.( b8[ a] g2) a~ | a g a1 |
  cis4 cis8 cis d4 d8 a b4 c!2 b4 | \tuplet 3/2 {c4 g g } \tuplet 3/2 {c4. b8 c4} \tuplet 3/2 {a2 a4} \tuplet 3/2 {d4. c8 d4} | b4 b c1 b2 |
  a1 r | r r2 g4 g8 g | a4 a fis fis8 fis g4 g8 d e4 g |
  e8.([ f16] d2 cis4) \tuplet  3/2 {d4 d d} \tuplet 3/2 {a'4. g8 a4} | \tuplet 3/2 {fis2 fis4} \tuplet 3/2 {g4. fis8 g4} \tuplet 3/2 {d4 g g} \tuplet 3/2 {d'4. c8 d4} |
  b2 g fis8([ g16 a g8 a16 b] fis16[ d e fis] g[ a b c] | \noTimeSignature \time 8/2 d2~ d8[ c16 b] a[ g fis e] fis4 g2) fis4 g\breve \bar "|."
}

nTenor = \relative c' {
  \global
  R\breve*2 | d2. d4 b2 e | c a d b | a1 r |
  r r2 fis | g4 a b c d2 e4 f | e2 e d1 | r g,2. g4 | e2 a f d |
  g e d d'~ | d4 d b2 e c | a d b1 | a2 r4 d, e fis g a | b2 c4 d a2 a |
  g1 r2 c | g4 a b c d2 e4 e | c2 d g,1 | r2 b c d | gis, r4 e' c b a8([ b] c4~ |
  c) b c2 r e, | a f e1 | r4 e' c a d2 e | d r4 d a4 a8 a a4 b |
  
  c2 b a1 | g r2 d' | a4 a8 a a4 b c2 f, | bes~( bes8[ c16 d g,8 a16 bes]) a1 |
  R\breve*2 | r1 \tuplet 3/2 {r4 a a} \tuplet 3/2 {e'4. d8 e4} |
  \tuplet 3/2 {cis2 a4} \tuplet 3/2 {d4. c!8 d4} b4 d e2~ | e d c1 | cis4 cis8 cis d4 d b4 b8 b c!4 c8 g |
  a4 bes a2 d, \tuplet 3/2 {r4 a' a} | \tuplet 3/2 {d4. c8 d4} b2 g fis8([ g16 a g8 fis] |
  g8[ a g a] b[ c b c] d[ a b g] d'2~ | \noTimeSignature \time 8/2 d8[ c16 b] a[ g fis e] d2. e16[ d e c] d4.) d8 g\breve \bar "|."
}

nBC = \relative c' {
  \global
  g1 g2 e | f2. e4 d2 g~ | g fis g e | a4 g f e d2 g, | d'1 c2 b4 a |
  g2 a4 b c2 d | e1 d | a' d,2 g, | d'1 g2. g4 | e2 a f d |
  g e d1 | g2. g4 e2 a | f d g g, | d'1 c2 b4 a g1 c2 d |
  g, g c1 | g4 a b c d2 e4 e | c2 d g,1 | e' a2 f | e2. e4 a gis a f |
  g2 c, e1 | a2 f e2. e4 | a gis a f g! bes a2 | d,1 d2. b4 |
  
  a2 g d'1 | g, d' | a'2 a4 b c2 f, | bes1 a |
  a2 fis g4 c, g'2 | c, c f d | g e d e |
  a fis g c | f, g c,1 | a'2 d, g c4 c8[ g] |
  a4 bes a2 d, a | d b g' fis |
  g e d1~ | \noTimeSignature \time 8/2 d2 d2. e4 d2 g,\breve \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve*2 | <2>\breve | <_> | <_+>1 <_>2 <6> |
  <_>1. <_+>2 | <_>\breve | <_+>1. <_->2 | <_+>\breve | <_>
  <_>1 <_+> | <_>\breve*2 | <4>2 <_+> <_>1 | <_> <_>2 <_+> |
  <_>\breve*2 | <_>2 <_+> <_>1 | <_+> <_>2 <6> | <_+>\breve |
  <_> | <_>2 <6> <_+>1 | <_>  <_>2 <4>4 <_+> | <_>\breve |
  
  <_>1 <4>2 <_+> | <_>\breve*2 | <7>2 <6> <_+>1 |
  <_>1. <4>4 <3> | <_>\breve | <_>2 <6> <_> <_+> |
  <_+> <_>1. | <7>\breve | <_+>2 <_+> <_>1 |
  <_+>4 <_> <4> <_+> <_+>2 <_+> | <_+> <_>1. |
  <_>1 <_+> | \noTimeSignature \time 8/2 <_>2 <_+>1 <4>4 <_+> <_>\breve \bar "|."
}
