\version "2.24.4"

tempusImperfectum = {
  \time 4/2
  \set Timing.timeSignatureFraction = #'(4 . 4)
}

noTimeSignature = { \once \omit Staff.TimeSignature }

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key d \dorian
  \tempusImperfectum
  \autoBeamOff
}

nTenorI = \relative c' {
  \global
  a1 f | r2 r4 a a a8 a a2~ | a4 a bes1 a2 | g2. f4 f c' c c8 c |
  c4 c d1 c2 | b2. b4 a2 r4 e | f8.([ g16] a4) r2 r4 a e2 | d r4 a' bes8.([ c16] d4) r4 fis, |
  
  g1 a4 r8 a a4 a~ | a8 g g f f4. e8 e4. e8 e4 e | f8.([ g16] a4) r a bes8.([ c16 d8]) d, e8.([ f16] g4) |
  r4 bes e,2 d1 | r4 d'8 d d4 e c2 r8 c c c | c([ d c d] e4) a, d1 | c r |
  R\breve | r4 c8 c c4 d b2 r8 b b b | b8.([ c16 b8. c16] d4) e b1 | a2 a4 bes g2 g4 a |
  f1 r8 d d d f([ g f g] | a[ b a b] c2) r8 c, c c e([ f e f] | g[ a g a] b[ c b c] d2) r4 b | \noTimeSignature \time 6/2 e1 d\breve\fermata \bar "|."
}

nTenorII = \relative c' {
  \global
  R\breve | a1 f2 r4 f | f f8 f f4 f g2 e4 f~( | f e8[ d]) e2 f r4 a |
  a a8 a a4 a b2 gis4 a~( | a gis8[ \ficta fis8]) gis2 a4 e \ficta f8.([ g!16] a4) | r2 r4 f! cis( d2 cis4) | d2 r4 fis g8.([ a16] bes4) r2 |
  
  r4 d, e2 fis4 r8 f! f4 f~ | f8 e e d d4. cis8 cis4. cis8 cis2 | r2 r4 fis g8.([ a16] bes4) r bes |
  e,8.([ f16] d2 cis4) d1 | R\breve*2 | r4 g8 g g4 a f2 r8 f f f |
  f([ g f g] a4) d, g1 | f4 a8 a a4 b gis2 r8 gis gis gis | gis([ a gis a] b4) c gis( a2 gis4) | a2 fis4 g e2 e4 f! |
  d2 r8 d d d f([ g f g] a[ b a b] | c2) r8 c, c c e([ f e f] g[ a g a ] | b[ c b c] d2) r4 b e8.([ f16] d4~ | \noTimeSignature \time 6/2 d cis8[ b] cis2) d\breve\fermata \bar "|."
}

nBC = \relative c {
  \global
  d\breve | cis1 d~ | d2 d c1 | c f,2. f'4 |
  f2 f e1 | e a,~ | a2 g a1 | d2 d g, d' |
  
  g,1 d'4. f,8 f2 | g1 a~ | a2 d g,1~ |
  g2 a d1 | d2. a4 a1 | a2 a g4 f g2 | c2. f,4 bes2 bes~ |
  bes f4 bes c bes c2 | f,4 f'8[ f] f4 d e1~ | e2 b4 a e' d e2 | a, d4 g, c2 c4 f, |
  bes1 bes2 f | f a c1 | g b2 a4 g | \noTimeSignature \time 6/2 a1 d\breve\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve*2 | <_>2 <6[-]> <7[-]> <6 3>4 <6 4> | <4>2 <3> <_>1 |
  <_>2 <6> <_> <_+>4 <4> | <4>2 <_+> <_+>1 | <_>2 <_-> <_+>4 <4>2 <_+>4 | <_+>1 <_->2 <_+> |
  
  <_> <6> <_+>1 | <_-> <_+> | <_>2 <_+> <_-> <6>4 <5> |
  <6> <5> <4> <_+> <_>1 | <_>\breve*4 |
  <_>2. <6>4 <_+>1 | <_+> <_+>2 <4>4 <_+> | <_>2 <_+>4 <_-> <_>1 |
  <_>\breve*2 | <_>1. <_+>2 | <4> <_+> <_>\breve \bar "|."
}
