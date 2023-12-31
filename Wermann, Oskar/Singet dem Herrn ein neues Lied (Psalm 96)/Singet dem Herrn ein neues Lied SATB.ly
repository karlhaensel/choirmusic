\version "2.24.3"

\header {
  title = "Singet dem Herrn ein neues Lied"
  composer = "Oskar Wermann (1840-1906)"
  poet = "Psalm 96"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14.7) 
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Singet_staffs.ily"

\book {
  \score {  
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \layout { }
    \midi {
    }
  }
}
