\version "2.24.4"

global = {
  \key g \dorian
  \time 4/2
  \autoBeamOff
}

nTenor = \relative c' {
  \global
  r2 d es1 | d2 c2. d4 bes4.( c8) | a1 a8 d c bes c4. c8 | c a bes c d1 cis2 |
  r8 d d a bes4. bes8 c4 bes16([ c d c]) a8. a16 a4 | r d8 a bes2. c8 d a8. a16 a4 | r8 d d a bes2~ bes4. a8 a8. a16 a4 |
  r4 bes16([ a bes a]) g4 g r c16([ bes c bes]) a4 a | r d16([ c d c]) bes4 bes r es2 a,4 | a2. a4 g1 | r4 d' c4. bes8 c2 c | r4 c bes4. a8 bes2 bes |
  r4 a4. a8 g4. g8 f16([ e f d]) e2 | d r4 es'4. es8 d4. c8 bes4 | c1 bes4 r8 f'8 d4 d | es4 r8 es c4 c d d8 f, g4 bes8 g |
  a4 g8 g g4. fis8( g2) r4 f'8([ e]) | d([ c]) d([ bes]) es4 es8([ d]) c([ bes]) c([ a]) d4 d8 f, | g([ a]) bes([ g]) a16([ bes c bes] c[ bes a g]) fis4 g8 g g4. fis8( |
  g1) bes4 bes bes bes8 bes | bes4 bes8 bes b!4 b8 b c1( | cis) d2 r4 d8 a | bes4 bes r8 g bes c d4 c8 bes a([ bes16 c f,8 g16 a] |
  bes8[ c16 d g,8 a16 bes] f8[ g16 a] d,[ e f e] e2) d4 r8 f' | es([ d d c] d[ c c bes] c\([ d]\) es[\( d] \) c2) | bes2 r g4 g g g8 g | g4 g8 g g4 g8 g a1~ |
  a a4 d8 a bes4 bes | r8 es, g a bes4 a8 g f8([ g16 a d,8 es16 f] g[ a g a] bes[ c bes c] | d8[ e16 f bes,8 c16 d] f,16[ g f g] a[ bes a bes]
  c8[ d16 es a,8 bes16 c] e,!16[ f e f] g[ a g a] | bes8[ c16 d g,8 a16 bes] d,[ e d e] f[ g f g] a8[ bes16 c] f,[ g a g] g2) | \time 10/2 f r4 d' c8([ bes bes a] bes[ a a g] a[ bes c bes] a2)  g\breve\fermata \bar "|."
}

nBC = \relative c' {
  \global
  g1 c, | g'2 e fis g | d d8[ g f e] f1 | f2~ f8[ d bes a] g2 a |
  fis' g c,4 g d'2 | fis g es4 b! d2 | fis g4 g8[ d] es4 c d2 |
  bes g'4 es c2 a'4 f | d2 bes'4 g es d c2 | d1 g, | g f4 f' es d | es2 es2. es4 d c |
  d2 bes a1 | d2 c d g | es f bes, bes' | es, f bes, es |
  c d g, d' | g c, f bes, | es c d4 es d2 |
  g,1 g'2 f | es d c bes | a g fis fis' | g4 g8[ d] es2 bes4 d8[ es] f4 f, |
  g2 d' a d | c bes f'4 es f2 | bes,1 es2 d | c bes a g |
  f4 e8[ d] a'2 d, g4 g'8[ d] | es2~ es8[ g, bes c] d2 g, | bes f'
  f, c' | g bes f c' | \time 10/2 f, bes a g d'4 c d2 g,\breve\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>1 <_-> | <_>2 <6> <_>1 | <_+>\breve | <_>2 <6>2 <_> <_+> |
  <_>1 <_->2 <_+> | <_>1. <_+>2 | <_>1. <_+>2 |
  <_>1 <_-> | <_>1. <_->2 | <4> <_+> <_>1 | <_>\breve | <5>4 <6> <_>1 <6>2 |
  <_> <7>4 <6> <_+> <4>2 <_+>4 | <_>2 <_-> <9[-]>4 <8> <_>2 | <_>\breve*2 |
  <6>4 <5> <4> <_+> <_>2 <_!> | <_> <_-> <_>1 | <_> <_+>2 <4>4 <_+> |
  <_>\breve | <_>2 <6+> <_>1 | <_+>\breve | <_> |
  <_>1 <_+> | <_-> <_>2 <4>4 <3> | <_>\breve | <_>1 <_+> |
  <_>2 <_+> <_+> <_>4. <6>8 | <_>\breve*3 |
  <_>\breve <_+>2 <4>4 <_+> <_>\breve \bar "|."
}
