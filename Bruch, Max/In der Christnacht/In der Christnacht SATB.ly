\version "2.22.1"

\header {
  title = "In der Christnacht"
  composer = "Max Bruch (1838-1920)"
  poet = "Kaspar Friedrich Nachtenhöfer (1624-1685)"
  opus = "Op. 60, Nr. 1"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  page-count = 2
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

\include "In der Christnacht_music.ily"
\include "In der Christnacht_lyrics.ily"
\include "In der Christnacht_voices.ily"


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
    \tempo 4=96
  }
}
