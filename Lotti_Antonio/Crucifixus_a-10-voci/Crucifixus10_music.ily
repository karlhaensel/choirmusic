\version "2.22.1"

global = {
  \key d \minor
  \time 2/2
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  R1*4 | f4 f f( e8[ d] |
  e2. d4~ | d cis8[ b]) cis2 | R1*3 |
  
  R1 | r2 f8 f f f | f f e e f4( es~ | es8[ d16 c] d4) c2 |
  R1*2 | r4 r8 g' e e c c |
  
  f f r4 r2 | r4 d2( c4~ | c) bes r2 | R1 |
  r4 es2( d4~ | d) c r2 | R1 |
  
  R1 | r4 r8 d c c a a | e'4 e r2 | r8 d b b g g c4 |
  c r f2~( | f e~ | e) d4 r |
  
  r2 r4 e | cis8 cis a a f'4 f | e2. d4 | bes bes gis gis |
  a a r2 | R1 | f'2 e | e4 d d cis | d1 \bar "|."
}

nSopranII = \relative c'' {
  \global
  R1*3 | r2 e4 e | e( d8[ cis] d2~ |
  d4 cis f2) | e1 | R1*3 |
  
  R1 | e8 e e e e e d d | d4( cis d c~ | c8[ bes16 a] bes4) a2 |
  R1 | r2 r4 r8 d | bes bes g g c c r4 |
  
  R1 | r4 bes2( a4~ | a) g r2 | R1 |
  r4 c2( bes4~ | bes) a r2 | r r8 a fis fis |
  
  d d a'2 g4 | gis2 a | r r4 r8 d | b b g g c4 c |
  R1 | r4 r8 bes g g e e | a a r4 d2~ |
  
  d cis | R1 | r2 a2~ | a4 g f f |
  f e r2 | r r4 e'~( | e d2) cis4 | a a a a | a1 \bar "|." 
}

nSopranIII = \relative c'' {
  \global
  R1*3 | bes4 bes bes( a8[ g] | a1~ |
  a2 f4. d8) | a'1 | R1*3 |
  
  R1 | a8 a a a a a gis gis | a4( g! f2~ | f4 e) f2 |
  R1*2 | r2 r8 c'8 a a |
  
  f f bes bes r4 r8 es | d d bes bes es2 | d r | R1 |
  R1 | r4 c2( bes4~ | bes) a r r8 a |
  
  fis fis d d bes'4 bes | b2 c | R1 | r2 r4 r8 c |
  a a f f c'4 f, | R1 | r4 c'2 bes4 |
  
  r2 r8 e cis cis | a a e'4. e8 d4~ | d cis r2 | R1 |
  R1*2 | r2 r4 cis~ | cis a e4. a8 | fis1 \bar "|."
}

nAltI = \relative c'' {
  \global
  R1*2 | r2 a4 a | a( g8[ f]) g2 | f4. g8 a2~( |
  a b | a4. gis8) a2 | a8 a a a a a gis gis | a4( g!4. f16[ e] f4) | e2 r |
  
  R1*4 |
  r4 r8 f d d bes bes | g' g r4 r8 a f f | d d g g r2 |
  
  r2 r8 bes g g | f f bes bes r2 | r4 bes2( as4~ | as) g r2 |
  R1 | r4 a2( g4~ | g) fis r2 |
  
  r8 a fis fis d d g g | f2 e | R1 | r2 r8 g e e |
  c c f f a2( | g1) | f |
  
  r8 bes g g e e a4 | g2 r | r4 r8 a f f d d | bes'4 bes r2 |
  R1 | r2 bes | a a | f e4. e8 | fis1 \bar "|."
}

nAltII = \relative c'' {
  \global
  R1*2 | g4 g g( f8[ e] | f4 e8[ d] e2~ | e4) a, d e8([ f]) |
  e2( f4 b,4) | e1 | R1*2 | cis8 cis cis cis d d d e |
  
  f4( e4. d16[ cis] d4) | cis2 r | R1*2 |
  r2 r4 r8 bes' | g g e e a a r4 | R1 |
  
  r2 g4.( es8) | f2 r | r4 g2( f4~ | f) es r2 |
  r4 r8 g f f d d | es4 es r2 | r4 r8 a fis fis d d |
  
  a'4 a r2 | R1 | r2 r8 a f f | d d g4 g2 |
  R1 | r4 r8 g e e c c | f4 f r2 |
  
  R1*2 | r2 f~( | f4 e2 d4) |
  a1 | a'2.( g4~ | g) f r cis~ | cis d e4. e8 | d1 \bar "|."
}

