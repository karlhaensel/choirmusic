\version "2.18.2"

% Version SSATB (original)

\header {
  title = "Lobet Gott in seinem Heiligtum"
  composer = "Heinrich Albert (1604-1651)"
  tagline = "Strophen: in der Osterzeit 1-3a; für Erntedank 1+3b; allgemein 1+3a"
}

\paper {
  #(set-paper-size "a4")
  system-count = 4
  page-count = 2
}

\layout {#(layout-set-staff-size 14)
  \context {
    \Voice
    \consists "Melody_engraver"
  } 
}


\include "Lobet Gott in seinem Heiligtum_music.ily"
\include "Lobet Gott in seinem Heiligtum_lyrics.ily"


choirmidi = \with { midiInstrument = "choir aahs" }

sSopranI = \new Staff \with {
  instrumentName = "Sopran I"
  \choirmidi
} { \nSopranI }
\addlyrics { \tSopranIeins }
\addlyrics { \tSopranIzwei }
\addlyrics { \tSopranIdreiA }
\addlyrics { \tSopranIdreiB }

sSopranII = \new Staff \with {
  instrumentName = "Sopran II"
  \choirmidi
} { \nSopranII }
\addlyrics { \tSopranIIeins }
\addlyrics { \tSopranIIzwei }
\addlyrics { \tSopranIIdreiA }
\addlyrics { \tSopranIIdreiB }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  \choirmidi
} { \nAlt }
\addlyrics { \tAlteins }
\addlyrics { \tAltzwei }
\addlyrics { \tAltdreiA }
\addlyrics { \tAltdreiB }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  \choirmidi
} { \clef "treble_8" \nTenor }
\addlyrics { \tTenoreins }
\addlyrics { \tTenorzwei }
\addlyrics { \tTenordreiA }
\addlyrics { \tTenordreiB }

sBass = \new Staff \with {
  instrumentName = "Bass"
  \choirmidi
} { \clef bass \nBass }
\addlyrics { \tBasseins }
\addlyrics { \tBasszwei }
\addlyrics { \tBassdrei }

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopranI
    \sSopranII
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}