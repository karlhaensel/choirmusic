\version "2.24.3"

\header {
  title = "Morgengruß"
  subtitle = "aus: \"Gartenlieder\" op. 3, Nr. 4"
  composer = "Fanny Hensel (1805-1847)"
  poet = "Wilhelm Hensel"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  system-count = #7
}

\layout {
  #(layout-set-staff-size 16) 
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Morgengruss_staffs.ily"

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
