\version "2.22.1"

\header {
  title = "Wenn ich rufe zu dir, Herr"
  composer = "Gustav A. Merkel (1827-1885)"
  opus = "Op. 106, Nr. 3"
  poet = "Ps 28,1a-2.6-7"
  tagline = ##f
}

\include "Wenn-ich-rufe_music.ily"
\include "Wenn-ich-rufe_lyrics.ily"
\include "Wenn-ich-rufe_voices.ily"
    

\book {
  \bookOutputSuffix "4pages-smaller"
  \paper {
    #(set-paper-size "a4")
    systems-per-page = 4
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
      #(layout-set-staff-size 16) 
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}

\book {
  \bookOutputSuffix "6pages-bigger"
  \paper {
    #(set-paper-size "a4")
    page-count = 6
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