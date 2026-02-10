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
  \tag #'s { s4.\p^\markup{\bold Choraliter} | s2.*2 |} \tag #'a \tag #'t \tag #'b { s4.\p | s2.*2 | } \tag #'sol {s4. | s2. | s8 s^\markup{\italic zart} s s4. |} 
}

nSolo = \relative c'' {
  \global
  r4 r8 | R2. | r8 g([ bes]) c([ es]) f |
}


nSopran = \relative c' {
  \global
  f4. | bes a | g g |
}

nAlt = \relative c' {
  \global
  d4. | d f | es es |
}

nTenor = \relative c' {
  \global
  bes4. | bes d | bes bes |
}

nBass = \relative c {
  \global
  bes4. | g d' | es c |
}