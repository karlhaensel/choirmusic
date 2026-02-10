\version "2.22.1"

global = {
  \key d \minor
  \time 6/8
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \partial 4.
  \tempo 8=100
}

dTutti = {
  \global  % Anfangsdynamik wegen Teilung in Stimmen selbst
  s4. | s2.*3 |
}

nSopran = \relative c'' {
  \global
  r8 d4->~\ff^\markup{\italic marc.} | d8 d4-> d4.->~ | d8 d d e4 e8 |
}

nAlt = \relative c' {
  \global
  r4. | f4\ff f8 bes g f | e a g g4 g8 |
}

nTenor = \relative c' {
  \global
  <<
    \new Voice = "vTenorI" {\voiceOne \dynamicDown r8 d4->\ff^\markup{\italic marc.}~ | d8 d4-> d4.->~ | d8 d d e4 e8 |}
    {\voiceTwo \dynamicDown r4. | bes4 a8 g e a | bes4. d8 cis cis |}
  >>
  \dynamicUp
  \oneVoice
}

nBass = \relative c {
  \global
  r4. | r g8\ff bes d | g([ f]) e a4 a,8 |
}