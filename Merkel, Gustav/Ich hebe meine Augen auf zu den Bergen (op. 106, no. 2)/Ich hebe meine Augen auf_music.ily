\version "2.22.1"

global = {
  \key f \major
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
  \tempo "Moderato" 4=120 \tag #'s { s4 | s2. s4\p | s1 } \tag #'a { s4\p | s1*2 } \tag #'t { s4 | s s\p s2 | s1 } \tag #'b { s4 | s1 | s4 s\p s2 } |
  s1 | s2 s\cresc | s1 |
  
  s | s\f | s2\> s8 s\! \tag #'s \tag #'t \tag #'b { s4\p } \tag #'a { s4 } |
  \tag #'s { s1 | s2. s4\cresc } \tag #'a { s2. s4\p | s s2.\cresc } \tag #'t \tag #'b { s1 | s2 s2\cresc } | s1 |
  s2. s4\cresc | s1 | s\ff | s |
  
  \mark \default s2 s\f | s2. s4\< | s16 s\! s8 \tag #'s \tag #'a \tag #'b { s2 s4\mf } \tag #'t { s2.\mf } | s1 |
  s1 | s2 s\cresc | s2 s\< | s8 s\! \tag #'s \tag #'a \tag #'b { s2 s4\mf } \tag #'t { s2.\mf } |
  s1*3 | \tag #'s \tag #'t \tag #'b { s2 s\p } \tag #'a { s4 s2.\p } |
  
  s1*3 |
  s2 s\pp | s2\> s4\! s | \mark \default
  \tag #'s { s1 | s2. s4\p | s1*2 } \tag #'a { s2. s4\p | s1*3 } \tag #'t { s1 | s4 s2.\p | s1*2 } \tag #'b { s1*2 | s4 s2.\p | s1 } |
  
  s4 s2.\cresc | s2 s\< | s1\! |
  s2.\> s8 s\! | \mark \default \tag #'s \tag #'a { s2. s4\p | s1 } \tag #'t {  s4 s2.\p | s1 } \tag #'b { s1 | s2. s4\p } |
  s1 | s\cresc | \tag #'s \tag #'b { s2. s4\f } \tag #'a \tag #'t { s4 s2.\f } |
  
  s1 | s2.\> s8 s\! | \tag #'s { s4 s2.\p } \tag #'a \tag #'t \tag #'b { s1 } |
  \tag #'s { s1*3 } \tag #'a { s4 s2.\p | s1*2 } \tag #'t { s1 | s4 s2.\p | s1 } \tag #'b { s1*2 | s4 s2.\p } |
  s1*2 | \mark \default s4 s2.\cresc | s1\f |
  
  s2\> s8 s4.\! | s4 s2.\p | s1 | s1\< |
  s2.\> s8 s\! | s1 | s\< | s2\> s8 s\! s4\cresc |
  s1 | s2. s4\f | s1 | s2.\> s8 s\! | \partial 2. s2. \bar "|."
}

nSopran = \relative c' {
  \global
  r4 | r2 r4 f | g4. g8 g4 g |
  bes4. bes8 bes4 bes8 bes | bes4 a bes c | d4. d8 e4 e8 e |
  
  f2 a,4 a8 a | f'4. f8 f4 f8 f | e2 c4 c |
  c c8 c f4 e | d2. d4 | d2( c4) d |
  e r r c | c2 c4 c | a'2 g4 f | e2 d |
  
  c2 c4 c | c4. c8 c4 c | es2 r4 d | bes2 bes4 bes |
  es2 d4 c | bes2 a4 a | d4. d8 d4 d | f2 r4 e |
  c2 c4 c | f2 e4 d | c2( b) | a4 r a2 |
  
  bes bes4 a | g2 a | bes2. bes4 |
  bes a a a8 a | g2 g4 a8([ g]) | g2 r |
  r r4 f | g g8 g g4 g | bes4. bes8 bes2 |
  
  bes4 a bes c | d2 e4 e | f4. a,8 a4 a |
  f'4. d8 c4 bes | a r r a | bes a8 a d4 d |
  c4. c8 c2 | c4 c es es | d2. d4 |
  
  d d8 d g4 f | e2. e4 | f c f e |
  d2. c4 | bes2 bes4 bes | bes2. bes4 |
  bes2 a4 bes | a2( g4) g | f f a d | f4. f8 e2 |
  
  d4. d8 c4 r | r bes2-> bes4 | a4. a8 a4 a | g2 a |
  bes2. e,4 | f2 r4 f | f2 g | a4. f8 f4 f |
  f2 bes | a4. f8 f4 f | a2 c | f2. f,4 | f2.\fermata |
}

