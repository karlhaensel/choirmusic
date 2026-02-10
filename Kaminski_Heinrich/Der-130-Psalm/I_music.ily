\version "2.22.1"

pSottoVoce = \markup {\dynamic p \italic { sotto voce }}
crescMolto = \markup{\italic {cresc. molto}}
mpEspr = \markup {\dynamic mp \italic espr.}


global = {
  \key d \minor
  \time 6/8
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \partial 4.
  \tempo "Andante flebile" 8=72
}

dTutti = {
  \global
  s4.^\markup {\dynamic p \italic { sotto voce }}| s2. | s2\<^\crescMolto s8. s16\! |
  s4 s4\> s16 s\! \tag #'b {s8\mp | s2\< s4\>} \tag #'t { s8 | s2.\mp } \tag #'s \tag #'a { s8 | s s\mf s2 } | s2.\! | s2\> s4\! |
  s2.\p | s2\< s8 s\! | s2 s8 s\> | s8 s4\!
  
  \tag #'b {s4.^\mpEspr | s2. *3} \tag #'t { s4. | s s^\mpEspr | s2.*2 } \tag #'a { s4. | s2. | s4. s^\mpEspr | s2. } \tag #'s { s4. | s2.*2 | s4. s^\markup{\dynamic mf \italic espr.} } |
  s4. \tempo "poco rit." s4\<^\crescMolto s8\! | s8 s2\ff s8 | s2.*2 |
  \tag #'s { s4. s8 s4\pp | s2. } \tag #'a { s4. s\pp | s2. } \tag #'t { s2. | s^\markup{\dynamic p \italic espr.} } \tag #'b { s8 s2\pp s8 | s2. } | s2. | s2\<^\markup{\italic {cresc. poco}} s4\! |
  \tag #'s \tag #'a { s4. s^\markup{\italic espr.} | s2. } \tag #'t { s2. | s^\markup{\italic espr.}} \tag #'b {s8 s2^\markup{\italic espr.} s8 | s2. }|  s2. | \partial 4. s4. \bar "||" 
}

nSopran = \relative c' {
  \global
  r8 d e | f4 d8 bes c d | f g4 a4. |
  bes4 bes8 a4 r8 | r d([ f]) e([ d]) b | r gis([ b]) a([ gis]) e | a4 g!8 f f r |
  f f f g4 g8 | g4 a8 a4 a8 | a([ bes]) a g([ f]) d | cis4 e8 r4. |
  
  R2.*2 | r4. e8 e e |
  a4 g8 f g a | r c4-> c-> c8-> | b([ g]) a bes4 bes8 | bes4.-> a4 g8 |
  f f r r d d | d2.~ | d4. d8 d d | e2. |
  e4 r8 f g bes | a4. g8 f d | e2. | d4.\fermata |
}

nAlt = \relative c' {
  \global
  r8 d e | f4 d8 bes c d | f d4 g( fis8) |
  fis4 g8 e4 r8 | r a4 gis gis8 | r r f e4 b8 | e4 e8 d d r |
  d d d d([ e]) d | c([ d]) c cis4 cis8 | d([ f]) f d4 bes8 | a4 cis8 r4. |
  
  R2. | r4. d8 d d | g e d cis4. |
  cis8([ d]) e e16([ d]) d([ cis]) d8 | r a'4-> a-> a8-> | g4 g8 g4 g8 | g4.-> e4 e8 |
  e d r bes4 bes8 | bes4.( a | bes8[ d c]) b b b | b([ a gis] c b4) |
  cis4 r8 d e g | f4 e8 d4 a8 | bes([ e d~] d cis4) | a4.\fermata |
}

nTenor = \relative c' {
  \global
  r8 d e | f4 d8 bes c d | f bes,4 c4. |
  d4 d8 cis4 r8 | f, f' d b4 b8 | r b([ gis]) a([ b]) gis | a([ b]) cis d a r |
  bes bes bes bes4 bes8 | bes4 a8 a4 g'8 | f([ d]) c bes([ g]) f | f([ e]) a r4. |
  
  r4. f8 f f | d'4( c8) bes4 bes8 | d4( bes8) a4 a8 |
  bes4. a4 d8 | r es4-> es-> es8-> | d([ b]) c d([ g]) f | e-> cis->([ d]) e4 cis8 |
  a a r r4. | g8 f e f4.~( | f4 fis8) g g g | gis([ fis e] a4 gis8) |
  a4 r8 r4. | a8 d c bes a f | g4( gis8 a4 g!8) | f4.\fermata |
}

nBass = \relative c {
  \global
  r8 d e | f4 d8 bes c d | f e4 es4. |
  d8([ bes']) g a4 d,8 | d4. e4 d8 | f e d c([ b]) d | cis([ b]) a d d r |
  bes! bes a g([ g']) f | e4 f8 g([ f]) e | d4 d8 g4 g,8 | a4 a8 \breathe a a a |
  
  f'4 e8 d4 c8 | bes([ bes' a]) g([ fis]) g | e g g a([ g f!]) |
  e([ d]) cis d e f | r fis4-> fis-> fis8-> | g4 g8 f!8([ e]) d | cis-> e->([ d]) d([ cis]) a |
  d \breathe d d g,4.~ | g d'8 d c | bes bes a g4.( | e2.) |
  a8 a a d4.~ | d2. | g,8 a bes a4. | <d d,>4.\fermata \tweak direction #DOWN \tweak outside-staff-padding #5 \textEndMark \markup {\bold "attacca II" } |
}