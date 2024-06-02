\version "2.22.1"

global = {
  \key d \minor
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark.font-size = #5
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
}

dTutti = {
  \global
  \tempo "Moderato" 4=96  s1\p | s | \tag #'s \tag #'a \tag #'b {s} \tag #'t {s4 s2\< s8 s\!} |
  \tag #'s \tag #'a {s2.\< s16 s\! s8} \tag #'t {s1} \tag #'b {s2 s4.\< s16 s\! } | s2 \tag #'s \tag #'t \tag #'b {s2\cresc | s} \tag #'a { s2 | s2\cresc } s2 |
  
  s s4.\< s16 s\! | \tag #'s \tag #'t \tag #'b {s2\f} \tag #'a {s4 s\f} s2 | \tag #'s \tag #'a \tag #'t {s2} \tag #'b {s2\dim} s2\p | s1 |
  \tag #'s { s2\< s\! | s } \tag #'a \tag #'b { s2. s4\< | s8 s\! s4 s2 | s2. s4\cresc } \tag #'t { s4 s2\< s8 s\! | s2} \tag #'s \tag #'t { s2 | s4 s\cresc s2 } | s1 |
  s | \tag #'s \tag #'t \tag #'b {s2\> s16 s\! s8 s4 } \tag #'a {s1} | \mark \default s2 \tag #'s \tag #'b { s2 | s1 } \tag #'a { s2 | s1\p } \tag #'t {s2\p | s1 } |
  
  \tag #'s {s1\p | s} \tag #'a \tag #'t { s1*2 } \tag #'b { s1 | s\p } | s\cresc |
  s | s4 s2.\< | s2\sfz \tag #'s \tag #'a {s | s4\mf} \tag #'t \tag #'b {s2\mf | s4 } s8 s\< s4. s8\! |
  s1\> | s\p | s | s\< | s4.\> s8\! s2 |
  
  s1 | s\cresc | s2.\< s8 s\! | s2. s4\p | s1 |
  s1\< | s2.\> s4\! | s1 | \mark \default s\p | s |
  \tag #'s \tag #'a {s1} \tag #'t {s8. s16\< s4 s8 s\! s4} \tag #'b {s8 s\< s4 s8 s\! s4} | s4.\> s8\! s2 | s2. s4\cresc | s1 |
  
  s | s\cresc | s\f | s\< | s2.\sfz s4\p |
  s1*5 |
  s2. s8 s\! | s2. \breathe \tempo "Con fuoco." 4=132 s4\f \bar "||" \key d \major s1*2 |
  
  s1 | s2 s\p | s s\cresc | s1 |
  s4 s2.\< | s2.\> s4\f | s1*2 |
  s1 | \mark \default s2 \tag #'s \tag #'a { s2\mf | s1 } \tag #'t \tag #'b { s2 | s2. s4\mf } | s1 |
  
  s | s4.\> s8\! s2 | s1*2 |
  s1\cresc | s | s\f | s |
  s2\> s8 s\! \tag #'s \tag #'a \tag #'t { s4} \tag #'b {s4\mf} | \mark \default \tag #'s { s1*2 | s2. s4\mf } \tag #'a { s1 | s2. s4\mf | s1 } \tag #'t { s2. s4\mf | s1*2 } \tag #'b {s1*3} |
  
  s1 | s4 s2.\cresc | s1 | s\f |
  s2 s\mf | s1 | \tag #'s { s1 | s4 s\f s2} \tag #'a \tag #'b {s1*2} \tag #'t { s4 s2.\f | s1} |
  \tag #'s \tag #'t {s1*3} \tag #'a {s4 s2.\f | s1*2} \tag #'b {s1 | s4 s2.\f | s1} |
  
  s1 | \tag #'s \tag #'a {s2\> s8 s\!} \tag #'t \tag #'b { s2.} s4\ff | \mark \default s1*2 |
  s1 | \tag #'s \tag #'a \tag #'b {s2 s\p} \tag #'t {s4. s8\p s2} | s1 | s4 s2.\cresc |
  s1 | s2. s4\ff | s1 |
  
  s1*2 | s2 s\p | s1 |
  s1*2 | s2 s\ff | s1 |
  s1*4 \bar "|."
}

