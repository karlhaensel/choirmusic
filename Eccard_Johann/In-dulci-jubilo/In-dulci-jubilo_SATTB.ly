\version "2.18.2"

\header {
  title = "In dulci jubilo"
  composer = "Johann Eccard (1553-1611)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
  \override Score.BarNumber.font-size = #1
}

\include "In-dulci-jubilo_music.ily"
\include "In-dulci-jubilo_lyrics.ily"

choirmidi = \with { midiInstrument = "choir aahs" }

sSopran = \new Staff \with {
  instrumentName = "Sopran"
  \choirmidi
} { \nSopran }
\addlyrics { \tSopranA }
\addlyrics { \tSopranB }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  \choirmidi
} { \nAlt }
\addlyrics { \tAltA }
\addlyrics { \tAltB }

sTenorI = \new Staff \with {
  instrumentName = "Tenor I"
  \choirmidi
} { \clef "treble_8" \nTenorI }
\addlyrics { \tTenorIA }
\addlyrics { \tTenorIB }

sTenorII = \new Staff \with {
  instrumentName = "Tenor II"
  \choirmidi
} { \clef "treble_8" \nTenorII }
\addlyrics { \tTenorIIA }
\addlyrics { \tTenorIIB }

sBass = \new Staff \with {
  instrumentName = "Bass"
  \choirmidi
} { \clef bass \nBass }
\addlyrics { \tBassA }
\addlyrics { \tBassB }


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenorI
    \sTenorII
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=220
  }
}
