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
  \tempo "Moderato" 4=100 
  s4\p | s2 s\< | s\> s\! | s1 |
  s1*2 | \tag #'s \tag #'a {s4 s2.\cresc} \tag #'t \tag #'b {s2. s4\cresc} | s1\! |
  \tag #'s \tag #'b {s2. s4\f } \tag #'a \tag #'t {s4 s2.\f} | s1*2 |

  s1 | s2 \tag #'t \tag #'b {s\p} \tag #'s \tag #'a {s} | s1 | s2 \tag #'a {s2\p} \tag #'s \tag #'t \tag #'b {s2} |
  s1 | s2 \tag #'s {s\p} \tag #'a \tag #'t \tag #'b {s} | s4.\< s8\! s2 |
  \tag #'s \tag #'a {s2 s\cresc} \tag #'t {s2. s4\cresc } \tag #'b {s1} | s1 | \tag #'s \tag #'a {s2. s4\ff} \tag #'t \tag #'b { s4 s2.\ff} | s1 |
  
  s1*5 |
  s2. s4\p | s2\> s\! | s1*2 |
  s1 | s4. s8\< s2 | s2\> s\! | s1 |
  
  s1*2 | \tag #'s \tag #'a { s4 s2.\cresc } \tag #'t \tag #'b { s2. s4\cresc } |
  s1 | \tag #'s \tag #'b { s2. s4\f } \tag #'a \tag #'t { s4 s2.\f } | s1 |
  s1 | s4 s2.\dim | s1 | 
  
  \tag #'s \tag #'a \tag #'b { s1 | } s4 s2.\mf | \tag #'t { s1 | } s1*3 |
  s4 s2.\< | s2\> s\! | s1*3 \bar "|."
}

nSopran = \relative c' {
  \global
  f4 | a a8 a c4 c | f d c d | g,2. a8([ bes]) |
  a4 \breathe c c bes8 a | g4. g8 g4 a | bes d d c8([ bes]) | a4 a a bes |
  c2. \breathe c4 | f2 e4 e | d2( c4) e8([ d]) |
  
  c2( b4.) b8 | c2 r | R1*3 |
  r2 a4 a | b a8 b d4-> c8 b |
  c4 c8 c c4 c | b2 b4 b8 b | b4 r r b | e4. e8 d4 c | 
  
  c4.-> b8 b4 gis | a b c b8 a | e'4 r r gis, | a2. b4 |
  a2 gis4. gis8 | a2 r4 a | bes2 a4. bes8 | a4 g r g | c f, bes a |
  g r r f8([ g]) | a4 a8 a c4 c | f d c d | g,2. a8([ bes]) |
  
  a4 \breathe c c bes8 a | g4. g8 g4 a | bes d d c8([ bes]) |
  a4 a a bes | c2. \breathe c4 | f2 e4 d |
  d2( c4) bes | a a a bes | g2. a8([ bes]) | a4 r r2 |
  
  r4 c c bes | bes4. a8 a4 f | c'2. bes4 | a4 r r2 |
  r4 d e f8([ g]) | f4 c c \breathe bes | a1( | g2.) g4 | f1\fermata |
}

nAlt = \relative c' {
  \global
  f4 | f f8 f g4 g | f f f f | f2( e4) e |
  f \breathe a a g8 f | e4. e8 e4 fis | g bes8([ a]) g4 g | g f f f | 
  f \breathe a g f8 e | f4( g) g a | a( g8[ f] e4) f |
  
  e2( d4.) f8 | e2 r | R1 | r2 d4 d |
  e d8 e g4-> f8 e | f4 f e c | f c8([ d]) f4 e8 e |
  e4 \breathe e a a | a2 a4 a | gis r r e | e4. e8 gis4 a |
  
  gis4.-> gis8 gis4 e | e d c d8 dis | e4 \breathe e f e8([ d]) | c4 cis d f |
  e2 e4. e8 | e2 r4 e | e2 f4. f8 | e4 e r e | f f d8([ e]) f4 |
  e4 r r f | f f8 f g4 g | f f f f | f2( e4) e |
  
  f4 \breathe a a g8 f | e4. e8 e4 fis | g bes8([ a]) g4 g |
  g f f f | f \breathe a bes a8 g | f4( g) a f |
  e( bes' a) g | f g f f | f2( e4) e | f r r2 |
  
  r4 e f g | g4. f8 f4 r | r e f g | f \breathe f f( g8[ a]) |
  bes4 f g f8([ e]) | f4 f f \breathe g | f1~( | f4 e8[ d] e4) e | f1\fermata |
}

nTenor = \relative c' {
  \global
  a4 | c c8 c c4 g | a bes c bes | bes( a8[ g] c4) c |
  c r r c | c c8 c c4 c | bes4. c8 d4 \breathe d | d d8 f e4 d |
  c \breathe c bes bes8 bes | a4( b!) c4 c | c( b c) a |
  
  g2. g4 | g2 \breathe g4 g | a g8 a c4-> bes8 a | bes4 bes a g8([ f]) |
  g4 f8([ g]) bes4 a8 g | f4 \breathe a8([ gis]) a4 a | a2 gis4 a8([ b]) |
  a4 r r f' | d d dis dis8 dis | e4 \breathe gis, a gis | a a d e |
  
  f4.-> f8 f4 b, | a e e a8 a | gis4 \breathe e' d c8([ b]) | a4 g f d' |
  c2 b4. b8 | c2 r4 c | c2 c4. c8 | c4.( d8) c4 c | c c bes c |
  c r r c | c c8 c c4 g | a bes c bes | bes( a8[ g] c4) c |
  
  c4 r r c | c c8 c c4 c | bes4. c8 d4 \breathe d |
  d d8 f e4 d | c \breathe c d c8 bes | a4( bes) c bes8([ a]) |
  g4( e f) c' | c cis d d | c2. c4 | c4 \breathe f, a g8 f |
  
  c'2. c4 | c c c r | r c c c | c \breathe f, es' d8 c |
  d2 des | c4 c d \breathe d | c4. c8 a4 f | c'2. bes4 | a1\fermata |
}

nBass = \relative c {
  \global
  f4 | f f8 f e4 e | d bes a bes | c2. c4 |
  f r r f | c' c8 c bes4 a | g4. a8 bes4 \breathe g | d d8 d c4 bes |
  a r r c | d2 e4 f | g2( a4) f |
  
  g2( g,4) g | c2 \breathe g'4 g | fis e8 fis a4-> g8 fis | g4 g f e8([ d]) |
  d4 d cis cis8 cis | d4 \breathe d c f8([ e]) | d4( f) e fis8([ gis]) |
  a4 r r2 | R1 | r4 e f e8([ d]) | c4. c8 b4 a |
  
  d4.-> d8 d4 d | c b a f' | e r r e | f( e d) d |
  e2 e4. e8 | a,2 r4 a' | g2 f4. f8 | bes4 bes r bes | a a, g f |
  c' \breathe c bes' a8 g | f4 f8 f e4 e | d bes a bes | c2. c4 |
  
  f4 r r f | c' c8 c bes4 a | g4. a8 bes4 \breathe g | 
  d d8 d c4 bes | a r r c | d2 a4 bes |
  c2( d4) e | f e d bes | c2. c4 | f r r2 |
  
  r4 c d e | f4. f8 f4 r | r bes a e | f r r2 |
  r4 bes bes bes | a a, bes \breathe g | c1~ | c2 c | f,1\fermata |  
}