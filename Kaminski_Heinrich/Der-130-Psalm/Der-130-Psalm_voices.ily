\version "2.22.1"

chormidi = \with {midiInstrument = "choir aahs"}


%%%%%%%%%%%%%%
%%% PART I %%%
%%%%%%%%%%%%%%

\include "I_music.ily"
\include "I_lyrics.ily"

sISopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dTutti
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
    >>

sIAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dTutti
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
    >>

sITenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \dTutti
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
    >>

sIBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \dTutti
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>


%%%%%%%%%%%%%%%
%%% PART II %%%
%%%%%%%%%%%%%%%

\include "II_music.ily"
\include "II_lyrics.ily"

sIISolo= 
  \new Staff  = "zSolo"
    \with {
      instrumentName = "Sopransolo"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'sol \dTutti
      { 
        \new Voice = "vSolo" {\nSolo}
      }
      \new Lyrics \lyricsto "vSolo" { \tSolo}
    >>


sIISopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dTutti
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
    >>

sIIAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dTutti
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
    >>

sIITenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \dTutti
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
    >>

sIIBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \dTutti
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>


%%%%%%%%%%%%%%%%
%%% PART III %%%
%%%%%%%%%%%%%%%%

\include "III_music.ily"
\include "III_lyrics.ily"

sIIISopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dTutti
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
    >>

sIIIAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dTutti
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
    >>

sIIITenor =
  % Vorbereitung Lyrics T1 ueber Zeile
  \new Lyrics = "lTI" \with { 
    alignAboveContext = "staff"
    \override VerticalAxisGroup.staff-affinity = #DOWN
    }
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \dTutti
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
      \context Lyrics = "lTI" \lyricsto "vTenorI" {\keepWithTag #'tI \tTutti}
    >>

sIIIBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \dTutti
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>