\version "2.22.1"

\header {
  title = "Peccavimus"
  composer = "Melchior Franck (um 1580-1639)"
  poet = "nach Daniel 9,5"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

\include "Peccavimus_lyrics.ily"
\include "Peccavimus_music.ily"


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
 \markup{\wordwrap {Wir haben gesündigt, unrecht getan, sind gottlos gewesen, Herr, unser Gott, in aller deiner Gerechtigkeit.}}
