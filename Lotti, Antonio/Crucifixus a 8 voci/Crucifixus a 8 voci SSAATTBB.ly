\version "2.22.1"

\header {
  title = \markup{\smallCaps Crucifixus}
  subtitle = "a 8 voci"
  composer = "Antonio Lotti (1667-1740)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 17) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Crucifixus8_music.ily"
\include "Crucifixus8_lyrics.ily"
\include "Crucifixus8_voices.ily"

    

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopranI
    \sSopranII
    \sAltI
    \sAltII
    \sTenorI
    \sTenorII
    \sBassI
    \sBassII
  >>
  \layout { }
  \midi {
    \tempo 4=86
  }
}
