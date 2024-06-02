\version "2.24.3"

global = {
  \key a \major
  \time 9/8
  \tempo "Allegro ma non troppo" 4.=72
  \autoBeamOff
  \dynamicUp
}

common = {
  \global
  \partial 4. s4.\mf | s1*9/8 | s1*9/8\< | s16 s\! s4 s4. s4.\< |
  s4.\! \tag #'s { s4 s8\> s4. | s2.\!  s4.} \tag #'a \tag #'t \tag #'b { s4. s | s1*9/8 } | s2. s4.\f | s1*9/8 |
  
  \repeat unfold 6 { s1*9/8 | }
  s2. \key a \minor s4.\p | 
  \repeat unfold 5 { s1*9/8 | }
  
  \tag #'s { s2. s4.\> | s1*9/8\! } \tag #'a \tag #'t \tag #'b {s1*9/8*2} | s1*9/8 | s4. s2.\cresc |
  s1*9/8 | s\dim | s | s\p | s |
  s1*9/8*4 \key a \major |
  
  s1*9/8*2 | s4. s2.\< | s4 s8\! s2. | s2. \tag #'s { s4. } \tag #'a \tag #'t \tag #'b { s4.\p } |
  s1*9/8*4 | \partial 2. s2. \bar "|."
}

nSopran = \relative c'' {
  \global
  cis8([ d]) fis | e4.~ e4 a,8 \grace cis16 a8([ gis]) a | cis4. b b8([ cis]) b | e4. cis b8([ cis]) b |
  e4.~ e4 cis8 b4 a8 | b4( a8 gis4) a8 gis4 a8 | cis4.\fermata b\fermata e4 e8 | e4.~ e4 b8 e,4 a8 |
  
  a4. gis fis'4 e8 | e4.( dis4) cis8 b4 a8 | a4. gis e'4 e8 | e4.~ e4 b8 gis4 a8 |
  cis4. b e4 e8 | e4.~ e4 gis,8 b4 a8 | a4.\fermata gis\fermata c4 gis8 | gis4.( a4) c8 e4 d8 |
  c4. b e4 b8 | b4.( c4) e8 g4 f8 | dis4. e e4 d8 | d4( c8 b4) a8 g4 a8 |
  
  a4. g e'4 d8 | c4( b8 a4) g8 fis4 g8 | g4. fis fis4 c'8 | c4.( b4) a8 gis4 d'8 |
  d4.( c4) b8 ais4 e'8 | dis4( g8 fis4) dis8 e4 ais,8 | ais4. b r | b2. b4. | e2. d4( c8) |
  c2. b4( a8) | a4. gis c4 gis8 | gis4.~ gis4 a8 \grace b16 a8([ gis]) a | c4.\fermata b\fermata b8([ cis]) b |
  
  e4. cis b8([ cis]) b | e4.~ e4 cis8 b4 a8 | b4( a8 gis4 a8) gis4( a8) | cis2.( b4.) | a2. r4. |
  R1*9/8 | r2. a4 e'8 | e4.( d4) cis8 d4 f,8 | a2.( f4.) | e2.\fermata
}

nAlt = \relative c'' {
  \global
  a4 a8 | a4.~ a4 e8 dis4 dis8 | dis4. e e4 e8 | e4. e e4 e8 |
  e4. e r | r dis dis | dis\fermata e\fermata e8([ fis]) a | a4. gis gis8([ a]) cis |
  
  cis4. b fis4 ais8 | ais4.( b4) a8 gis4 fis8 | dis4. e r | r r e4 fis8 |
  a4.( gis) e4 fis8 | a4. gis d4 cis8 | d4.\fermata d\fermata c4 d8 | d4. c a'4 a8 |
  g4. g b4 gis8 | gis4. a g4 b8 | b4. c r | r2. e,4 e8 |
  
  e2. r4. | r2. e4 e8 | cis2. fis4 fis8 | fis4. g gis4 gis8 |
  gis4. a ais4 ais8 | b2.~ b4 g!8 | g4. fis r | g2. f!4. | e2. e4. |
  d2. d4. | e e c4 d8 | d4.~ d4 dis8 dis4 dis8 | dis4.\fermata e\fermata e4 e8 |
  
  e4. e e4 e8 | e4. e r | r d d | d2.~ d4. | cis2. e4 g8 |
  g4.( f4) e8 f4 d8 | f4.( e) g | f2.~ f4 d8 | f2.( d4.) | cis2.\fermata 
}

nTenor = \relative c' {
  \global
  e8([ b]) d | cis4.~ cis4 cis8 a4 a8 | a4. gis gis8([ a]) gis | cis4. a gis8([ a]) gis |
  cis4. a r | r a a | a\fermata gis\fermata gis8([ a]) cis | cis4. b b8([ cis]) e |
  
  e4. d d4 cis8 | cis4.( b4) dis8 e4 b8 | b4. b r | r r e4 e8 |
  e4.~ e4 b8 gis4 a8 | cis4. b e4 e8 | e2.\fermata a,4 b8 | b4. a c4 d8 |
  e4. d e4 d8 | d4. c d4 g8 | g4. g r | r2. c,4 c8 |
  
  b2. r4. | r2. e4 e8 | e2. es4 es8 | es4. d d4 f!8 |
  f4. e e4 g8 | fis4( e8 dis4) fis8 g4 e8 | e4. dis r | e2. d!4. | c2. g4. |
  a2. gis4( a8) | c4. b a4 b8 | b4.~ b4 c8 b4 a8 | a4.\fermata gis\fermata gis8([ a]) gis |
  
  cis4. a gis8([ a]) gis | cis4. a r | r a a | a( gis2.) | a cis4 e8 |
  e4.( d4) cis8 d4 b8 | d4. cis2. | d2. d4. | d a2.~ | a\fermata
}

nBass = \relative c' {
  \global
  a4 a8 | a4.~ a4 a8 fis4 fis8 | e4. e d4 d8 | cis4. cis d4 d8 |
  cis4. cis r | r fis b, | e\fermata e\fermata e4 e8 | e2. e4 e8 |
  
  e2. fis4. | b,2. cis4( dis8) | e4. e r | R1*9/8 |
  r2. e4 e8 | e4.~ e4 b8 gis4 a8 | b4.\fermata e\fermata e4 e8 | f!2. fis4 fis8 |
  g4. g gis4 e8 | a4.~ a4 a8 b4 g8 | c4. c r | r2. c4 c8 |
  
  b2. r4. | r2. b4 b8 | ais2. a4 a8 | g4.~( g4 fis8) e4. |
  a4.~( a4 g8) fis4. | b~ b~ b4 b8 | b4. b r | g2. g4. | c,2. c4. |
  f2. f4. | e e e4 e8 | f!4.~ f4 f8 f4 f8 | e4.\fermata e\fermata d4 d8 |
  
  cis4. cis d4 d8 | cis4. cis r | r fis f | e2.~ e4. | a,2.~ a4. |
  a'2. a4. | a2.~ a4.~ | a2. a4. | a,2.~ a4. | a2.\fermata
}