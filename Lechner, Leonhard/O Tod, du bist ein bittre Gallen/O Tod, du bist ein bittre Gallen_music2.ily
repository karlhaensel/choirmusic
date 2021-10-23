\version "2.22.1"

nIISopran = \relative c'' {
  \global
  b\breve | a | fis | g2 e a1 | r r2 fis | % 31-35
  b4 a2 gis4 a1 | r r2 a | a a4 a2 b4 b b | e1 d4 b2( ais4) | % 36-39
  b2 r4 b b b b2 | r4 b b b b2 r4 cis | cis cis cis2. e4 e2~ | e4 e e1 e2 | % 40-44
  r cis cis cis | d b2. a4 a2 | gis a cis1 | cis2 cis d1 | R\breve | % 45-48
  r2 d d e | fis b, d2.( cis8[ b] | a2) b cis2. cis4 | d d cis d b2 a4 a | % 49-52
  d d cis a d1~ | d2 d r b | b b4 d2 a4 r2 | R\breve | r2 a a1 | % 53-57
  a2 d2. b4 b2~( | b ais) b1~( \repeat unfold 2 {| b\breve~} | b) \bar "|." % 58-62
}

nIIAlt = \relative c' {
  \global
  fis\breve | fis1 fis | a\breve | r1 fis | b2 g fis2. fis4 | % 31-35
  fis e d2 cis4 cis d e | d2 cis r e | fis e4 fis2 g4 g g | g2. g4 fis1 | % 36-39
  dis e2 e4 e | dis2 r4 fis fis fis fis2 | r4 e a a a2 a | a2. a4 gis2 a | % 40-44
  r a a a | a g d4 fis e2~ | e e r a | a a fis g~ | g4 a e2 e1 | % 45-48
  fis1 r2 a | a g fis d | fis g a a | fis4 fis a a g2 fis4 fis | % 49-52
  fis g a a g2 fis4 a | g2 fis r g | g g fis e~ | e d2.( cis8[ b] cis2) | d1 fis | % 53-57
  fis2 fis d g | fis1 dis2 dis | dis dis e2.( fis4 | g2) fis e1 | dis\breve \bar "|." % 58-62
}

nIITenorI = \relative c' {
  \global
  r1 d~ | d cis~ | cis d | d2 b cis1 | b2 b2. ais4 ais2 | % 31-35
  r1 e2 fis4 e | fis( g!) a2 r cis | d cis4 d2 d4 e2 | e e,8([ fis g a] b4) fis fis2~ | % 36-39
  fis fis g g4 g | fis2 r4 d'! b d cis2 | r4 a cis cis cis2 a | a a b a | % 40-44
  r a a a | d g,2. fis4 a2 | e a r e' | e e d d | d cis b1 | % 45-48
  d1 r | R\breve | r2 d e4 e fis e | d2 e4 fis d2 d | % 49-52
  r4 d e fis d2. a4 | b2 a r g | g b a2.( g4 | fis2) d e1 | fis r2 d | % 53-57
  d d g e | fis1 fis | fis g2 g | e fis g1 | fis\breve \bar "|." % 58-62
}

nIITenorII = \relative c' {
  \global
  b\breve | fis | r1 r2 fis | b g fis fis' | d e cis2. cis4 | % 31-35
  d cis b2 a4 a a a | b2 e,4 e a2. a4 | a2 a a4 g e8([ fis g a] | b1) d2 cis | % 36-39
  b1 b2 b4 b | b2 r4 b d b ais2 | r4 cis e e e2 cis | cis2. cis4 b2 a | % 40-44
  r e' e e | fis d2. d4 cis2 | b cis r a | a a a b~ | b4 a a1 g!2 | % 45-48
  a2 a b cis | d g, b2.( cis4 | d2) b a1 | r r2 a | % 49-52
  b4 b a fis g2 d4 d' | d2 d r d | d1. cis2 | b fis a1 | a d | % 53-57
  d2 a b e | cis1 b~( \repeat unfold 2 {| b\breve~} | b) \bar "|." % 58-62
}

nIIBass = \relative c {
  \global
  R\breve | r1 fis~ | fis d | r r2 fis | g e fis1 | % 31-35
  r a,2 d4 cis | b2 a r a | d a4 d2 g,4 g' g | e8([ fis g a] b2) b, fis' | % 36-39
  b,1 e2 e4 e | b2 r4 b' b b fis2 | r4 a a a a2. a,4 | a2. a4 e'2 a, | % 40-44
  R\breve*2 | r2 a a'1 | a, d2 g~ | g4 fis a2 e1 | % 45-48
  d1 r | R\breve | r1 r2 a' | b4 b a fis g2 d | % 49-52
  r r4 a' b b a fis | g2 d r g, | g g d' a | b1( a) | d\breve | % 53-57
  R\breve | r1 b | b2 b e1~ | e2 dis e1 | b\breve \bar "|." % 58-62
}
