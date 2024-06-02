\version "2.22.00"

global = {
  \key a \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
}

nSopran = \relative c'' {
  \global
  a2. gis4 | fis2 e4 e'~( | e d cis4. b8 | cis[ a] b4. a8) a4~ | a gis a2 | R1 |
  R1*2 | r2 r4 d4~ | d cis b2 | a4 e'2( d4 | 
  
  cis4. b8[ cis a] b4~ | b8[ a]) a2 gis4 | cis4.( b8[ cis a]) b4~( | b8[ a]) a2 gis4 | a1 |
  R1*4 | a4. a8 a4 a |
  gis2 b | b cis4 cis | cis( b8[ a]) b2 | a r4 a~( | a8[ b cis a]) b4 a~( |
  
  a8[ b cis a]) b2 | r4 e,4.( fis8[ gis e] | fis[ e]) a2 gis4 | a1 | R1 | r4 a2 e4 |
  a2 gis~ | gis r | r r4 a4~ | a e a2 | gis4 e'2 b4 |
  e2.( d4 | cis2) b | r4 b cis b | gis gis a b | e,8([ fis gis e] fis4) gis |
  
  fis8([ e] a4 gis a | fis b a b~ | b a8[ gis]) fis2 | e r | R1*2 |
  r4 b'4 cis2 | b4 e d b | cis( d b cis~ | cis) b8[ a] gis2 | R1*2 |
  R1 | r4 b gis a | fis2 e4 a~( | a gis8[ fis] gis4) cis~( | cis b8[ a] b4 cis~ | cis b8[ a] b2) |
  
  cis4 a2( gis8[ fis] | gis4) a4.( gis8 fis4) | e2 r | r4 a2 gis4 | fis2 e4 e'( | e d cis4. b8 |
  cis[ a] b4. a8) a4~ | a gis a2 | R1*3 | r2 r4 d~ | d cis b2 |
  a4 e'2( d4 | cis4. b8[ cis a] b4~ | b8[ a]) a2 gis4 | cis4.( b8[ cis a]) b4~( | b8[ a]) a2 gis4 | a1~ | a\fermata \bar "|."
}


nAlt = \relative c'' {
  \global
  R1 | r4 a2 gis4 | fis2 e | r4 d2 cis4 | b2 a | R1 |
  R1*5 |
  
  r4 a'2 gis4 | fis2 e~ | e r4 b | cis4. d8 e4 b | cis4. d8 e2 |
  R1*3 | d4. d8 d4 d | cis2 e |
  e fis | r4 fis fis( e~ | e8[ d] cis2) b4 | cis a8[ b] cis[ a] d4~ | d cis r d8([ e] |
  
  fis[ d]) a'2 gis4 | a a,8[ b cis a] e'4~ | e d e2~ | e r4 e~ | e a, e'4.( d8 | cis[ b] cis4. b8 b4~ |
  b a) b2 | r4 e2 a,4 | e'4.( d8[ cis b] cis4~ | cis8[ b] b2 a4) | b2 r4 e4~ |
  e cis a'2~( | a4 gis fis2) | e1 | r4 e fis e | cis cis d e |
  
  a,8([ b cis a] b4) cis | d8([ a] d4 cis d | b e2) dis4 | e2 r | R1 | r4 e fis2 |
  e r4 a | gis e fis( gis | e fis4. e8 e4~ | e) d e2~ | e1 | R1 |
  r4 e cis d | b e2( d8[ cis] | d4) d e( cis~ | cis b8[ a]) b4 a8[ b] | cis[ a] a'4 r a,8([ b] | cis[ a]) a'2 gis4 |
  
  a4 e2 d4 | e4( a,8[ b cis a] a'4~ | a a,8[ b cis a] e'4~ | e dis) e2 | r4 a2 gis4 | fis2 e |
  r4 d2 cis4 | b2 a | R1*5 |
  R1 | r4 a'2 gis4 | fis2 e~ | e r4 b | cis4. d8 e4 b | cis4. d8 e2~ | e1\fermata \bar "|."
}

nTenor = \relative c' {
  \global
  R1*4 | r2 r4 a4~ | a gis fis2 |
  e4 e'2( d4 | cis4. b8[ cis a] b4~ | b8[ a]) a2 gis4 | a2 r4 d~ | d cis b2 |
  
  a4 e'2.( | cis4) d b2 | a4.( gis8 fis4) e | a2 b | a1 |
  r4 e fis gis | a b cis d | e4.( d8[ cis b]) d4~( | d8[ cis b a]) b4 b | a1 |
  r2 d4. d8 | d4 d cis2 | e e | fis4 fis fis2 | e d4 fis4~ |
  
  fis e fis( d) | e cis2( b4 | cis) a b2 | a1~ | a2 r4 e'4~ | e a, e'2~( |
  e4 dis?) e2~ | e r | r4 e2 a,4 | e'2.( dis?4 | e1) |
  a,4 e'4. cis8 fis4~( | fis8[ e] e2 dis4) | e1 | R1*2 |
  
  R1*2 | r4 b cis b | gis gis a b | e,8([ fis gis a] b[ cis d b] | cis[ d e cis] d[ cis b a] |
  b2 a) | R1*2 | r2 r4 b | cis2 b4 e | d b cis( d |
  b cis2) b8[ a] | gis2 r | R1 | r2 r4 e' | cis d b e~( | e d8[ cis] d4) d |
  
  e4( cis2 b8[ a] | b4) cis a d~( | d cis4. b8 b4~ | b a b e~ | e dis e2) | b r |
  R1 | r2 r4 a~ | a gis fis2 | e4 e'2( d4 | cis4. b8[ cis a] b4~ | b8[ a]) a2 gis4 | a2 r4 d~ |
  d cis b2 | a4 e'2.( | cis4) d b2 | a4.( gis8 fis4) e | a2 b | a1~ | a\fermata \bar "|."
}

nBass = \relative c' {
  \global
  R1*5 | r2 r4 a4~ | 
  a gis fis2 | e r4 d~ | d cis b2 | a4 a' a gis | a2 r |
  
  r4 a2( e4 | fis) d e2 | a,4 a'2 gis4 | fis2( e) | a, r4 a |
  b cis d e | fis gis a b | cis4.( b8[ a gis] b4~ | b8[ a]) a2 gis4 | a4. a8 a4 a |
  e e b'2 | b a4 a | a2( gis | fis2. d4 | a'2) d,4 d'~ |
  
  d cis b2 | a4 a2 gis4 | fis2( e) | a,1 | r4 a'2 e4 | a2.( gis4 |
  fis2) e~ | e r4 a~ | a e a2~( | a4 gis fis2) | e1 |
  r4 a2 d,4 | a'2( b) | e,1~ | e2 r | R1 |
  
  R1 | r4 b' cis b | gis gis a b | e,8([ fis gis e] fis4) e8([ fis] | gis[ a] b4 gis8[ a b gis]) | a4( cis b a~ |
  a gis fis) a | e2 r | r r4 e | fis2 e | r4 a gis e | fis( gis e fis~ | 
  fis8[ e] e2) d4 | e2 r | r4 b' gis a | fis2 e4 a~( | a gis8[ fis] gis4 a~ | a cis b2) |
  
  a4.( gis8 fis2 | e4) a2 d,4 | a'2.( gis4 | fis2) e | R1*2 |
  R1*2 | r2 r4 a~ | a gis fis2 | e r4 d~ | d cis b2 | a4 a' a gis |
  a2 r | r4 a2( e4 | fis) d e2 | a,4 a'2 gis4 | fis2( e) | a,1~ | a\fermata \bar "|."
}