nTenorI = \relative c' {
  \global
  R1 | f4 f f( e8[ d] | e2. d8[ cis] | d[ d, e f]) e2 | a1~( |
  a8[ b]) cis4 d2~( | d4 e8[ d]) cis2 | cis8 cis cis cis d d d e | f4( e4. d16[ cis] d4) | cis2 r |
  
  R1*4 |
  R1 | r8 e8 c c a a d d | R1 |
  
  r4 f2( es4~ | es) d r2 | R1 | r4 g2( f4~ |
  f) es8 es d d bes bes | c4 c r r8 bes | a a fis fis a4 a |
  
  R1 | r2 r8 e' c c | a a e'4 a,2 | R1 |
  R1 | r2 r4 r8 e' | c c a a d4 d |
  
  R1 | r2 r4 r8 d | cis cis a a a4 d | R1 |
  r2 f | e4 f2 e4 | cis d a2~ | a2. cis4 | a1 \bar "|."
}


nTenorII = \relative c' {
  \global
  r2 e4 e | e( d8[ c] d2~ | d) a2 | d4 d d( cis8[ b] | cis4 d8[ e]) f2 |
  cis8([ d]) e([ cis]) b2~( | b4 cis8[ d] e4) a, | R1*2 | a8 a a a a a gis gis |
  
  a4( g4. f16[ e] f4) | e2 r | R1*2 |
  R1 | r4 r8 c'8 a a f f | bes bes r4 r2 |
  
  r8 f' d d bes bes es es | r4 r8 d c c a a | bes4 bes r2 | r4 es2( d4~ |
  d) c r2 | r4 r8 es d d bes bes | d4 d r2 |
  
  R1 | r2 r4 r8 e | c c a a d4 d | R1 |
  r2 r4 r8 f | d d bes bes c4 c | r2 f2( |
  
  e1~ | e4) a, r2 | r r8 a f f | d d g g r4 d'4~( |
  d cis) a2 | r4 cis2 cis4 | cis a2 e4 | f4.( d8 a'4.) a8 | a1 \bar "|."
}

nTenorIII = \relative c' {
  \global
  d4 d d( cis8[ b] | c4 bes8[ a] bes2~ | bes a4. g8 | f4) bes e,2 | f2.( g8[ a] |
  e2) b' | e,1 | R1*3 |
  
  R1*3 | r2 r4 r8 c' |
  a a f f bes bes r4 | R1*2 |
  
  r4 d2( c4~ | c) bes r2 | r4 r8 bes as as f f | g4 g r2 |
  R1 | r2 r4 r8 g | fis fis d d fis4 fis |
  
  R1*2 | r8 e' c c a a d4~ | d g, r2 |
  r4 r8 c a a f f | bes4 bes r2 | r r8 f' d d |
  
  bes bes bes4 a2 | r8 e' cis cis a a d4 | e2 r | R1 |
  r4 e2( d4~ | d) cis r2 | f,4. d8 e4( a~ | a8[ g f g] a4) e8([ cis]) | fis1 \bar "|."
}

nBassI = \relative c' {
  \global
  R1 | a4 a a( g8[ f] | g2) d~ | d a'~ | a1~ |
  a4 a, d2 | a1 | a'8 a a a bes bes bes bes | a2.( gis4) | a2 r |
  
  R1*4 |
  r2 r8 bes g g | e e a a r2 | r8 g e e c c f f |
  
  r4 r8 bes g g es es | bes'4 bes, r2 | g'2( d ) | es4 r8 g f f d d |
  es4 es r2 | c'2 g | R1 |
  
  R1*2 | r4 r8 a f f d d | g4 g r2 |
  r4 r8 a f f d d | g4 g r r8 c | a a f f bes4 bes |
  
  R1 | r4 r8 a f f d d | a'4 a, r2 | R1 |
  a'2 a, | a'2. a4 | a1~ | a2. a4 | d,1 \bar "|."
}

nBassII = \relative c {
  \global
  d4 d a'2 | a, r | g4 g d'2~ | d a | a a |
  a( gis) | a1 | R1*2 | a8 a a a bes bes bes bes |
  
  a2.( gis4) | a2 r | R1*2 |
  r8 f' d d bes bes bes' bes | r4 r8 a f f d d | g g r4 r r8 f |
  
  d d bes bes es2 | bes4. bes'8 a a fis fis | g4( g,) d'2 | r4 r8 es d d b b |
  c4 c g'2 | c, g' | d1 |
  
  d1~ | d2 a~ | a r | r4 r8 g' e e c c |
  f4 f r4 r8 d | bes bes g g c4 c | r2 r4 r8 bes' | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  g g e e a4 a | a,1~ | a2 d | g,4 g b b |
  a1~ | a~ | a~ | a2. a4 | d1 \bar "|."
}