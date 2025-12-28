\version "2.22.1"

\header {
  title = "Zu dieser österlichen Zeit"
  composer = "Johann Eccard (1553-1611)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

\include "Zu-dieser-österlichen-Zeit_SATB_music.ily"
\include "Zu-dieser-österlichen-Zeit_SATB_lyrics.ily"

chormidi = \with {midiInstrument = "choir aahs"}

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'sopran \tEins}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'sopran \tZwei \tRefrain}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'sopran \tEins}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'alt \tEins}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'alt \tZwei \tRefrain}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'alt \tEins}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'tenor \tEins}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'tenor \tZwei \tRefrain}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'tenor \tEins}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'bass \tEins}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'bass \tZwei \tRefrain}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'bass \tEins}
    >>
    

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
