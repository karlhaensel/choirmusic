\version "2.22.1"

\header {
  title = "Geh aus, mein Herz, und suche Freud"
  composer = "Melodie & Satz: August Harder (1775-1813)"
  poet = "Text: Paul Gerhardt (1607-1676)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
  \override Score.BarNumber.font-size = #1
}

\include "Geh aus mein Herz_music.ily"
\include "Geh aus mein Herz_lyrics.ily"

%%%%%% VIERZEILIGE NOTATION %%%%%%%%

choirmidi = \with { midiInstrument = "choir aahs" }

sSopran = \new Staff \with {
  instrumentName = "Sopran"
  \choirmidi
} { \nSopran }
\addlyrics { \tEins }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  \choirmidi
} { \nAlt }
\addlyrics { \tEins }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  \choirmidi
} { \clef "treble_8" \nTenor }
\addlyrics { \tEins }

sBass = \new Staff \with {
  instrumentName = "Bass"
  \choirmidi
} { \clef bass \nBass }
\addlyrics { \tEins }

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
    \tempo 4=100
  }
}