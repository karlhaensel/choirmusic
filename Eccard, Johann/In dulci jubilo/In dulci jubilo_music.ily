\version "2.18.2"

global = {
  \key g \major
  \time 3/2
  \dynamicUp
}

nSopran = \relative c'' {
  \global
  \partial 2 g2 | g1 g2 | b1 c2  d2( e1 | d) d2 | g,1 g2 | 
  b1 c2 | d2( e1 | d1.) | d1 e2 | d1 c2 | b1. |
  g1 g2 | a1 a2 | b1 a2 | g1( a2 | b1) b2 | d1 e2 |
  
  d1 c2 | b1. | g1 g2 | a1 a2 | b1 a2 | g1( a2 | b1.) |
  e,1 e2 | fis1 fis2 | g1.( | d'1.) | b1 b2 | a1 a2 | g1.\fermata \bar "|."
}

nAlt = \relative c' {
  \global
  \partial 2 d2 | e2.( d4 e fis | g1.) | a2 b a | fis1 d2 | e2.( d4 e fis |
  g1.) | a2 b a | fis1. | g1 g2 | g2( d) a' | g( fis4 e fis2)
  e1.~ | e1 e2 | g1 fis2 | d2.( e4) fis2 | g1 g2 | g1 g2 |
  
  g2( d) a' | g2( fis4 e fis2) | e1.~ | e1 e2 | g1 fis2 | d2.( e4) fis2 | g1. |
  g1 e2 | dis1 dis2 | e2.( fis4 g e | fis e fis g a2) | g1 g2 | fis1 fis2 | g1.\fermata \bar "|."
}

nTenorI = \relative c' {
  \global
  \partial 2 b2 | c1 c2 | d1 e2 | d2.( cis8 b cis2 | d1) b2 | c1 c2 |
  d1 e2 | d2.( cis8 b cis2 | d1.) | d1 c2 | b1 e2 | e( dis4 cis dis2) |
  e1 e2 | a,2. b4 c2 | b e a, | b4( c d2.) d4 | d1 d2 | d1 c2 |
  
  b1 e2 | e( dis4 cis dis2) | e1 e2 | a,2. b4 c2 | b2 e a, | b4( c d2.) d4 | d1. |
  c1 b2 | b1 b2 | b2( g1 | a) d2~ | d g,1 | a a2 | b1.\fermata \bar "|."
}

nTenorII = \relative c' {
  \global
  \partial 2 g2 | g1 g2 | g4( a b g g'2 | fis e2.) a,4 | a1 g2 | g1 g2 |
  g4( a b g g'2 | fis e2.) a,4 | a1. | b1 g2 | g1 e2 | b'1. |
  b1 b2 | c1 a2 | g4( a b c d2~ | d4 c b2) a | g1 b2 | b1 g2 |
  
  g1 e2 | b'1. | b1 b2 | c1 a2 | g4( a b c d2~ | d4 c b2) a | g1. |
  g1 g2 | fis1 fis2 | e2( e' c | d2. c8 b a2) | r2 d d | d1 d2 | d1.\fermata \bar "|."
}

nBass = \relative c {
  \global
  \partial 2 g2 | c1 c2 | g( g') e | fis( g a | d,1) g,2 | c1 c2 |
  g( g') e | fis( g a | d,1.) | g1 c,2 | g1 a2 | b1. |
  e1 r2 | r r a, | e'1 fis2 | g( g,) d' | g,1 g'2 | g1 c,2 |
  
  g1 a2 | b1. | e1 r2 | r r a, | e'1 fis2 | g( g,) d' | g,1. |
  c1 e2 | b1 b2 | e1.( | d2. e4 fis2) | g1 g,2 | d'1 d2 | g,1.\fermata \bar "|."
}