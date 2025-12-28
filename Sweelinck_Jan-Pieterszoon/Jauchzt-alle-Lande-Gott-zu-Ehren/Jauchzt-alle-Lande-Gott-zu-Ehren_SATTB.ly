\version "2.18.2"

\header {
  title = "Jauchzt, alle Lande, Gott zu Ehren"
  composer = "Jan Pieterszoon Sweelinck (1562-1621)"
  poet = "Psalm 66"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 15.5)
  \override Score.BarNumber.font-size = #1
}

\include "Jauchzt-alle_music.ily"
\include "Jauchzt-alle_lyrics.ily"


sSopran = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
} { \nSopran }
\addlyrics { \tSopran }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
} { \nAlt }
\addlyrics { \tAlt }

sTenorI = \new Staff \with {
  instrumentName = "Tenor I"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \nTenorI }
\addlyrics { \tTenorI }

sTenorII = \new Staff \with {
  instrumentName = "Tenor II"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \nTenorII }
\addlyrics { \tTenorII }

sBass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \nBass }
\addlyrics { \tBass }


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
    \tempo 4=144
  }
}
