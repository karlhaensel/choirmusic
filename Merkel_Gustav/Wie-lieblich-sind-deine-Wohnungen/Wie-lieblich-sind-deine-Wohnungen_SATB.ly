\version "2.24.4"

\header {
  title = "Wie lieblich sind deine Wohnungen"
  composer = "Gustav A. Merkel (1827-1885)" 
  poet = "Ps 84,2-3"
  tagline = ##f
}

\include "Wie-lieblich-sind-deine-Wohnungen_music.ily"
\include "Wie-lieblich-sind-deine-Wohnungen_lyrics.ily"
\include "Wie-lieblich-sind-deine-Wohnungen_voices.ily"
    

\book {
  \paper {
    #(set-paper-size "a4")
  }
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \layout {
      #(layout-set-staff-size 16) 
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}