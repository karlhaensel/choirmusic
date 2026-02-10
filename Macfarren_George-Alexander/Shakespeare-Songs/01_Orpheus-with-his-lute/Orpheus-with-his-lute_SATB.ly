\version "2.24.4"

\header {
  title = "Orpheus, with his lute"
  subtitle = "Shakespeare Songs, No. 1"
  composer = "George Alexander Macfarren (1813-1887)" 
  poet = "William Shakespeare (1564-1616)"
  tagline = ##f
}

\include "Orpheus-with-his-lute_music.ily"
\include "Orpheus-with-his-lute_lyrics.ily"
\include "Orpheus-with-his-lute_voices.ily"
    

#(set-global-staff-size 14.14)  % very small
%#(set-global-staff-size 15.87)  % small
%#(set-global-staff-size 17.82)  % "normal"


\book {
  \bookOutputSuffix "4pages"
  \paper {
    #(set-paper-size "a4")
    % page-count = 4
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
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}