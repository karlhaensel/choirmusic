\version "2.22.1"

\header {
  title = "Unam petii a Domino"
  composer = "Melchior Franck (um 1580-1639)"
  poet = "Psalm 27,4"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

\include "Unam petii a Domino_lyrics.ily"
\include "Unam petii a Domino_music.ily"


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern
    \sSopranI
    \sSopranII
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 2=86
  }
}
