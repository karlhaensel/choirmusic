\version "2.18.2"

\header {
  title = "Gloria"
  composer = "Andreas Pevernage (1543-1591)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14)
}

\include "Gloria_music.ily"
\include "Gloria_lyrics.ily"


chormidi = \with { midiInstrument = "choir aahs" }

sSopranI = \new Staff \with {
  instrumentName = "Sopran I"
  \chormidi
} { \nSopranI }
\addlyrics { \tSopranI }

sSopranII = \new Staff \with {
  instrumentName = "Sopran II"
  \chormidi
} { \nSopranII }
\addlyrics { \tSopranII }

sSopranIII = \new Staff \with {
  instrumentName = "Sopran III"
  \chormidi
} { \nSopranIII }
\addlyrics { \tSopranIII }

sAltI = \new Staff \with {
  instrumentName = "Alt I"
  \chormidi
} { \nAltI }
\addlyrics { \tAltI }

sAltII = \new Staff \with {
  instrumentName = "Alt II"
  \chormidi
} { \nAltII }
\addlyrics { \tAltII }

sAltIII = \new Staff \with {
  instrumentName = "Alt III"
  \chormidi
} { \nAltIII }
\addlyrics { \tAltIII }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  \chormidi
} { \clef "treble_8" \nTenor }
\addlyrics { \tTenor }

sBassI = \new Staff \with {
  instrumentName = "Bass I"
  \chormidi
} { \clef bass \nBassI }
\addlyrics { \tBassI }

sBassII = \new Staff \with {
  instrumentName = "Bass II"
  \chormidi
} { \clef bass \nBassII }
\addlyrics { \tBassII }

eckigeKlammer = {
  \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
}

\score {
  \new ChoirStaff 
  <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sSopranI
      \sSopranII
      \sSopranIII
    >>
    }
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sAltI
      \sAltII
      \sAltIII
    >>
    }
    \sTenor
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sBassI
      \sBassII
    >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
