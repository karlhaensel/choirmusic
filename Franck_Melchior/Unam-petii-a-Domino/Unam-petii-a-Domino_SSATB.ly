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
  #(layout-set-staff-size 17.6) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

\include "Unam-petii_lyrics.ily"
\include "Unam-petii_music.ily"


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
 \markup{\italic Übersetzung:}
 \markup{\wordwrap {Eines bitte ich vom Herrn, dies ersehn' ich: dass ich wohnen darf im Hause meines Herrn alle Tage meines Lebens, und nahe sei meines Gottes Freundlichkeit im Anblick seines Heiligtums.}}
