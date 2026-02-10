\version "2.22.1"

global = {
  \key bes \lydian
  \time 6/8
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \partial 4.
  \tempo 8=72
}

dTutti = {
  \global
  \tag #'s { s4.\p^\markup{\bold Choraliter} | s2.*2 |} \tag #'a \tag #'t \tag #'b { s4.\p | s2.*2 | } \tag #'sol {s4. | s2. | s8 s^\markup{\italic zart} s s4. |} s2.*12 | \partial 4. s4. \bar "||" 
}

nSolo = \relative c'' {
  \global
  r4 r8 | R2. | r8 g([ bes]) c([ es]) f | d([ c]) bes c4. | d8 \breathe f([ d]) c([ bes]) a |
  bes([ a]) g d4. | r r8 f g | a([ gis]) a bes([ a bes]) | c4 r8 f4 a,8 | bes([ c]) d es4 c8 |
  g4 r8 r a d, | d'([ c]) bes c4. | c4 r8 f, bes8 bes | bes([ es]) d c g r | r g g a4. | bes4.\fermata |
}


nSopran = \relative c' {
  \global
  f4. | bes a | g g | f~( f4 es8) | d4. d |
  g g | f e! | f2.~ | f4. f | bes bes |
  c a | g2. | a4. bes | g g | f es | d\fermata |
}

nAlt = \relative c' {
  \global
  d4. | d f | es es | f( c) | bes a8([ bes c]) |
  bes4. d | c c | c2.~ | c4. c | f es |
  g fis | g~( g8[ f e]) | f4. f | es c | bes c8([ d c]) | bes4.\fermata |
}

nTenor = \relative c' {
  \global
  bes4. | bes d | bes bes | a( f) | f f |
  d' g, | g g | f2.~ | f4. a | f g |
  c8([ bes c]) d4( c8) | bes4( d8 c4 bes8) | c4. bes | c4( bes8) a4( bes8) | f4. f | f\fermata |
}

nBass = \relative c {
  \global
  bes4. | g d' | es c | d( a) | bes d |
  g, bes | c c | f,( g | a) es' | d c |
  es d | g,( c) | f d | c es | f f, | bes\fermata \tweak direction #DOWN \tweak outside-staff-padding #5 \textEndMark \markup {\bold "attacca III" } |
}