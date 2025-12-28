\version "2.18.2"

\header {
  title = "Miserere mei, Deus"
  composer = "William Byrd (1543-1623)"
  poet = "Psalm 51,3"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
}

\include "Miserere-mei-Deus_music.ily"
\include "Miserere-mei-Deus_lyrics.ily"


choirmidi = \with { midiInstrument = "choir aahs" }

sSopran = \new Staff \with {
  instrumentName = "Sopran"
  \choirmidi
} { \nSopran }
\addlyrics { \tSopran }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  \choirmidi
} { \nAlt }
\addlyrics { \tAlt }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  \choirmidi
} { \clef "treble_8" \nTenor }
\addlyrics { \tTenor }

sBariton = \new Staff \with {
  instrumentName = "Bariton"
  \choirmidi
} { \clef bass \nBariton }
\addlyrics { \tBariton }

sBass = \new Staff \with {
  instrumentName = "Bass"
  \choirmidi
} { \clef bass \nBass }
\addlyrics { \tBass }

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBariton
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=112
  }
}
