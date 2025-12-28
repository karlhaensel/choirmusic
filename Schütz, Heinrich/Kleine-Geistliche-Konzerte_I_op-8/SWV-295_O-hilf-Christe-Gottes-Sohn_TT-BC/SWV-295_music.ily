\version "2.24.4"

global = {
  \key a \aeolian
  \time 4/2
  \autoBeamOff
}

nTenorI = \relative c' {
  \global
  e1 e2 e~ | e d d c | b1 a2 a | bes b! cis( d~ | d cis) d1 | r e,2 e |
  f fis gis( a~ | a gis) a e' | e e1 d2 | d c b1 | R\breve | e,2 e f fis |
  
  g2( gis) a b~ | b c b1 | a1 r | a2 a bes b! | cis( d1 cis2) | d a1 a2 | c c bes1 |
  a g2 d'~ | d b! e c | gis( a1 gis2) | a1 r | R\breve | r1 r2 d~ | d a b g |
  fis gis a c~ | c c c a | d\breve | c1 r | R\breve | r1 cis4 d e f |
  e2 d r a | d fis,4 fis fis2 g | a b4 c d e b( c~ | c b) c2 r4 b e2~ |
  e gis,4 gis gis2 a | b e,4 fis gis a b8([ d c d] | b1) a2 r | a4 b c d e8([ f d e] c2) | b\breve \bar "|." 
}

nTenorII = \relative c' {
  \global
  R\breve*5 | e1 e2 e~ |
  e d d c | b1 r2 c | c c1 b2 | b a gis1 | a2 a bes b! | c( cis) d1 |
  
  e,2 e f fis | gis( a1 gis2) | a1 r2 e~ | e e g g | f1 e | d d2 d | es e! fis( g~ |
  g fis) g b~ | b g c e | b\breve | a1 r2 c~ | c g a f | e fis g1 | R\breve |
  r1 r2 e'~ | e e e c | b( c1 b2) | c1 r2 b | e gis,4 gis gis2 a | b cis4 d e f cis( d~ |
  d cis) d2 r1 | R\breve | r1 b4 c d e | d2 c r4 gis c2~ |
  c b4 b b2 a | gis r e4 fis gis a | gis( a2 gis4) a2 a4 b | c d e8([ f d e] c[ d b c] a2) | gis\breve \bar "|."
}

nBC = \relative c {
  \global
  a1 a2 c~ | c g g a | e'1 f2 d | g e a g | a1 d, | a1. a2 |
  d b e1~ | e a, | a2 c1 g2~ | g a e'1 | f2 d g e | a,1 d |
  
  e d2 b | e1 e | a,1. a2~ | a a g1 | a a | d d | c d |
  d1 g,2 g~ | g g a1 | e' e | a, f' | e f2 d | c d g,1 | fis' g2 e |
  d e a, a'~ | a a a1 | g2 f g1 | c, e2 e~ | e e4 e e2 f | e a4 bes a d, a d |
  a'2 d, d d~ | d d4 d d2 e | d g4 a g c, g c | g'2 c, e a,~ |
  a e'4 e e2 f | e2 c4 d e d b a | e' d e2 a, a~ | a a a1 | e'\breve \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve*2 | <_+>\breve | <_->2 <_+> <_+> <_> | <4> <_+> <_>1 | <_>\breve |
  <_>2 <5[+]> <_+> <4> | <4> <_+> <_>1 | <_>\breve | <_>1 <_+> | <_> <_->2 <_+> | <_!> <_+> <_!> <_+> |
  
  <_!> <_+> <_> <5[+]> | <_+> <6 4> <4> <_+> | <_>\breve | <_>1 <_->2  <_!> | <6 _+> <6 4> <4> <_+> | <_>\breve | <_->2 <_!> <6[-] _+> <6[-] 4> |
  <4> <_+> <_>1 | <_>\breve | <_+>2 <4> <4> <_+> | <_>\breve | <6> | <_>2 <_+> <_>1 | <_>\breve |
  <_+>2 <_+> <_>1 | <_>\breve | <_>1 <4>2 <3> | <_>1 <_+> | <_>\breve | <_+>2 <_+> <_+> <_+> |
  <4>4 <_+> <_+>2 <_>1 | <_>\breve | <_+> | <4>4 <3> <_>2 <_+> <_> |
  <_> <_+> <_>1 | <_+>2. <_+>4 <_+> <_+> <6[+]>2 | <_+> <4>4 <_+> <_>1 | <_>\breve*2 \bar "|."
}
