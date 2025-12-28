\version "2.24.3"

global = {
  \key e \minor
  \time 6/8
  \tempo "Moderato" 4.=48
  \autoBeamOff
  \dynamicUp
}

common = {
  \global
  \partial 8 s8\p | s2.*2 |
  s2.*4 |
  s4.\> s4.\> | s4.\> s8 s\! s | s2.*2 |
  
  s2. | \tag #'s \tag #'t { s2. } \tag #'a \tag #'b { s2.\cresc } | s4. s4 s8\f | s2.*2 |
  s2. | s4. s4 s8\p | s2.*2 |
  s2.\cresc | s4.\f s4 s8\p | s2.*2 |
  
  s2.*4 |
  s2.*5 |
  s2. | \tag #'s { s4. s4 s8\f | s2. | s2.\dim | s2.\p } \tag #'a \tag #'t \tag #'b { s2.\f | s2.*2 | s4. s\p } |
  
  s4. s4 s8\f | s2.*3 | s4. s4 s8\p \key e \major \time 4/4 \tempo "Allegro molto vivace" 4=128
  s2. s4\< | s2\> s4\! s\f | s1 |
  s2. s4\p | s2. s4\< | s2\> s\! | s2 s\cresc
  
  \tag #'s { s2. s4\f | s1 } \tag #'a \tag #'t \tag #'b { s1 | s4 s2.\f } s1*2 | s2. s4\p |
  s2 s\> | s16 s\! s8 s2 s4\f | s1 |
  s2. s4\p | s1 | \tag #'s \tag #'t \tag #'b { s1*2 } \tag #'a { s2. s4\f | s1 }
  
  \tag #'s { s2. s4\cresc | s1 | s2. s4\f  | s1 | s2. s4\dim } \tag #'a \tag #'t \tag #'b { s1 | s4 s2.\cresc | s1*3 } |
  s1 | s2. s4\f | s1*3 |
  s1*5 |
  
  s1 | s2. s4\f | s1*4 \bar "|."
}

