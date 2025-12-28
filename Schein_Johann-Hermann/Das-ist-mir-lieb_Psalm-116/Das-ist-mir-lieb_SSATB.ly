\version "2.22.00"

\header {
  title = "Der 116. Psalm"
  composer = "Johann Hermann Schein (1586-1630)"
  tagline = ##f
}

\include "Das-ist-mir-lieb_music.ily"
\include "Das-ist-mir-lieb_lyrics.ily"
\include "Das-ist-mir-lieb_voices.ily"


%%% Ed. 1 smaller notation, 12 pages

\book {
  \bookOutputSuffix "12pages"
  \paper {
    #(set-paper-size "a4")
    page-count = 12
  }
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sSopranII
      \sAlt
      \sTenor
      \sBass
    >>
    \layout {
      #(layout-set-staff-size 13.7) 
      \override Score.BarNumber.font-size = #1
    }
    \midi {
    }
  }
}


%%% Ed. 2 bigger notation, 16 pages

\book {
  \bookOutputSuffix "16pages"
  \paper {
    #(set-paper-size "a4")
    page-count = 16
  }
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sSopranII
      \sAlt
      \sTenor
      \sBass
    >>
    \layout {
      #(layout-set-staff-size 18) 
      \override Score.BarNumber.font-size = #1
    }
    \midi {
    }
  }
}