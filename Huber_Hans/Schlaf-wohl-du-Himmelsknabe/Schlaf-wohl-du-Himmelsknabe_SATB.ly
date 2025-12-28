\version "2.22.1"

\header {
  title = "Schlaf wohl, du Himmelsknabe"
  composer = "Melodie: Schweizer Volksweise"
  arranger = "Satz: Hans Huber (1852-1921)"
  poet = "Text: Christian Friedrich Daniel Schubart (1739-1791)"
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

\include "Schlaf-wohl-du-Himmelsknabe_staffs.ily"

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
      \tempo 4=104  
    }
  }
}
