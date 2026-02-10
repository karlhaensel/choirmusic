\version "2.22.1"

sempreDecresc =
  #(make-dynamic-script
     #{ \markup {
          \normal-text
          \italic "sempre decresc."
        } #})

global = {
  \key f \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark.font-size = #5
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \tempo 4=90
}

dTutti = {
  \global
  s1\p | s\< | s\f | s2\> s8 s16 s\! \tag #'s \tag #'a \tag #'t { s4\p | s1*3 } \tag #'b { s4\! | s1*2 | s2 s\p } |
  s1 | s4. s8\cresc s2 | s1 | s\< | s2.\f \tag #'s \tag #'a \tag #'t { s4\dim | s1 } \tag #'b { s4 | s2. s4\dim } |
  s1 | s\p | s2. s4\f | s1 |
  s1 | s2\< s\! | s1\f | s1*2 |
  
  s1*2 | \tag #'s \tag #'a \tag #'t { s1\p | s1*2 } \tag #'b { s1*2 | s1\p } | s1 |
  \tag #'s \tag #'t \tag #'b { s1\pp | s1*2 } \tag #'a { s1*2 | s1\pp } | s1 | s\p | s |
  s4\> s\! s2\dim | s1 | s2. s4\pp | s1 | s\cresc |
  s | s4\ff \tag #'s \tag #'a \tag #'b { s\dim } \tag #'t { s } s2 | s1*2 | \tempo "poco rit." s4 s\> s\! s | \tempo "a tempo" s1\p | s2.\< s4\! |
  
  s1\f | s2.\> s8 s\! | \tag #'s \tag #'a \tag #'t { s1\p | s1*2 } \tag #'b { s1*2 | s2 s\p } | s1 | s4.\pp s8\cresc s2 |
  s1 | s\< | s2.\f \tag #'s \tag #'a \tag #'t { s4\dim } \tag #'b { s4 } | s1*2 | s1\p | s |
  s | s2 \tag #'s \tag #'a \tag #'t { s4 s\pp } \tag #'b { s2\pp } | s1 | s2 \tag #'s \tag #'t { s2 | s s\pp } \tag #'a \tag #'b { s2\pp | s1 } | s1*3 |
  \tag #'s \tag #'a \tag #'t {\once \override DynamicText.self-alignment-X = #LEFT s1\sempreDecresc } \tag #'b {s1} | s1*3 | s1\< | s2 s\! | s1 | s1\> | s\pp | s1*2 \bar "|."
}

nSopran = \relative c'' {
  \global
  a2 a4 g8 f | c'1 | d2 d4 c8 bes | f'2. e4 | d( c) bes a | d4. g,8 g4 a |
  c bes a4. g8 | f2( e) | a4. f8 f2 | c'4. a8 a4 c | f2 f | g2. f4 |
  e4. d8 c4 bes | a4. bes8 c4 d | d2( g,4) a8([ bes]) | a2. a8 b | c4 c d4. d8 |
  e4 c c4. d8 | e4 e e d8([ c]) | g'2. r4 | r f e d | e c fis,4. fis8 |
  
  g4 c d4. e8 | c1 | bes8. bes16 bes4 bes a | gis b a2 | c8. c16 c4 c b | d a b2 |
  a4 a8 b c4 e, | a b c2 | d4 d8 e f4 a, | d e f2 | e4. d8 c4 a | a b c( a) |
  f' e8([ d]) c4 a-! | b-! r e,-! r | a2 r4 a8 a | bes8.([ c16]) bes4 r bes8 bes | bes8.([ c16]) bes4 r bes8 bes |
  bes8.([ c16]) bes4 bes bes | g'1~ | g~ | g4 r r2 | r4 d c( bes) | a4. a8 a4 g8([ f]) | c'2. c4 |
  
  d4. d8 d4 c8([ bes]) | f'1 | d4 c bes a | d4. g,8 g4 a | c( bes a) g | f2( e) | a4. f8 f2 |
  c'4. a8 a4 c | f2 f | g2. f4 | e4.( d8 c4) bes | a4.( bes8 c4) d | d2( g,4) a8([ bes]) | bes2. c4 |
  d4( e f) g | c,2( f4) f, | a2 g | f r | r bes4 bes | a2 r | r d4 d | f2 r |
  a, a | a r4 a | r c2 c4 | r4 c2 c4 | d1~( | d~ | d | c2 bes | c1~ | c~ | c4) r r2 |
}

