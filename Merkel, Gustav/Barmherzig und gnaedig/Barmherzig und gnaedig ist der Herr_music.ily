\version "2.22.1"

global = {
  \key e \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark.font-size = #5
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \partial 4
}

dTutti = {
  \global
  \tempo "Andante" 4=96 s4\p | s1*3 |
  \tag #'s { s1 | s\< } \tag #'a { s1 | s2\< s8 s\! s4 } \tag #'t { s4 s2.\< | s8 s\! s2. } \tag #'b { s2. s4\< | s8 s\! s2. } | s2\> s8 s\! \tag #'s \tag #'a { s4\p | s1 } \tag #'t \tag #'b { s4 | s s2.\p } |
  
  s2. s4\cresc | s1 | s2. s4\f | s1 |
  \tag #'s \tag #'a { s4 s\dim s2 } \tag #'t \tag #'b { s2 s\dim } | s1 | \mark \default s2. s4\p | s1 | \tag #'s \tag #'a \tag #'b { s1 } \tag #'t { s4.\> s8\! s2 } |
  s1 | \tag #'s { s2. s4\< | s8 s\! s2. | s1 } \tag #'a { s2\< s8 s\! s4 | s1*2 } \tag #'t { s1 | s4 s4.\< s8\! s4 | s1 } \tag #'b { s1 | s2. s4\< | s16 s\! s8 s2. } |
  
  \tag #'s \tag #'a { s2. } \tag #'t \tag #'b { s2\> s8 s\! } s4\f | s1 | \mark \default s1\> | s2\! \tempo "Un poco mosso." 4=112 \tag #'s \tag #'a { s2 } \tag #'t \tag #'b { s2\mf } |
  \tag #'s { s1 | s2 s\mf } \tag #'a { s2 s\mf | s1 } \tag #'t \tag #'b { s1*2 } | s1 |
  s2. s4\cresc | s1 | s4 s2.\< | s1\ff |
  
  s | s\sf | s2 s\dim | s1 |
  \mark \default s2 s\f | s1*2 |
  s1 | s2 s\dim | s2. \tempo "Tempo primo" 4=96 s4\p | s1 |
  
  \tag #'s \tag #'t \tag #'b { s2 } \tag #'a { s4\> s8 s\! } s2 | s1 | \mark \default \tag #'s { s1 | s4 s2.\< } \tag #'a { s2. s4\< | s4 s8 s\! s2 } \tag #'t { s4 s2\< s8 s\! | s1 } \tag #'b { s2. s4\< | s16 s\! s8 s2. } |
  s2\> s8 s\! \tag #'s \tag #'a { s4\p | s2 } \tag #'t \tag #'b { s4 | s s\p } s2 |
  s s\cresc | s1 | s2. s4\mf | s2 \tag #'s \tag #'a { s2\cresc | s } \tag #'t \tag #'b { s2 | s\cresc }
  
  s2 | s1 | s\dim |
  s2.\> s8 s\! | \tag #'s \tag #'a \tag #'t { s4 s2.\pp | s2 } \tag #'b { s1 | s4 s\pp } s2\cresc | s1 |
  s4\sfz\> s2 s8 s\! | s1\p | s2.\< s8 s\! | \tag #'s \tag #'a \tag #'b { s1\> | s2. s4\! } \tag #'t { s1 | s2.\> s4\! } | s1 \bar "|."
}

nSopran = \relative c' {
  \global
  e4 | gis2 gis4 b | a2-> gis4 fis | e e fis gis8([ a]) |
  gis4 r r b | cis2 cis4 dis | e2 b4 gis | fis fis fis gis |
  
  a2 a4 a | gis gis gis a | b2 b4 b | e2 e |
  e4 dis cis b | b2( ais) | b r4 a | gis2 gis4 b | a2-> gis4 fis |
  e e fis e8([ fis]) | gis4 r r gis | cis b a gis | a2 a |
  
  a2-> gis4 gis | gis( e' dis) cis | b2( ais) | gis4 r r2 |
  R1 | r2 gis4 gis | ais b8([ cis]) dis4 cis |
  cis2 b4 b | e2 dis4 cis | b b b b | gis'2 fis4 e |
  
  e2 dis4 dis | fis2 dis4 cis | b2 b4 b | e2 b4 cis |
  dis2 b4 b8 b | b2 fis'4 e | dis4. b8 b4 b8 b |
  b4 b e4. fis8 | e2 dis4 cis | cis2 b4 a | gis2 gis4 b |
  
  a2-> gis4 fis | e e fis gis8([ a]) | gis4 r r b |
  cis2 cis4 dis | e2 b4 gis | fis fis fis gis |
  a2 a4 a | gis gis gis a | b2 b4 b | b2 a |
  
  a4. a8 fis'4 e | dis( cis b) a | gis4. gis8 gis4 a |
  gis2( fis4. e8) | e4 e fis gis | a( gis) a( b) | cis( b) cis( dis) |
  e4.( b8) b2 | a a | gis4 gis gis a | gis1( | fis) | e\fermata |
}

