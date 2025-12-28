\version "2.22.1"

\header {
  title = "Gebet"
  composer = "Max Bruch (1838-1920)"
  poet = "Eduard Mörike (1804-1875)"
  opus = "Op. 60, Nr. 4"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Gebet_lyrics.ily"
\include "Gebet_music.ily"


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=68
  }
}
