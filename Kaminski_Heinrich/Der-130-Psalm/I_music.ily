\version "2.22.1"

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
  s4.\p^\markup{\italic {sotto voce}} | s2. |
}

nSopran = \relative c' {
  \global
  r8 d e | f4 d8 bes c d |
}

nAlt = \relative c' {
  \global
  r8 d e | f4 d8 bes c d |
}

nTenor = \relative c' {
  \global
  r8 d e | f4 d8 bes c d |
}

nBass = \relative c {
  \global
  r8 d e | f4 d8 bes c d |
}