nSopran = \relative c'' {
  \global
  b8 | g a ais b c b | e4. b4 b8 |
  a b c c([ d]) c | fis4. r8 b, b | b([ g']) fis e b g | fis4. e4 g8 |
  b([ a]) g b a g | fis4.~ fis4 r8 | r4. r4 b8 | b4( e8) c4 ais8 |
  
  ais4 b8 r4 b8 | b c b e([ c]) a | g4.( fis4) a8 | c4.( b4) a8 | g'4( fis8 e4) c8 |
  b4.~ b8 e dis | dis4.( e4) b8 | e d c c([ b]) a | gis4( b8) a4 gis8 |
  e'([ d]) c c b a | f'4.~ f4 g,8 | e([ f]) fis g a g | c4. g4 g8 |
  
  b8([ g]) a b c b | e4. r4 ais,8 | b([ g']) fis e b g | fis4. e4 g8 |
  b([ a]) g b a g | fis4.~ fis4 r8 | r4. r4 b8 | b4( e8) c4 ais8 | ais4 b8 r4 b8 |
  b4( e8) c4 b8 | ais4. r4 ais8 | b4( g'8 e4) c8 | ais4( b8) e,4 fis8 | g4.~( g4 fis8) |
  
  e4. r4 b'8 | c4.~ c8 b a | e'4.( dis4) b8 | c4.~ c8 b a | g'4.\fermata( fis4\fermata) b,8 |
  b4 gis8 a b4 cis8 dis | e4.( cis8) b4 b8([ gis']) | gis([ fis]) dis cis b4 b |
  b2 r4 b | b gis8([ a]) b4 cis8 dis | e4.( cis8) b4 b | b2 ais4 cis |
  
  cis2 bis4 gis | fis'1( | e4 dis) cis gis | b2( cis4.) dis8 | cis2( b4) b |
  b4 gis8 a b4 cis8 dis | e4.( cis8) b4 b8([ gis']) | gis([ fis]) dis cis b4 b |
  b2 r4 b | b gis8([ a]) b4 cis8 d | bis2 cis4 r | R1 |
  
  r2 r4 dis8([ cis]) | cis4 b2 dis8([ cis]) | cis4 b2 b4 | e2 e4 e | fis( e) cis a |
  fis a8 cis b4. a8 | a2( gis4) b | e2 e | fis4( e) cis a | eis( fis) a cis |
  e1~( | e4 b) a( fis) | e2 r4 e | b' b b a8 gis | gis2 a4 e |
  
  d' d8 d d4 cis8([ bis]) | bis2( cis4) e | a( fis) dis b | a2. b4 | a1( | gis2) r |
}

nAlt = \relative c'' {
  \global
  g8 | e fis g g a g | e([ fis g~] g) fis e |
  fis g a a([ b]) a | fis([ g a~] a) g fis | e4 e8 e e e | dis4. e4 e8 |
  g([ fis]) e g fis e | e4.~ e4 fis8 | fis4( a8) g4 fis8 | e4 e8 r4 e8 |
  
  dis4( fis8) e4 dis8 | e4.~ e4 e8 | d4.~ d4 fis8 | fis4.~ fis4 fis8 | g4( a8 b4) a8 |
  g4. a4 a8 | a4.( g4) gis8 | a4. fis4 fis8 | e4( f8) e4 d8 |
  e4. a8([ gis]) a | a4.( g4) b,8 | c([ d]) dis e f e | c([ d e~] e) d c |
  
  b8([ e]) fis g a g | e([ fis g~] g[ fis]) e | e4. e4 e8 | dis4. e4 e8 |
  g([ fis]) e g fis e | e4.~ e4 fis8 | fis4( a8) g4 fis8 | e4 e8 r4 e8 | dis4( fis8) e4 dis8 |
  e4.~ e4 r8 | g4. g4 g8 | g2. | R2. | r4. dis |
  
  e4. r4 g8 | g4.~ g8 g g | a4. r4 fis8 | g4.~ g8 g g | a4.~\fermata a4\fermata dis,8 |
  e4 e8 e e4 e8 e | a2 gis4 gis | a a2 gis8([ e]) |
  dis2 r4 dis | e e e e8 e | a2 gis4 g | fis2 e4 e |
  
  e2 dis4 r | r gis gis gis | gis2 gis4 gis | fis2( e4.) fis8 | e2( dis4) dis |
  e4 e8 e e4 e8 e | a2 gis4 gis | a a2 gis8([ e]) |
  dis2 r4 dis | e e e e8 e | e2 e4 a8([ gis]) | gis4 fis2 a8([ gis]) |
  
  gis4 fis2. | r4 dis fis dis | r dis fis dis | b'2 bis4 bis | cis2 a4 r |
  r cis, e dis | dis2( e4) fis | e2 gis4 gis | a2 e4 r | R1 |
  r2 cis | e dis | b r4 e | e e e e8 e | e2 e4 e |
  
  e e8 e e4 e | e2. a4 | fis2 fis~ | fis fis | dis1( | e2) r |
}

nTenor = \relative c' {
  \global
  b8 | b4. b4 b8 | g([ a b~] b) a g |
  c4. c4 c8 | a([ b c~] c) b a | g4 g8 b b b | c4. b4 b8 |
  g([ a]) b g a b | c4.( cis4) e8 | dis4. dis4 dis8 | b4 b8 r4 g8 |
  
  fis4( a8) g4 fis8 | c'4( gis8 a4) c8 | b4.( a4) d8 | a4.( b4) c8 | b4( dis8 e4) e8 |
  e4. fis4 fis8 | fis4.( e4) d8 | c b a dis4 dis8 | e4( d!8) c4 b8 |
  c([ b]) a e' d c | c4.( b4) g8 | g4. g4 g8 | e([ f g~] g) f e |
  
  g4. e4 e8 | g4.~ g4 g8 | g4. b4 b8 | c4. b4 b8 |
  g([ a]) b g a b | c4.( cis4) e8 | dis4. dis4 dis8 | b4 b8 r4 g8 | fis4( a8) g4 fis8 |
  c'4.~ c4 r8 | e4. e4 e8 | e2. | R2. | r4. a,4. |
  
  g4. r4 e'8 | e4.~ e8 e e | fis4. r4 dis8 | e4.~ e8 e e | dis4.~\fermata dis4\fermata a8 |
  gis4 b8 a gis4 a8 b | cis4.( dis8) e4 e | dis dis2 b8([ gis']) |
  gis([ fis]) dis([ cis]) b4 a | gis b8([ a]) gis4 a8 b | cis4.( dis8) e4 e | dis2 cis4 ais |
  
  ais2 bis4 r | r bis cis dis | e( bis) cis d | dis2 ais | ais( b4) a |
  gis4 b8 a gis4 a8 b | cis4.( dis8) e4 e | dis dis2 b8([ gis']) |
  gis([ fis]) dis([ cis]) b4 a | gis b8([ a]) gis4 a8 b | gis2 a4 r | r cis e cis |
  
  r4 cis e cis | r b dis b | r b dis b | e2 e4 e | e2 e4 r |
  r a, gis dis | fis2( e4) a | gis2 b4 bis | cis2 a4 r | R1 |
  r2 fis | gis fis4( a) | gis2 r4 gis | d' d d cis8 bis | bis2 cis4 cis |
  
  b4 b8 b b4 a8([ gis]) | gis2( a4) cis | dis2 dis~ | dis dis | b1~ | b2 r |
}

nBass = \relative c {
  \global
  e8 | e4. e4 e8 | e4. e4 e8 |
  e4. e4 e8 | dis4. dis4 dis8 | e4. g4 g8 | a4. g4 g8 |
  e([ fis]) g e fis g | a4.( ais4) fis8 | b4( c8) b4 a8 | g4 g8 r4 e8 |
  
  b4. b4 b8 | c4.~ c4 c8 | d4.~ d4 d8 | dis4.~ dis4 dis8 | e4( fis8 g4) a8 |
  b4. b,4 b8 | e4.~ e4 e8 | e4. e4 e8 | e4. e4 e8 |
  e4. e4 e8 | d4.( g4) g,8 | c4. c4 c8 | c4. c4 c8 |
  
  b4. b4 b8 | ais4. cis | b g'4 g8 | a4. g4 g8 |
  e([ fis]) g e fis g | a4.( ais4) fis8 | b4( c8) b4 a8 | g4 g8 r4 e8 | b4. b4 b8 |
  c4.~ c4 r8 | c'4. c4 c8 | b2. | R2. | r4. b, |
  
  e4. r4 b'8 | a4.~ a8 b c | b4. r4 b,8 | a4.~ a8 b c | b4.~\fermata b4\fermata b8 |
  e4 e8 e e4 e8 e | e2 e4 e | b b2 e4 |
  b2 r4 b | e e e e8 e | e2 e4 e | fis2 fis4 fisis |
  
  gis2 gis4 r | r gis, ais bis | cis( dis) e eis | fis2 fis | b,2. b4 |
  e4 e8 e e4 e8 e | e2 e4 e | b b2 e4 |
  b2 r4 b | e e e e8 e | a,2 a4 r | r a' cis a |
  
  r4 a cis a | r a b a | r a b a | gis2 gis4 gis | a2 a4 r |
  r a, b b | cis2. dis4 | e2 e4 e | a,2 a4 r | R1 |
  r2 ais | b b | e r4 e | e e e e8 e | e2 e4 e |
  
  e e8 e e4 e | e2. e4 | e2 e~ | e e | e1~ | e2 r |
}