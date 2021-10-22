\version "2.22.00"

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key d \dorian
  \time 4/4
  \dynamicUp 
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  r2 d~ | d d | e f | e d4.( e8 | f4) d cis2 |
  R1 | r2 b | cis d~ | d4 d e2 | e4 e2( d4 | 
  
  c) e f2( | e4 d2 cis4 | d2 a | d) cis |
  R1*3 | r2 e |
  f d4 d | d f e2 | f( e4 d~ | d cis) d2 | r2 r4 cis |
  
  cis d e2 | r4 e e8 e e4 | cis2 r | r4 d2 d4 |
  e d e2 | f e4 d~ | d c! b2 | a4 d cis e | d2 cis |
  r2 r4 a | e'2( f) | e4 d4.( cis16[ b] cis4) | d2 e |
  
  R1 | r2 a, | e'( f) | e4 c b2 | cis4 d d2 |
  R1 | r4 a e'2( | f) e4 d | f2 e4 c | d2 cis |
  d1 | e2 f | e d4 d~(  | d8[ cis16 b] cis4) d2~ | d1~ | d\fermata \bar "|."
}




nSopranII = \relative c'' {
  \global
  r2 a~ | a b | c c | c b | a1 |
  a2 a4 a | a a gis2 | a a | b c | c r |
  
  r4 c2 c4 | c8 c a a a2 | a r4 a~ | a gis a2~ |
  a1 | gis4 gis a b | c2 b | b a | 
  a g4 a | g a a2 | a1 | a2 a | b4 a a2 |
  
  a4.( b8 c4) c | b a2 gis4 | a1 | b4 a b b |
  c b c2 | c2. a4~ | a a4.( \ficta gis16[ \ficta fis] gis!4) | a2 r | r4 d, a'2( |
  bes) a4 a | a2~ a4. g8 | c4( b) a2~ | a1 |
  
  R1 | r2 r4 f | g a f4.( g8) | a4( a,) b2 | r4 d a'2~( |
  a bes) | a4 f g2 | f8([ g a b!]) c4( b) | a2. a4~( | a g a2) |
  fis4 a b2 | c1 | c2 b4( g | a2) a | b4( a b2~ | b) a\fermata \bar "|."
}



nAlt = \relative c' {
  \global
  r2 fis~ | fis g | g a | g g | f e |
  e2. f4 | e( d e2~ | e) fis | g1 | g2 g |
  
  g a( | g4 f e2) | d2 f4 f~( | f e8[ d] e2~ |
  e) f | e2. g4 | g a fis2 | \ficta gis e |
  d1 | d2 e( | d e4 f) | e2 d4 fis | g( f) e2 |
  
  e4( fis g2) | g4 e e2~ | e e4.( f!8 | g4 a g2) |
  g1 | a2( g4 f) | e2 r | r a | f4 g a e |
  g d d d~( | d8[ cis16 b] cis4) d f | g4.( f8 e2) | d4 g e2~( |
  
  e f | g f4) f | e2 d | r4 a e'2~ | e4 f f2 |
  e4( f g2) | f4 d2( cis4) | d f g4. g8 | f4 d e2 | r2 r4 e |
  d fis g2 | g4 g a2 | g r | r4 e fis2 | g4 a g g | g2 fis\fermata \bar "|."
}


nTenor = \relative c' {
  \global
  d1~ | d2 d | c c | c d | d4 a r2 |
  cis cis4( d) | \ficta c!( a) b2 | r4 a2 d4 | d2 c | c2.( d4 |
  
  e c) c2 | r2 r4 a~ | a d2 d4 | bes2 a |
  cis d | b! \ficta c!4 d | e e4.( \ficta dis16[ \ficta cis] \ficta dis!4) | e b cis2 |
  d4 a b a | b d2( c!4 | a d cis) d | a2. d4 | d2 c4 a~ |
  
  a d c c | d c b2 | a4 \ficta cis \ficta cis! \ficta cis! | d4. d8 d2 |
  c4 d c2 | c r | r4 a e'2( | f) e4 c | d2 e |
  r4 g2 f4 | e2 d | c4 g a2~ | a4 d2 c4~ |
  
  c b c d~( | d8[ \ficta cis16 b] cis!4) d2 | c4 a2( d4 | c a4. \ficta gis16[ \ficta fis] gis!4) | a2 a4.( b8 |
  c2) d~ | d4 a g2 | a4 d c ( d~ | d8[ c a b c d] e4) | d2 e4 a,~ |
  a d2 d4 | c2 c4 c~( | c8[ d e f] g[ f e d] | e2) d~ | d1~ | d\fermata \bar "|."
}

nBass = \relative c {
  \global
  r2 d~ | d g | c, f | c g' | d a'~ |
  a a4 d, | a' f e2 | a d,4. d8 | g2 c,~ | c c'4 b |
  
  c2 f, | c'4 d a2 | d,1 | R1 |
  a'2 d, | e a4 g | c a b2 | e,4 e a2 |
  d, g4 fis | g d a'2 | d, r | r d | g4 d a'2 |
  
  r2 c, | g'8 g a4 e2 | r4 a a2 | g4( fis) g2 |
  c,4 g'4 c,2 | f c'4( d) | a2 r | d, a'( | bes) a |
  g d4 d' | a2 d, | R1 | d2 a'~ |
  
  a4 g f2 | e d | r d | a'4 a e2 | a4( d,4. e8[ f g] |
  a2) g | d4( f e2) | d r4 g | d2( a' | bes) a4 a |
  d,2 g | c, f | c4 c' g( bes | a2) d, | g4( fis g2) | d1\fermata \bar "|."
}