\version "2.24.4"

global = {
  \key g \dorian
  \time 4/2
  \autoBeamOff
}

nTenor = \relative c' {
  \global
  r2 bes bes1 | b! r2 c | c2. c4 cis1 | r2 d es4. es8 d4 c | d2. c4 c1 | bes r4 a c2~ |
  c4 f,8 f f2 as4 as8 g g4 g8 f | g4 g r g bes2 g8 g g fis | a4 a r a c4. c8 c b! b a |
  b!2 b4 r8 b b c c2 d4 | d2. d4 c2 r4 a8 bes | c c c d d4. e8 e1 |
  \time 3/1 d\breve f1 | c c r | r c d | es1. f2 d c | c\breve g'1 | d d r | r d e f1. g2 e d |
  
  \time 4/2 d2 a4 a8 bes c4 d g,2~ | g fis r a4 bes | c4. d8 es4 bes8 bes bes4 d c2 | c r r r4 f |
  es4. d8 d4. c8 c2 r | r4 es d4. c8 c4. bes8 bes2 | r1 d4 c8 bes c2~ | c bes2 a1 |
  g\fermata r4 a2 g4 | a4 a r d, a'4. a8 a4 a~ | a g8 g a2 a bes8 a g f | g4. f8 f2 r4 f c' c~ |
  c bes c4. c8 c2 es8 d c bes | c4. bes8 bes2 r4 es,8([ f g16 f g a] bes4) | r bes8([ c d16 c d e] f2) es8 d c bes a bes |
  c2 c r4 f,8([ g a16 g a bes] c4) | r c8([ d es16 d es f] g2) f8 es d c bes c | d2. cis8. cis16 d2 r4 d |
  b!4 b8 b b b b b c2 r4 c | bes2 a4 a a2( g) | a e'4 e f4. e8 d4 d | es4. d8 c4 c d4. c8 bes2 |
  a2 a g1\fermata | r2 r4 d' cis cis r e | cis cis8 cis d4. e8 cis4 cis r d | d c! b!2 b r4 c8 c |
  c4 c c4. c8 c4 d2 c4 | bes!1 a | bes2 r8 bes a g c4 a8 g f4 f |
  
  d'2 r8 d c bes es4 c8 bes a4 a | c d8 es f4 es8 es d4. c8 c2 | bes f r8 f e d g4 e8 d |
  c4 c g'2 r8 g f e a4 f8 e | d4 d f g8 a bes4 a8 a g4 f | g2 f c' r8 c bes a |
  d4 bes8 a g4 g bes c8 d es4 d8 d | c([ bes bes a] bes[ a a g] a\([ bes]\)) c8([ bes]) a2 | g\breve \bar "|."
}

nBC = \relative c' {
  \global
  bes1 es, | g r2 c | f,1 a | r2 d g, a | bes es, f1 | bes, f |
  f2 f f f | c' g1 g2 | d' a1 a2 |
  e'1 e2 f | g4 f g2 c, f~ | f g a1 |
  \time 3/1 d,\breve bes1 | f'\breve r1 | f\breve d1 | c\breve g'1 | c,\breve c1 | g'\breve r1 | g\breve e1 | d\breve a'1 |
  
  \time 4/2 d,2 d4 d8[ g] f4 d es2 | d1 r2 d4 g | f4. bes8 es,2 es4 d f2 | f f8[ e d c] bes4 c f d |
  c es f g c8[ bes a g] f4 g | c, es bes d es f bes8[ a g f] | es4 f bes,2 g a | bes2. c4 d1 |
  g,\fermata d'2 g, | d'1 d2 d | es d1 bes4 d | c2 f,1 f'2 |
  g f f es4 g | f2 bes, es1 | bes bes2 f'2~ | f f f1 | c c2 g' | bes a d,1 |
  g, c2 f, | g a bes1 | a a'4 a bes4. a8 | g2 a4. g8 fis2 g |
  c,2 d g,1\fermata | g a | a2 d, a' d2~ | d e1 c2~ |
  c f2. bes,4 fis2 | g1 d' | g, f |
  
  bes c2 f | f4 es d c bes es f2 | bes, bes1 b2 |
  c2 c1 cis2 | d4 c! bes a g f c' d | c2 f, f1 |
  fis'2 g4 f! es d c bes | a2 g d'4 c d2 | g,\breve \bar "|."
}

nBCfigured = \figuremode {
  \global
  \repeat unfold 4 {<_>\breve} | < _ > 1 <4>2 <3> | < _ >\breve |
  \repeat unfold 3 {<_>\breve} |
  <_+>1 <5>4 <6> <5> <6> | <_!> <_> <_!>2 <_>1 | <5>4 <6> <5> <6> <_+>1 |
  \time 3/1 \repeat unfold 3 {<_>\breve.} | <_>\breve <_!>1 | <_>\breve <_->1 | \repeat unfold 2 {<_!>\breve <_>1} | <_>\breve <_+>1 |
  
  \time 4/2 <_+>2 <_>1. | <_> <_+>2 | <_>1 <_>4 <6> <_>2 | <_>\breve |
  <_>2. <_!>4 <_>2. <_+>4 | <_>\breve | <_> | <5>2 <6> <4> <_+> |
  <_>1 <_+> | <_+> <_> | <_>2 <_+>1 <6>2 | <_>\breve |
  \repeat unfold 5 {<_>\breve} | <_>1 <_+> |
  <_+> <_> | \repeat unfold 3 {<_>\breve} |
  <_>2 <_+> <_>1 | <_>\breve | <_> | <_>2 <_+>1 <_>2 |
  <_>\breve | <_>1 <_+> | <_>\breve |
  \repeat unfold 7 {<_>\breve} |
  
  %
  %
  <_>1 <_+>2 <4>4 <_+> | <_>\breve \bar "|."
}
