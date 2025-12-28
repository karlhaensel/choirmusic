\version "2.24.4"

global = {
  \key f \ionian
  \time 4/2
  \autoBeamOff
}

nTenorI = \relative c' {
  \global
  c1 d2 g, | a2. g4 g1 | f2 r4 f d4. d8 e2 | f r r r4 c' | a4. a8 b!2 c1 | r r2 r4 c |
  bes4. f8 g2 a1 | r4 g g g a2 a4 g | f1 d2 e | f1 e | r c' | d2 g, a f4 f~( |
  f e8[ d] e2) f r4 a | f4. f8 g2 a1 | R\breve*3 | r1 r4 d d d |
  es2 es4 d c1 | d2 c bes1 | a2 f' e2. e4 | d1 r | r r2 d2 | c1 bes2 r4 f | g d bes'4. a8
  g4 f e e | r g a e c'4. bes8 a4 bes | g1 f | R\breve | r1 r4 g g a |
  
  bes4 bes bes c d2 f4 es~ | es d c2 bes d | es1 d | r4 c d a f'4. es8 d4 c |
  b!4( c2 b4) c2 r4 g | a e c'4. bes8 a4 g f8([ g f e] | d1) e | r4 f f g a2 c4 bes~ | bes a g2 f1 |
  R\breve | r4 f f g a2 c | r2 r4 g g a bes2 | c bes1 a2 | g1 f \bar "|."
}

nTenorII = \relative c' {
  \global
  R\breve*2 | c1 d2 g, | a2. g4 g1 | f2 r r r4 c' | a4. a8 b!2 c r4 f, |
  d4. d8 e2 f1 | R\breve*2 | r1 c'1 | d2 g, a f4 f~( | f e8[ d] e2) f a |
  g1 f2 r4 f | d4. d8 e2 f1 | r4 c' c c d2 d4 c | bes1 g2 a | bes1 a2 g | a2. a4 g1 |
  R\breve | r1 r2 d' | f4.( e8 d1) cis2 | d1 r2 f, | g1 f | r r4 f g d | bes'4. a8 g4 f
  e f r g | a e c'4. bes8 a4 g f2~( | f4 e8[ d] e2) f1 | r4 c c d es2 g4 f~ | f es d2 c1 |
  
  r4 g' g a bes2 d4 g, | a bes2( a4) bes1 | r2 g bes1 | a2 r4 c d a f'4. es8 |
  d4 es d2 c4 g a e | c'4. bes8 a4 g f8([ e f g] a2~ | a4 g8[ f] g2) a1 | R\breve | r1 r4 d, d e |
  f2 a4 g2 f4 e2 | d1 r2 r4 g | g a bes2 d r | g,1 e2 f~( | f4 e8[ d] e2) f1 \bar "|."
}

nBC = \relative c {
  \global
  f1 bes,2 c | f bes, c1 | f2 f, bes c | f bes, c1 | f,2 g c a' | f4 a g2 c, a |
  bes4 d c2 f,1 | c' f,2 f4 e | f2 bes1 a2 | d1 c2 c | bes c f f, | bes c f, f |
  c'1 f,2 r4 f | bes d c2 f,1 | f'2 f4 f bes2 bes4 a | g2 g1 fis2 | g1 d2 es | d1 g,2 g' |
  es1 f | bes2 a g1 | d a' | d, d | c f,2 bes | f'1 bes, | bes2 bes
  c4 f, c'2~ | c c1 d4 bes | c1 f, | c'2 c4 b! c2 c4 f, | g1 c2 c4 a |
  
  g4 g'2 f4 bes g d es | f1 bes,2 bes | es1 bes | f'2 f1 f2 |
  g1 c,2 c~ | c c d2. c4 | bes1 a | d2 d4 c f2 a,4 bes | c1 f,4 bes2 a4 |
  d2 f,4 g a1 | d1 f2 c~ | c g1 g2~ | g g c1~ | c f,1 \bar "|."
}

nBCfigured = \figuremode {
  \global
  \repeat unfold 2 {<_>\breve | <_>1 <4>2 <3> |} <_> <_!> <_>1 | <_>2 <_!> <_> <6> |
  <_>\breve | <_>1. <_>4 <6> | <_>\breve*4 |
  <4>2 <3> <_>1 | <_>\breve*3 | <_>1 <_+> | <_+> <_> |
  <_>\breve*2 | <_>1 <[4]>2 <_+> | <_+>1 <_!> | <_>\breve | <_>1. <6>4 <5> | <6> <5> <6> <5>
  <_>1 | <6>4 <5> <6> <5> <6> <5> <_>2 | <4> <3> <_>1 | <_> <_->2 <_->4 <6> | <_!> <4>2 <_!>4 <_>1 |
  
  <_>\breve | <7[-] 3>4 <6 4>2 <3>4 <_>1 | <_>\breve | <_>2 <6>4 <5> <6> <5> <6> <5> |
  <_!> <4> <4> <_!> <_>2 <6>4 <5> | <6> <5> <6> <5> <_>2. <6>4 | <7>2 <6> <_+>1 | <_>\breve | <7 3>4 <6 4>2 <3>4 <_>1 |
  <_> <7 _+>4 <6 4>2 <3[+]>4 | <_>\breve*2 | <_>1 <7 3>2 <6 4> | <4> <3> <_>1 \bar "|."
}