nSopran = \relative c' {
  \global
  d4 d f e8 d | a'2 d,4 bes' | a r r f |
  a2 g4 d' | cis2 a4 a | e'2 e4 d |
  
  cis2 e4 fis | g1~ | g2 bes, | bes a4 g |
  f f d'2~ | d c4( bes) | a a f'2~ | f e4( d) |
  c2. c4 | d2 f,4 g | a2 r | R1 |
  
  g2 g4 g | a a a a | bes2 bes4 bes |
  c c c d | es2 es4 es | es2 r | a,4. a8 bes4 a |
  d1 | g,2 a | bes2. bes4 | bes bes bes( d) | d4.( g,8) g4 g |
  
  g2 a | bes bes4 bes | bes2 f' | e2. bes4 | bes bes a g |
  f2 e4 f | a2 g | e r | d4 d f e8 d | a'2 d,4 bes' |
  a r r a | bes2 a4 g | f f r f | f( d') c bes |
  
  a2 a4 a | a2 d4 e | f2 e | d d | g2. bes,4 |
  a2 a4 a | a2 g | f2. f4 | f2-> e4 e | e1 |
  e2 fis | g2.\fermata a4 | a4. a8 a4 a | d4. d8 d4 d |
  
  d2 g | fis a,4 a | b2. cis8([ d]) | cis2 cis4 cis | 
  d d d cis8([ d]) | fis2 e4 e | a2 fis4 e | d2 d4 d |
  g4. d8 d4 e | fis2 cis | d4( cis8[ d] fis4) e | d2 cis4 cis |
  
  d2 d | fis4.( d8) b4 b | cis2 cis | d cis |
  cis cis4 d8([ e]) | fis2 e4 e | a2 gis4 fis | e( cis a) d |
  cis2.( b4) | a r r2 | R1 | r2 r4 b |
  
  cis4. cis8 cis4 cis | d2 d | e e4 fis8([ g])  | g2 fis4 e8([ fis]) |
  g2 b,4 b | e4. g,8 g4 a | b r r2 | r4 b b b |
  g'4.( fis8) e4 e | e2. d8([ cis]) | b4 cis d d |
  
  g fis8 fis e4 d | fis2 e4 a, | a2 a4 a | d2 d4 d |
  d4. d8 d4 g | fis2 a, | b2. cis8([ d]) | cis2 cis4 d8([ e]) |
  d2. d4 | g( fis) e e | a2 fis4 e |
  
  d2 d4 d | g4. d8 d4 e | fis2 cis | d d |
  d4 b8 b  fis'4 e | d2 cis | d a | b d4 d |
  g b,8 b b4 e | d1( | cis2.) cis4 | d1\fermata |
}

