\version "2.22.1"

global = {
  \key d \major
  \time 3/4
  \dynamicUp
  \autoBeamOff
  \partial 4
}

nSopran = \relative c'' {
  \global
  d4 | d2 b4 | a2 fis4 | a( b) a | a2
  fis4 | fis2 b4 | b a4.( fis8) | g4( fis) e | dis2 
  e4 | \time 3/2 g2 a4 b a g~( | \time 2/2 g fis) g2 |
  \time 3/4 b4 ais b | \time 3/2 cis e2 d( cis4) | \time 3/4 d2 r4 |
  \break
  d2 d4 | cis a b | a2 gis4 | a2 cis4 | cis2
  d4 | b8([ a b cis] d4) | cis4 a2 | a2 a4 | a2
  gis4 | a a2 | a b4 | d2 cis4 | d2 r4 \bar "|."
}

nAlt = \relative c' {
  \global
  a4 | b2 b4 | d( cis) b | e2 e4 | fis2
  d4 | d d b8([ cis] | d[ e] fis4) fis | b,2 b4 | b2
  e4 | \time 3/2 e2 fis4 fis e2 | \time 2/2 d d |
  \time 3/4 d4 fis fis | \time 3/2 a2 a a | \time 3/4 fis2 r4 |
  \break
  fis2 fis4 | fis2 fis4 | e fis e | e2 a4 | a2
  a4 | g2( fis4) | a e fis~ | fis e2 | fis
  e4 | fis e2 | fis g4 | fis a2 | fis r4 \bar "|."
}

nTenor = \relative c {
  \global
  d4 | fis2 g4 | a2 d4 | cis( b) cis | d2
  a4 | a2 g4 | fis2 d4 | e( fis) g | fis2
  g4 | \time 3/2 b2 d c4 c | \time 2/2 a2 b |
  \time 3/4 b4 cis d | \time 3/2 e2 fis e | \time 3/4 d2 r4 |
  \break
  a2 b4 | a cis d | cis b2 | cis2 e4 | e2
  fis4 | d2 d4 | e8([ d cis b]) cis4 | d2( cis4) | d2
  b4 | d cis2 | d d4 | d e2 | d r4 \bar "|."
}

nBass = \relative c {
  \global
  d4 | b2 e4 | fis2 b4 | a( g) a | d,2
  d4 | d2 e4 | b8([ cis d e]) fis4 | e( d) e | b2
  e4 | \time 3/2 e2 d4 b c2 | \time 2/2 d g, |
  \time 3/4 g'4 fis b | \time 3/2 a4.( g8 fis4) d a'2 | \time 3/4 d,2 r4 |
  \break
  d2 b4 | fis'2 b,4 | cis d e | a,2 a'4 | a2
  d,4 | g2 b4 | a4.( g8 fis4) | d a'2 | d, 
  e4 | d a'2 | d,2 g4 | b a2 | d,2 r4 \bar "|."
}

