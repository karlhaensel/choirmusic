\version "2.22.1"

\header {
  title = "Barmherzig und gnädig ist der Herr"
  composer = "Gustav A. Merkel (1827-1885)"
  opus = "Op. 106, Nr. 1"
  poet = "Ps 103,4.5.8"
  tagline = ##f
}

\include "Barmherzig-und-gnaedig_music.ily"
\include "Barmherzig-und-gnaedig_lyrics.ily"
\include "Barmherzig-und-gnaedig_voices.ily"
    

\book {
  \bookOutputSuffix "3pages"
  \paper {
    #(set-paper-size "a4")
    systems-per-page = 4
    page-count = 3
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

\book {
  \bookOutputSuffix "4pages"
  \paper {
    #(set-paper-size "a4")
    page-count = 4
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
      #(layout-set-staff-size 18) 
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}