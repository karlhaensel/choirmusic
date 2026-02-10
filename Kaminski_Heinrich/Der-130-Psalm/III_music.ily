\version "2.22.1"

marc = \markup{\italic marc. }
global = {
  \key d \minor
  \time 6/8
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \partial 4.
  \tempo 8=92
}

dTutti = {
  \global  % Anfangsdynamik wegen Teilung in Stimmen selbst
  s4. | s2.*3 |
  s2.*3 | s2 s4\> |
  \tag #'s \tag #'a \tag #'t { s16 s\!} \tag #'s \tag #'a { s4 s4.\pp | s2. } \tag #'t { s4\pp s4. | s2. } \tag #'b { s4 s8\! s4. | s8 s\pp s2 } | s4. s\<^\markup{\italic {cresc. poco}} |
  
  s2.\! | s2. *2 |
  s2.*3 | s4. \tag #'s { s4. | s4. s8 s4\< } \tag #'a \tag #'t \tag #'b { s4.\< | s2. } | s2. | s\!^\markup{\dynamic ff \italic {al fine}} |
  s2.*5 \bar "|."
}

nSopran = \relative c'' {
  \global
  r8 d4->~^\markup{\dynamic ff \italic marc.} | d8 d4-> d4.->~ | d8 d d e4 e8 | f4.( e |
  d) d8 a a | c4. a | f8([ g]) a bes4 bes8 | a2. |
  a4. f!8 f f | ges4 ges8 f4. | f a8 a a |
  
  bes4 bes8 a4. | a8 \breathe d^\marc c bes a f | a([ g]) f bes4  a8 |
  g([ f]) e a4.~ | a a | bes a | g e4 r8 |
  r4. r8 a^\marc a | c d d f([ e]) d | a'4 g8 f e d |
  g f e e4 e8 | e2. | d8 cis([ d]) f4 f8 | f4.( e) | d2. |
}

nAlt = \relative c' {
  \global
  r4. | f4\ff f8 bes g f | e a g g4 g8 | a e f g([ d]) e |
  g([ bes]) bes a4 f8 | e([ d]) c e([ f]) e | d4. d4 f8 | f e d cis([ a g']) |
  fis4. d8 d d | des4 des8 c des c | d4 d8 e e e |
  
  g8([ g,]) g a4. | f'4( e8) d([ c]) d | cis([ e]) d g,4 a8 |
  bes( c!4) d8 f4 | e8([ f c]) f4. | f c8 d^\marc d | g f d cis e-- e-- |
  a-- f-- e-- d([ cis]) d | e([ g]) g f g a | a4 cis8 a g a |
  d a bes bes([ a]) gis | a e f g!([ f e]) | gis4. a8 d c! | bes4.~( bes8[ a g]) | fis2. |
}

nTenor = \relative c' {
  \global
  <<
    \new Voice = "vTenorI" {\voiceOne \dynamicDown \autoBeamOff r8 d4->\ff^\markup{\italic marc.}~ | d8 d4-> d4.->~ | d8 d d e4 e8 | f4.( e | d) d8 r d |}
    {\voiceTwo \dynamicDown r4. | bes4 a8 g e a | bes4. d8 cis cis | c! g a c([ f,]) g | bes([ d]) e f4 d8 |}
  >>\dynamicUp \oneVoice
  g,4 e'8 a,4 g8 | a e f f4 bes8 | c4 c8 e([ d cis]) |
  d\breathe d a bes4 bes8 | bes bes bes a4. | bes4 r8 cis cis cis |
  
  d8 c! f e d cis | a2.~ | a8 a^\marc a e' d c! |
  bes([ a]) g f([ d']) a | c4. d8([ a]) c | r bes^\marc bes f' d c | bes([ a]) g a([ cis]) a |
  f([ d']) c! bes([ a]) f | g([ bes]) d a([ d]) f | e f e d4 f8 |
  e([ d]) d d([ f]) e | d4.( cis) | f4 e8 d4 d8 | d([ es d] cis4.) | a2. |
}

nBass = \relative c {
  \global
  r4. | r g8\ff bes d | g([ f]) e a4 a,8 | <f f'>4. c'4 c8 |
  <g g'>4 8 d'4. | c cis4 cis8 | d4. bes8([ c!]) d | f4 f8 g([ f]) e |
  d4 d8 r4. | r8 ges des es f f, | bes([ f']) bes a a g |
  
  f8 e d cis b! a | d2.~ | d~ |
  d4. r8 d^\marc d | a' f e d([ c]) a | d4 d8 f4 f,8 | g([ a]) bes a4 cis8 |
  d4 d8 g([ a]) d, | c g bes d4 d'8 | cis4 a8 d4. |
  bes4 g8 gis([ a]) bes!? | a2. | bes4. a | g4 gis8 a4. | d,2. |
}