nAlt = \relative c' {
  \global
  c4 | f4. f8 f4 e | d4. f8 e4 d |
  c e f g8 g | f4 f f f | f4. f8 g4 g |
  
  f2 f4 f8 f | a4. a8 as4 as8 as | g2 g4 r |
  r2 r4 f | f f8 f bes4 a | g2. g4 |
  g e8([ f]) g4 bes8([ a]) | g2 c4 bes | a( b) c a | g( c2) b4 |
  
  g2 g4 g | g4. g8 fis4 g | a2 r4 fis4 | g2 g4 g |
  g4.( fis8) g4 a | g2 fis4 fis | g4. g8 a4 a | b2 r4 gis |
  a2 a4 a | a4.( gis8) a4 b | a2.( gis4) | a4 e f f8 f |
  
  e4 f g f | f e fis4.-> fis8 | g4. g8 g4 g |
  g g f f8 f | f2 f4 f | e2 r4 c |
  f f8 f f4 e | d4. f8 e4( d) | c( e) f( g) |
  
  f2 f | f4. f8 bes4 bes | a4. f8 f4 f |
  f bes g g | f r r f | f2 f4 bes8([ a]) |
  g2 a4 g | fis4. fis8 fis4 g | a a bes a8 a |
  
  g4. fis8 g4 g | g4. bes8 a4 g | f r r2 |
  r4 f bes a | g2. g4 | g2. g4 |
  g2( f4) f | f2. e4 | d d f f | a4. a8 a2 |
  
  f4. g8 a4 r | r g2-> g4 | g4. g8 f4 f | f2 f |
  f4( d e) c | c2 r4 f | f2 e | f4. c8 c4 c |
  f2 f | f4. c8 c4 c | f2 f | <f c>2. c4 | c2.\fermata |
}

nTenor = \relative c' {
  \global
  r4 | r a d c | bes4. bes8 bes4 a |
  g( c) c c | c f e es | d d d cis8 cis |
  
  d4( a) a d8 d | d4. d8 d4 d8 d | e2 e4 e |
  f2 c4 cis | d2 d4 d | d d8 d g4 f |
  e c8([ d]) e4 g8([ f]) | e4( d) c c | c( d) e c | c( e g) f |
  
  e2 e4 e | es4. es8 es4 es | c a d2~ | d g,4 g |
  g( a) bes es | d2 d4 d | d4. d8 f4 f | d b e2~ |
  e a,4 a | a( b) c f | e2( d) | c4 r c2 |
  
  des des4 c | c2 c4 c | bes4. d8 cis4 d |
  e e d c!8 c | b2 b4 b | c2 r |
  r4 a d c8 c | bes4. bes8 bes4 a | g( c) c c |
  
  c( f) e( es) | d d d cis | d a f' es |
  d4. f8 e4 c | c c f es8 es | d4 c bes f' |
  e2 e4 e | es2 c | c4 c d c8 c | 
  
  bes4 c d d | des4. des8 c4 c | c r r2 |
  R1 | r4 d g f | e2( d4) d |
  c2 c4 d | c2( bes4) bes | a a a a | d4. d8 c2 |
  
  d4. e8 f4 r | r d2-> cis8([ d]) | e4. e8 d4 d | d2 c |
  bes( g4) a8([ bes]) | a2 r4 a | d2 des | c4. a8 a4 a |
  bes2 d | c4. a8 a4 a | c2 c | a2. a4 | a2.\fermata |
}

nBass = \relative c {
  \global
  r4 | R1 | r4 g g' f |
  e( c) d( e) | f4. f8 g4 a8 a | bes4 bes bes a |
  
  d,2 d4 d'8 d | c4. c8 b4 b8 b | c2 c4 bes! |
  a2 a4 a, | bes2 bes'4 bes | b2 a4 b |
  c4. c,8 c4 c | c'( bes) a g | f2 e4 f | g2 g, |
  
  c2 c4 c | c'4. bes8 a4 g | fis2 r4 d | g( f) es d |
  c2 bes4 c | d d d' c | bes4. bes8 a4 a | gis2 r4 e |
  a( g) f e | d2 c4 d | e1 | a,4 r a'2 |
  
  g4 f8 f e4 f | c' c8([ bes]) a4 a | g f e d |
  cis cis d d8 d | d2 d4 g, | c2 r |
  R1 | r4 g g' f8 f | e4( c) d( e) |
  
  f4. f8 g4( a) | bes2 g | d d4 c |
  bes2 c4( e) | f r r2 | r r4 bes, |
  bes' bes8 bes c4 bes | a4. a8 a4( g) | fis2. fis4 |
  
  g a bes bes | bes2. bes4 | a r r2 |
  R1*2 | r4 c, g' f |
  e4. e8 f4 bes, | c2. c4 | d d d d | d4. f8 a2 |
  
  bes4. bes8 f4 r | r g2-> e4 | cis4. cis8 d4 c | bes2 a |
  g( c4) c | f4. f8 f4 f | bes2 bes | f2. f4 |
  d2 bes | f'4. f8 f4 f | c2 a | f2. f4 | f2.\fermata |
}