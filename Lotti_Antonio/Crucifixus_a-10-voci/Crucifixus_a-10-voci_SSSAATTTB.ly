\version "2.22.1"

\header {
  title = \markup{\smallCaps Crucifixus}
  subtitle = "a 10 voci"
  composer = "Antonio Lotti (1667-1740)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

\include "Crucifixus10_music.ily"
\include "Crucifixus10_lyrics.ily"
\include "Crucifixus10_voices.ily"

    

\book {
  \bookOutputSuffix "small"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sSopranII
      \sSopranIII
      \sAltI
      \sAltII
      \sTenorI
      \sTenorII
      \sTenorIII
      \sBassI
      \sBassII
    >>
    \layout {
      #(layout-set-staff-size 13.3)   
    }
    \midi {
      \tempo 4=86
    }
  }
}

\book {
  \bookOutputSuffix "big"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sSopranII
      \sSopranIII
      \sAltI
      \sAltII
      \sTenorI
      \sTenorII
      \sTenorIII
      \sBassI
      \sBassII
    >>
    \layout {
      #(layout-set-staff-size 16.2)   
    }
    \midi {
      \tempo 4=86
    }
  }
}
