\version "2.24.3"

global = {
  \key d \major
  \time 6/8
  \tempo "Allegretto grazioso" 4.=54
  \autoBeamOff
  \dynamicUp
}

common = {
  \global
  \partial 8 s8\p | s2.*2 |
  
  s2.*2 | s4. s\< |
  s2.\! | s2.\< | s16 s\! s4 s s8\f |
  s2.*3 |
  
  s4. s4 s8\p | s2.*2 |
  s2.*3 |
  s4. s\< | s2. | s16 s\! s4 s4.\> | s4 s16 s\! s8 s4\< |
  
  s2.\! | s2.*2 | \tag #'s { s4.\< s16 s\! s4 | s4.\> s\! } \tag #'a \tag #'t \tag #'b { s2.*2 } |
  s2.*4 |
  s2.*4 \bar "|."
}

nSopran = \relative c'' {
  \global
  a8 | fis' e d cis d e | a,4.~ a4 a8 |
  
  fis' e d cis d e | a,4.~ a4 a8 | a4. d4 d8 |
  d4( e8) cis4 a8 | a4. e'4 e8 | \slurDashed e4( fis8 d4) \slurSolid fis8 |
  fis e d d cis bis | bis4. cis4 e8 | e d cis cis b ais |
  
  ais4. b4 cis8 | cis4. cis4 cis8 | cis([ fis d]) cis4 cis8 |
  cis4. cis4 cis8 | cis([ fis d]) cis4 b8 | a4. a4 a8 |
  d4. d4 d8 | dis2.( | fis4 e8) d4 b8 | a4.~ a8 d e |
  
  fis4.~ fis8 d b | b4.( cis) | d r4 d8 | d4( dis8) e4 fis8 | g4( e8) d4 b8 |
  a4.~ a8 d fis | fis4.~( fis4 e8) | d4. r | R2. |
  r4 d8 \grace e16 d8 cis d | g fis e e d cis | cis2. | d4. r
}

nAlt = \relative c'' {
  \global
  g8 | fis g fis e fis g | fis e d cis([ e]) g |
  
  fis g fis e fis g | fis e d cis([ e]) g | fis4. fis4 fis8 |
  fis4( g8) e4 g8 | g4. g4 cis,8 | \slurDashed fis4.( fis4) \slurSolid gis8 |
  gis4. gis4 gis8 | \slurDashed gis4.( a4) \slurSolid g8 | g4. g4 g8 |
  
  g4. fis4 eis8 | fis4. eis4 eis8 | fis4( a8) gis4 eis8 |
  fis4. eis4 eis8 | fis4( a8) gis4 \once \set suggestAccidentals = ##t eis8 | fis4. fis4 fis8 |
  a4. a4 a8 | fis4( a8) g4 fis8 | g4. e4 e8 | fis4.~ fis8 fis fis |
  
  fis4. fis4 fis8 | fis4.( e) | d r4 fis8 | g4. g~ | g e |
  fis~ fis8 fis fis | a4.( g) | fis4 a8 \grace b16 a8 gis a | b a gis b a gis |
  gis4. a | g2. | g | fis4. r
}

nTenor = \relative c' {
  \global
  cis8 | d4. a4 a8 | d cis b a([ b]) cis |
  
  d4. a4 a8 | d8 cis b a([ b]) cis | d4. d4 d8 |
  d4. a4 cis8 | cis4. a4 a8 | \slurDashed ais4.( b4) \slurSolid d8 |
  d cis b fis' e d | d4. cis4 cis8 | cis b ais e' d cis |
  
  cis4. d4 gis,8 | a4. b4 b8 | cis4. cis4 b8 |
  a4. b4 b8 | cis4. cis4 cis8 | cis4. cis4 cis8 |
  c4. c4 c8 | b4( c8) b4 a8 | b4. b4 d8 | d4.~ d8 d d |
  
  d4. d4 d8 | d4.( ais) | b r4 c8 | b4. b~ | b d |
  d~ d8  d d | b4.( cis) | d4 fis8 \grace g16 fis8 eis fis | g! fis eis g! fis eis |
  eis4. fis | e2. | e | d4. r
}

nBass = \relative c' {
  \global
  a8 | d,4. d4 d8 | d4. d4 d8 |
  
  d4. d4 d8 | \slurDashed d4.( d4) \slurSolid d8 | d d e fis g gis |
  a4.( a,4) a'8 | a a, b cis d e | fis4.( b,4) e8 |
  e4. e4 e8 | \slurDashed e4.( e4)\slurSolid e8 | e4. e4 e8 |
  
  d4. d4 cis8 | fis cis fis gis cis, gis' | a([ gis fis] eis) dis cis |
  fis cis fis gis cis, gis' | a([ gis fis] eis) dis cis | fis4. fis4 fis8 |
  fis4. fis4 fis8 | b,2. | e4. g | a~ a8 a a |
  
  ais4. b4 b8 | fis2. | b,4. r4 a'8 | g4. g~ | g g |
  a~ a8 a a | a,2. | d4. r4 d'8 | d4. d4 d8 |
  d,2. | d4.~ d4 d8 | d2. | d4. r
}