nAlt = \relative c' {
  \global
  f2 f4 f8 f | f2( e) | f e4 e8 e | f2. f4 | f2 f4 f | f4. f8 f4 f |
  f2 d | bes4. bes8 bes2 | a4. c8 c2 | f4. f8 f4 f | f2 d | g1~ |
  g4 c, d e | f2. f4 | f2( e4) f8([ g]) | f2. f8 f | g4 g g4. g8 |
  g4 g g4. g8 | g4 g g fis | g( c b) g | g2. g4 | g4 e e4. e8 |
  
  e4 e f4. f8 | e1 | f8. f16 f4 f f | f f e2 | e8. e16 e4 e e | a a a( gis) |
  R1*2 | f4 f8 g a4 g | f g a2 | gis4. gis8 a4 a | f f e( a) |
  a gis a a-! | f-! r d-! r | c2 r4 e8 e | f4 f r f8 f | f4 f r f8 f |
  e4 e f f | bes1~ | bes~ | bes4 r r2 | r4 e, f( g) | c,4. f8 f4 f | f2( e4) e |
  
  f4. f8 e4 e | f1 | f4. f8 f4 f | f4. f8 f4 f | f2( d | bes4.) bes8 bes2 | a4. c8 c2 |
  f4. f8 f4 f | f2 d | g1~ | g4 c, d e | f2. f4 | f2( e4) f8([ g]) | f4 f2 f4 |
  f bes a g | g( f8[ e] f4) f | f2 e | f2 f4 f | f1~ | f2 f4 f | f1~ | f2 r |
  f f | f r4 f | r f2 f4 | r4 e2 e4 | \repeat unfold 6 { f1~ | } f4 r r2 | 
}

nTenor = \relative c' {
  \global
  c2 d4 f,8 f | g1 | bes2 bes4 bes8 bes | bes2( a4) c | bes( a) d c | bes4. bes8 bes4 c |
  d2 bes | g4. g8 g2 | f4. a8 a2 | a4. c8 c4 a | f2 f' | f( e4) d |
  c4. bes8 a4 g | f4. g8 a4 bes | g2 c | c2. d8 d | e4 e b4. b8 |
  c4 c c4. b8 | c4 c c4. c8 | e2( d4) r | r d c b | c c c4. c8 |
  
  c4 c b4. b8 | c1 | d8. d16 d4 d d | d d c2 | c8. c16 c4 c e | d d b2 |
  c4 c8 d e4 d | c d e2 | d2. cis8 cis | d2. c!4 | b4. b8 a4 a | a a a( e') |
  d b a a-! | a-! r gis-! r | a2 r4 c8 c | d4 d r d8 d | d4 d r d8 d |
  d4 d d d | d2( c4 b | c g) a bes | b( c e d | c) bes a g | f4. f8 f4 f | g2. g4 |
  
  bes4. bes8 bes4 bes | bes2( a) | bes4 a d c | bes4. bes8 bes4 c | d2( bes | g4.) g8 g2 | f4. a8 a2 |
  a4. c8 c4 a | f2 f' | f( e4) d | c4.( bes8 a4) g | f4.( g8 a4) bes | g2 c | f,4 f2 f4 |
  f d' c bes | bes( a8[ g] a4) a | bes2 bes | a r | r d4 d | c2 r | r bes4 bes | a2 r |
  f' e | d r4 d | r a2 a4 | r g2 g4 | bes1~( | bes~ | bes | a2 g | a1~ | a~ | a4) r r2 |
}

nBass = \relative c {
  \global
  f2 d4 d8 d | c1 | bes2 g'4 g8 g | f2. r4 | R1*2 |
  r2 g, | c1 | f2. f4 | e2. e4 | d2 d | c2. r4 |
  r2 r4 c | d2 c4 bes | c2 c | f2. d8 d | c4 c g'4. g8 |
  c,4 e e4. g8 | c4 b a4. a8 | g2. r4 | R1 | r2 a4. a8 |
  
  g4. g8 g4 g, | c1 | R1*2 | a'8. a16 a4 a g | f f e2 |
  a,2. a8 a | a2. a'4 | d,2. d4 | d1 | e4. e8 f4 c | d d a( c) |
  d e f c-! | d-! r e-! r | a,2 r4 a'8 a | a4 a r a8 a | g4 g r g8 g |
  g4 g f f | e1~ | e~ | e4 r r2 | r4 c d( e) | f4. f8 d4 d | c2. c4 |
  
  bes4. bes8 g'4 g | f1 | R1*2 | r2 g,4. g8 | c1 | f2. f4 |
  e2. e4 | d2 d | c2. r4 | r2 r4 c | d2 c4 bes | c2 c | d2. a4 |
  bes( c d) e | f2 d | g,2 c | f, f'4 f | f1~ | f2 f4 f | f1~ | f2 r |
  R1*3 | r4 c2 c4 | f,1( | bes2 d | \repeat unfold 4 { f1~ | } f4) r r2 |
}