\version "2.24.3"

\header {
  title = "Schöne Fremde"
  subtitle = "aus: \"Gartenlieder\" op. 3, Nr. 2"
  composer = "Fanny Hensel (1805-1847)"
  poet = "Joseph von Eichendorff"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14.5) 
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Schoene-Fremde_staffs.ily"

\book {
  \markup {\italic \smaller {Dichter-Original als kursive Textvariante}}
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
