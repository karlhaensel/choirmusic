\version "2.24.3"

\header {
  title = "Im Herbste"
  subtitle = "aus: \"Gartenlieder\" op. 3, Nr. 3"
  composer = "Fanny Hensel (1805-1847)"
  poet = "Ludwig Uhland"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 15.9) 
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Im Herbste_staffs.ily"

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