nAlt = \relative c' {
  \global
  e4 | e2 e4 e | e2-> dis4 dis | e e e dis |
  e r r b' | b( a8[ gis]) a4 gis8([ fis]) | e4( fis) gis e | e dis8([ cis]) dis4 eis |
  
  fis2 fis4 fis | fis e!8([ dis]) e4 fis | fis( e8[ dis]) e4 gis8([ fis]) | e4 fis gis fis |
  fis2 gis | fis1 | fis2 r4 fis | e2 e4 e | e2-> dis4 dis |
  e dis cis cis | dis dis gis fis | e2 eis | fis fis |
  
  fis2-> fis4 e8([ dis]) | e4 gis8([ fisis]) gis4 ais | gis2.( fisis4) | dis r r2 |
  r dis4 dis | dis eis8([ fisis]) gis4 gis | gis2 fisis4 fisis8([ gis]) |
  ais2 gis4 gis | ais2 ais4 ais | gis2 gis4 fis | gis( b) ais cis |
  
  cis2 b4 b | b2 b4 ais | ais( gis8[ fisis]) gis4 gis | gis2 gis4 g |
  fis2 b4 b8 b | b2 a!4 a | b4. b8 b4 b8 b |
  b4 b a a | a2 a4 a | a2 fis4 fis | e2 e4 d! |
  
  cis( dis!8[ e]) dis4 dis | e e e dis | e r r b' |
  b( a8[ gis]) a4 gis8([ fis]) | e4( fis) gis e | e dis8([ cis]) dis4 eis |
  fis2 fis4 fis | fis4 e!8([ dis]) e4 fis | fis( e8[ dis]) e4 gis8([ fis]) | e4( gis) fis( e) |
  
  dis2 dis4( e) | a( gis) fis2 | fis4. fis8 e4 e |
  e2( dis) | e4 e e e | e2 e | e4( dis) e( fis) |
  e2 e | e dis | e4 fis e e | e1~( | e2 dis) | b1\fermata |
}

nTenor = \relative c' {
  \global
  gis4 | b2 b4 gis | cis2-> b4 a | gis b cis b |
  b b e2~ | e4 cis2 b8([ a]) | gis4( a) b r | r b b b |
  
  a a cis b8([ a]) | cis4 cis cis cis | b2 b4 gis | gis ais b ais |
  b2 e4( dis) | cis2( dis4 e) | dis2 r4 b | b2 cis4 gis | a( b8[ cis]) b4 a |
  gis gis a cis | bis r r2 | r4 gis cis b | a cis bis cis |
  
  dis4.( cis8) bis4 bis | cis2( dis4) e | dis2( cis~ | cis4) b8([ ais]) b4 gis |
  ais b8([ cis]) dis4 cis | cis2 b4 ais8([ b]) | cis4 b ais ais8([ gis]) |
  fisis4( gis8[ ais]) b4 cis8([ dis]) | cis4( ais dis2~ | dis4) dis gis,8([ ais]) b4 | e2 cis4 fis |
  
  fis2 fis4 fis | dis2 fis4 e | dis2 dis4 b | b2 b4 ais |
  b2 b4 b8 b | b2 dis4 e | fis4. b,8 b4 b8 b |
  b4 b e e | fis2 fis4 e | fis2 b,4 b | b2 b4 gis |
  
  a2-> b4 a | gis b cis b | b b e2~ |
  e4 cis2 b8([ a]) | gis4( a) b r | r b b b |
  a a cis b8([ a]) | cis2 cis4 cis | b2 b4 b | cis2 cis |
  
  b4 fis a gis | fis( e' dis) dis | dis gis, cis cis |
  b2( a) | gis4 gis a b | cis( b) a( gis) | a b b b |
  b2 b | cis b | b4 bis cis cis | b!2( gis4) e | b'2.( a4) | gis1\fermata |
}

nBass = \relative c {
  \global
  e4 | e2 e4 e | a,2-> b4 b | cis gis a b |
  e r r gis | a2 fis4 b | e,2 e4 r | r b' a gis |
  
  fis fis a gis8([ fis]) | cis'4 cis b a | gis2 gis4 e8([ dis]) | cis2 cis |
  dis4 dis e e | fis1 | b,2 r4 dis | e( dis) cis cis | fis2-> b,4 b |
  cis b a a' | gis r r2 | r r4 cis, | fis e dis cis |
  
  bis( cis) dis gis, | cis ais b cis | dis1( | gis4) dis gis2~ |
  gis fisis4( eis8[ fisis]) | gis4 gis, r2 | r dis'4 dis |
  dis eis8([ fisis]) gis4 gis | gis2 fisis4 fisis | gis \once \set Staff.extraNatural = ##t fis! e dis | cis2 fis4 ais |
  
  b2 b,4 b | b'2 b4 fis | gis2 b4 gis8([ fis]) | e2 e4 e |
  b2 b4 b8 b | b'2 c4 c | b4. b,8 b4 b8 b |
  b'4 b c c | b2 b,4 cis | dis2 dis4 dis | e2 e4 eis |
  
  fis2-> b,4 b | cis gis a b | e r r gis |
  a2 fis4 b | e,2 e4 r | r b' a gis |
  fis fis a gis8([ fis]) | cis'2 b4 a | gis2 gis4 e8([ dis]) | cis2 fis |
  
  b, b4 b | b2. b4 | bis bis cis a |
  b!1 | cis4 r r2 | r4 d cis b | a2 a |
  gis gis' | fis b, | e4 dis cis a | b1~ | b | <e e,>1\fermata |
}