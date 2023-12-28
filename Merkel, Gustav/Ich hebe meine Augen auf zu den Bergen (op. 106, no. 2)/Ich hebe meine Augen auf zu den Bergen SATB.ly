\version "2.22.1"

\header {
  title = "Ich hebe meine Augen auf zu den Bergen"
  composer = "Gustav A. Merkel (1827-1885)"
  opus = "Op. 106, Nr. 2"
  tagline = ##f
}

\include "Ich hebe meine Augen auf_music.ily"
\include "Ich hebe meine Augen auf_lyrics.ily"
\include "Ich hebe meine Augen auf_voices.ily"
    

\book {
  \bookOutputSuffix "3pages"
  \paper {
    #(set-paper-size "a4")
    systems-per-page = 4
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
      #(layout-set-staff-size 16) 
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}