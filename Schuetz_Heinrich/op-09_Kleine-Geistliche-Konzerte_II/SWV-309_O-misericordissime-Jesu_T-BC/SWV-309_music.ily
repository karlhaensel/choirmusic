\version "2.24.4"

global = {
  \key g \dorian
  \time 4/2
  \autoBeamOff
}

nTenor = \relative c' {
  \global
  r2 bes4 bes bes bes8 bes bes2~ | bes as4. g8 g1 | f2 r c'4 c c2~ | c bes4. a8 a1 | g2 r4 d' d d8 d d2~ |
  d c4. b8 b1 | a2 r8 c bes! a d2 bes | a4 a8 a a4. g8 a4. a8 a2 | r8 bes a g c2 a g4 g8 g |
  a4 a b!4. b8 b d c b es2 | c a4 bes!8 c d2~ d8 c bes a | g4. g8 g2 r8 g a bes c2~ |
  c8 bes a g f1 e2 | f1 r4 c' a4 a8 d | bes bes es2 d8. c16 c8. c16 c8 e c c f4~ | f es8. d16 d8. d16 d4
  c4 c8 c c4 c | c2 bes r r4 d | g,2 g4 g8 g g g g8. fis16 a4 a | r2 d8 a a b! c4 e b4. a8 |
  a4 a8 e e f g2 f4 e4. d8 | d1\fermata f4 r a r8 d | a bes fis8. e16 g4 g r2 bes4 r | d r8 g d es b!8. a16
  c4 c g8 as e8. d16 | f4 f8 f f4 f8 f f4 f fis( g~ | g fis) g2 r4 d2 d8 c | d4 d r g g g8 g g4 g |

  gis4( a2 gis4) a1 | r4 f f f8 e f4 f r f8 f | f4. g8 a4 g fis2 fis | r4 a4. a8 a g a2 a | f8 g a f bes4 a 
  g2 f | a8 bes c a d4 c8 c bes4. a8 a2 | g4 d'8 d g4 f8 f es4 d c2 | bes1 r2 r8 c f, f |
  f4. e8 g2 g r8 d' g, g | g4. fis8 a2 a r8 e' a, a | a4. g8 b!2 b4 r8 c c4 c8 d | d4 d8 e e2. e16([ f g f]) e2 |
  d1 r4 f4. f,8 g g | a4. a8 a4 b!8 b c4 c8 c c4 c8 b | c4 c8 c c4 c c2.( b!4) | c1 r4 es4. g,8 g a |
  a4. a8 a2 r4 d4. c8 bes4 | r d4. d,8 e e fis4. fis8 fis4 fis8 fis | g4 g8 g g4 g8 fis g4 g8 g g4 g | g2.( fis4) g1\fermata \bar "|."
}

nBC = \relative c {
  \global
  es1 es2 d | c\breve | f,2 f'4 f f2 es | d\breve | g,4 g' g g g2 f |
  e\breve | a,2 f bes g | d' bes a1 | g2 f1 c'4 es |
  d2 g, g c | c4 d8[ e] f2 d4 e8[ f] g2~ | g8[ f es d] c2 c c4 d8[ e] |
  f2~ f8[ e d c] bes2 c | f,1 f | g a2 a~ | a bes
  es4 f g es | f2 bes, g1 | g g2 d' | g8[ d d e] f4 a e cis e2 |
  a, c4 bes a1 | d\fermata d | d2 g, g1 | g
  c | f,2 bes2. c4 d2~ | d g, g1 | g2 g c2. d4 |
  
  e1 a, | bes bes | bes2 c d1 | cis cis | d4 c! bes f
  c'8[ d e c] f4 e | d c bes a g bes d8[ e fis d] | g4 f!8 f es4 d c bes f'2 | bes,1 f |
  f2 c' c g~ | g d' d a~ | a e' e f | fis g4 gis a gis a2 |
  d,1 bes1 | f'2. d4 c a f g | c e f a f2 g | c,1 c2. c4 |
  cis2 d4. c!8 bes4. a8 g2 | g1 d'2. d4 | g f es d c d es c | d1 g,\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>1. <6>2 | <3>2 <4>1 <3>2 | <_>1. <6>2 | <_+>2 <4> <_+>4 <4 >2 <_+>4 | <_!>2 <_!> <_!>1 |
  <_+>2 <4>1 <_+>2 | <_>\breve | <_>2 <7>4 <6> <_+>1 | <_>\breve |
  <_+>2 <_!> <_!> <_-> | <_>\breve | <_>2 <_[-]>1. |
  <_>\breve*2 | <5>4 <6[-]>2 <5>4 <_>2 <5>4 <6> | <6> <5[-]> <_>1. |
  <_>\breve | <_>1. <_+>2 | <_> <6> <6>4 <6> <_+>2 |
  <_>2. <6>4 <_+> <4>2 <_+>4 | <_+>1 <_!> | <_+>2 <_!> <_->1 | <_!>
  <_> | <_>1. <_+>4 <4> | <_> <_+> <_!>2 <_->1 | <_>2 <_!> <_>1 |
  
  <_+>4 <4>2 <_+>4 <_>1 | <_>\breve | <_>2 <6>4 <5> <_[+]>1 | <_>\breve*2 |
  <_>1. <_+>2 | <_>1 <_->2 <4>4 <3> | <_>\breve*2 |
  <_>2 <_+>1. | <_>2 <_+> <5[!]>4 <6> <5> <6> | <6>2 <6> <_+> <_+> |
  <_>1. <_>4 <6> | <_>2. <6[+]>1 <_!>4 | <_> <6> <_>1 <_!>2 | <_>1 <_->2. <6>4 |
  <_>\breve | <_>2 <5>4 <6> <_+>1 | <_>2. <_+>4 <_->1 | <4>2 <_+> <_>1 \bar "|."
}