nAlt = \relative c' {
  \global
  d4 d f e8 d | a'2 d,4 d | d r r d |
  es2 d4 g | a2 r | g4 g g g8 g |
  
  g4( a8[ bes]) a4 a | g d g a | bes2 g | g f4 e |
  d r r f | g2 g | f4 r r a | bes2 bes |
  bes4 a8([ g]) f2~ | f f4 e | e2 r | f2 f4 f |
  
  f f e e | e2 e4( fis) | g2 d4 bes' |
  bes bes a a | bes2 bes4 bes | c2 r | fis,4. fis8 fis4 fis |
  g2 g4 f | e2 fis | g2. g4 | g g g( bes) | bes4.( e,8) e4 e |
  
  e2 fis | g g4 g | g2 bes | bes2. e,4 | e e e e |
  d2 d4 d | d2 e | cis r | d4 d f e8 d | a'2 d,4 d |
  d r r es | es( g) f es | es es r es | d( bes') a g |
  
  g g f( e!) | a2 a4 g | f2 a4( g) | f2 bes | bes2. g4 |
  f2 es4 es | es2 es | d2. d4 | d2-> d4 d | cis1 |
  cis2 cis | cis2.\fermata a'4 | a4. a8 a4 a | d4. <a fis>8 <g e>4 <a fis> |
  
  <b g>2 <d b> | <d a> fis,4 fis | fis d g2~( | g4 e) a a |
  a g8([ fis]) g4 gis | a2 a4 a | a2 a4 a | a( fis) g a |
  b4. b8 b4 b | ais2 ais | b4( ais8[ b] ais4) ais | b2 cis4 ais |
  
  b2 b | d4.( b8) gis4 gis | a2 a | a4( b) a2 |
  fis4( gis) a a | a( gis) a a | a2 a4 a | a2. a4 |
  a2( gis) | e4 r r2 | r r4 d | e4. e8 e4 e |
  
  e( cis fis) cis' | cis4. cis8 b4 b | b2 b | a a4 a |
  g2 g4 fis | e4. e8 e4 e | fis r r2 | R1 |
  r4 b b b | ais4.( b8) cis4 ais | b ais b b8([ a]) |
  
  g4 a8 a b4 b | a2 a4 a | a2 a4 a | d2 <<\new Voice {\voiceOne a4 a } {\voiceTwo fis e8([ fis])}>> \oneVoice |
  <b g>4. <b g>8 <b g>4 <d b> | <d a>2 fis, | fis4 d g2~( | g4 e) a a |
  a( g8[ fis] b4) b | b( a) a a | <a cis>2 <a cis>4 <g cis> |
  
  <<{\voiceOne cis4( b8[ ais]) b4 c} \new Voice {\voiceTwo fis,2 fis4 fis}>> \oneVoice | <g b>4. <g b>8 <b d>4 <b cis!> | <ais cis>2 fis | fis fis |
  g a4 g | fis( a) g2 | fis fis | g fis4 fis |
  g g8 g g4 b | a1~ | a2. a4 | a1\fermata |
}

