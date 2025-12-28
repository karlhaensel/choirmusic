\version "2.22.1"

\header {
  title = "Sommerlied"
  composer = "Max Bruch (1838-1920)"
  poet = "Paul Gerhardt (1607-1676)"
  opus = "Op. 60, Nr. 2"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  page-count = 2
}

\layout {
  #(layout-set-staff-size 16) 
  \override Score.BarNumber.font-size = #1
}

\include "Sommerlied_music.ily"
\include "Sommerlied_lyrics.ily"
\include "Sommerlied_voices.ily"


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=124
  }
}
