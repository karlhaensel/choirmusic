\version "2.24.3"

\include "Im-Herbste_music.ily"
\include "Im-Herbste_lyrics.ily"


sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \common
      \new Voice = "vSopran" {\clef violin \dynamicUp \nSopran}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tText }
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
     \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \common
      \new Voice = "vAlt" {\clef violin \dynamicUp \nAlt}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tText }
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \common
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tText }  
    >>
    
sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \common
      \new Voice = "vBass" {\clef bass \dynamicUp \nBass}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tText }
    >>