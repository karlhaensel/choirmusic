\version "2.22.1"

\header {
  title = "Misericordias Domini"
  composer = "Francesco Durante (1684-1755)"
  poet = "Psalm 89,2a"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  systems-per-page = 2
}

\layout {
  #(layout-set-staff-size 18)
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t } % für vogeschlagene Vorzeichen in Alter Musik über Noten -> VOR der Note setzen

global = {
  \key c \major
  \time 4/2
  \autoBeamOff
}

\include "Misericordias Domini 1_choir1.ily"
\include "Misericordias Domini 1_choir2.ily"
\include "Misericordias Domini 1_lyrics.ily"
\include "Misericordias Domini 1_voices.ily"

    

\score {
  <<
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sAltI
      \sTenorI
      \sBassI
    >>
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranII
      \sAltII
      \sTenorII
      \sBassII
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