nTenor = \relative c {
  \global
  d4 d f e8 d | a'2 d,4 g | a a d2( |
  c) bes4 d | e2 cis4 cis | cis2 cis4 d |
  
  e2 e4 d | d1~ | d2 cis4( d) | e2 a,4 a |
  a a bes2~ | bes4 g c2~ | c4 cis d2~ | d4 bes g'2~ |
  g4 c, f e | d2 d4 d | cis2 a4 a | d2 d |
  
  c c | c c4 c | d2 bes |
  f' f | g g4 g | ges2 c,4 d | es es es es |
  d1 | d4( e) d( c) | bes( c) bes( a) | g a g( f) | e2\( c'4\) c |
  
  c2 c | bes4( c) bes a | g( c) d( f ) | g2. g,4 | g g a bes |
  a2 g4 a | c2 bes | a r | d,4 d f e8 d | a'2 d,4 g |
  a a d c | bes bes r bes | c( es) d c | d2 es4 d |
  
  cis2. cis4 | d(a) b cis | d2 c! | d d | cis2. cis4 |
  d2 c!4 c | bes2 bes | b! a | gis-> gis4 gis | a4. a8 a4 a |
  <a g>2 <a fis> | <a e>2.\fermata a4 | a4. a8 a4 a | d4. d8 d4 d |
  
  d2 d | d d4 d | d b e2~( | e4 cis) fis fis |
  fis d d d | d2 cis4 cis | cis2 cis4 cis | d2 d4 d |
  d4. d8 d4 b | cis2 r | r r4 cis | d( cis8[ d] fis4) e |
  
  d( cis) b a | gis2 e'4 e | e( d) cis( b) | a( gis) a a8([ b]) |
  cis4 b8 b a4 b8([ cis]) | d2 e4 cis | cis2 cis4 d | e2( cis4) fis |
  e2( d) | cis4 r r a | b4. b8 b4 b | b( d) cis( b) |
  
  b2 ais4 fis' | fis( d g) fis | e b g' e | e( a,) d c |
  b2 g4 g | g4. e'8 e4 e | dis4. b8 b4 b | g'4.( fis8) e4 d |
  cis4.( d8) e4 fis8([ g])  | cis,4. b8 ais4 fis' | fis4.( e8) d2 |
  
  d4 d8 d d4 d | d2-> cis4 a | a2 a4 a | d2 d4 d |
  d4. d8 d4 d | d4. d8 d4 d | d( b e2~ | e4 cis) fis fis |
  fis( d) d b8([ a]) | g4 a8([ b]) cis4 cis | cis2 a4 b8([ cis]) |
  
  d2 d4 d | d4. d8 b4 b | cis2 ais | b c! |
  b4 b8 b c4 b | a( fis') e2 | d d | d c |
  b4 d8 dis e4 g | fis1( | e2.) g4 | fis1\fermata |
}

nBass = \relative c {
  \global
  d4 d f e8 d | a'2 d,4 g | f r r2 |
  r4 fis g8 g bes4 | a2 a4 a | a2 a4 a |
  
  a2 cis4 c | bes2 bes4 a | g( f) e( d) | cis2 cis4 cis |
  d r r d | e2. e4 | f r r f | g2. g4 |
  a2 a, | bes bes'4 bes | a2 r | R1 |
  
  R1 | a2 a4 a | g g g g |
  f2 f | es4 es g g | a2 a4 bes | c c c c |
  bes1 | bes4( c) bes( a) | g( a) g( f) | e f e( d) | c2\( bes'4\) bes |
  
  bes4( c) bes( a) | g( a) g f | e2 d | c2. c4 | c2 cis |
  d d4 d | f,2 g | a r | d4 d f e8 d | a'2 d,4 g |
  f2. fis4 | g g r g | a( c) bes a | bes2 fis4 g |
  
  a( bes) a g | f2 f4 e | d2 a' | bes4( a) g( f) | e2. e4 |
  f2 fis4 fis | g2 g, | gis a | bes!-> bes4 bes | a1 |
  a2 a | a2. a'4 | a4. a8 a4 a | d4. d8 d4 c |
  
  b2 g | d d4 d | g2. e4 | a2 a4 fis |
  b b b b | a2 a4 g | fis2 fis4 fis | b2 b4 a |
  g4. g8 g4 g | fis2 r | r r4 fis | b( ais8[ b] ais4) cis |
  
  b( a!) gis fis | e2 d'4 d | cis( b) a( gis) | fis( eis) fis fis8([ gis]) |
  a4 gis8 gis fis4 e | d2 cis4 d8([ e]) | fis2 e4 d | cis2( fis4) d |
  e2 e4 e | a4. a8 a4 a | a a g g | g2 g |
  
  fis4 fis fis ais, | b2( b'4) a | g2 e4 d | c2 d4 d |
  e2 e4 d | c4. c'8 c4 c | b r r2 | R1 |
  R1 | r4 fis fis fis | d'4.( cis8) b2 |
  
  b4 a8 a g4 gis | a2-> a4 a | a2 a4 a | d2 d4 c |
  b4. b8 a4 g | d2 d | g2. e4 | a2. fis4 |
  b2 b4 g8([ fis]) | e4 fis8([ g]) a4 g | fis2 fis4 g8([ a]) |
  
  b2 b4 a | g4. g8 g4 g | fis2 fis | b a |
  g dis4 e | a2. ais4 | b2 c | b a |
  g g4 e | <<\new Voice = "vBassI" {\voiceOne a1~ | a2. a4 | a1\fermata} {\voiceTwo a2 fis4 d | a2. a4 | d1\fermata}>> |
}