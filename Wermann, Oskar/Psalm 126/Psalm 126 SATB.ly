\version "2.22.1"


\header {
  title = "Psalm 126"
  dedication = \markup{\italic "Herrn Emil Winkler, Kantor an der Nikolai-Kirche in Chemnitz, zugeeignet"}
  composer = "Oskar Wermann (1840-1906)"
  opus = "Op 150, Nr. 2"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 17)
  \override Score.BarNumber.font-size = #1
}

\include "Psalm 126_music.ily"
\include "Psalm 126_lyrics.ily"

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
        <<
          \keepWithTag #'s \dTutti
          \new Voice = "vSopran" {\nSopran}
        >>
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
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
        <<
          \keepWithTag #'a \dTutti
          \new Voice = "vAlt" {\nAlt}
        >>
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
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
        <<
          \keepWithTag #'t \dTutti
          \new Voice = "vTenor" {\clef "violin_8" \nTenor}
        >>
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
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
        <<
          \keepWithTag #'b \dTutti
          \new Voice = "vBass" {\clef bass \nBass}
        >>
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>
    

\score {
    \new ChoirStaff
      <<
      \accidentalStyle Score.modern
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
  \layout { }
  \midi {
    \tempo 4=86
  }
}
