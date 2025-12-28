\version "2.22.1"

\include "Schlaf-wohl-du-Himmelsknabe_music.ily"
\include "Schlaf-wohl-du-Himmelsknabe_lyrics.ily"


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
      \new  Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTextI }
      \new  Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTextII }
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
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTextI }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTextII }
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
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTextI }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTextII }
    
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
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTextI }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTextII }
    >>