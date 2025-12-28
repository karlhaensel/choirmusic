\version "2.24.3"

\header {
  title = "Hörst du nicht die Bäume rauschen"
  subtitle = "aus: \"Gartenlieder\" op. 3, Nr. 1"
  composer = "Fanny Hensel (1805-1847)"
  poet = "Joseph von Eichendorff"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Hoerst-du-nicht_staffs.ily"

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
      \tempo 4=104  
    }
  }
}
