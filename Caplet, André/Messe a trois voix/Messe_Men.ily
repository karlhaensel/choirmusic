% Stimmen für Männerchor-Version

%%%%%%%%%%%%%%%%%%%%%% KYRIE %%%%%%%%%%%%%%%%%%
sKTenor = 
  \new Staff  = "zKTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKSopran
      { 
        \new Voice = "vKTenor" {\clef "violin_8" \transpose c c, \nKSopran}
      }

      \new Lyrics \lyricsto "vKTenor" {\tKSopran}
    >>
    
sKTenorI = 
  \new Staff  = "zKTenor"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKSopran
      { 
        \new Voice = "vKTenor" {\clef "violin_8" \transpose c c, \nKSopran}
      }

      \new Lyrics \lyricsto "vKTenor" {\tKSopran}
    >>

sKTenorII = 
  \new Staff  = "zKBariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKMezzo
      { 
        \new Voice = "vKBariton" {\clef "violin_8" \transpose c c, \nKMezzo}
      }
      \new Lyrics \lyricsto "vKBariton" {\tKMezzo}
    >>

sKBariton = 
  \new Staff  = "zKBariton"
    \with {
      instrumentName = "Bariton"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKMezzo
      { 
        \new Voice = "vKBariton" {\clef bass \transpose c c, \nKMezzo}
      }
      \new Lyrics \lyricsto "vKBariton" {\tKMezzo}
    >>

sKBass = 
  \new Staff  = "zKBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dKTutti
      \dKAlt
      { 
        \new Voice = "vKBass" {\clef bass \transpose c c, \nKAlt}
      }
      \new Lyrics \lyricsto "vKBass" {\tKAlt}
    >>

%%%%%%%%%%% GLORIA %%%%%%%%%%%%%%%

sGTenor = 
  \new Staff  = "zGTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGSopran
      { 
        \new Voice = "vGTenor" {\clef "violin_8" \transpose c c, \nGSopran}
      }

      \new Lyrics \lyricsto "vGTenor" {\tGSopran}
    >>

sGTenorI = 
  \new Staff  = "zGTenor"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGSopran
      { 
        \new Voice = "vGTenor" {\clef "violin_8" \transpose c c, \nGSopran}
      }

      \new Lyrics \lyricsto "vGTenor" {\tGSopran}
    >>

sGTenorII = 
  \new Staff  = "zGBariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGMezzo
      { 
        \new Voice = "vGBariton" {\clef "violin_8" \transpose c c, \nGMezzo}
      }
      \new Lyrics \lyricsto "vGBariton" {\tGMezzo}
    >>

sGTenorII = 
  \new Staff  = "zGBariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGMezzo
      { 
        \new Voice = "vGBariton" {\clef "violin_8" \transpose c c, \nGMezzo}
      }
      \new Lyrics \lyricsto "vGBariton" {\tGMezzo}
    >>

sGBariton = 
  \new Staff  = "zGBariton"
    \with {
      instrumentName = "Bariton"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGMezzo
      { 
        \new Voice = "vGBariton" {\clef bass \transpose c c, \nGMezzo}
      }
      \new Lyrics \lyricsto "vGBariton" {\tGMezzo}
    >>

sGBass = 
  \new Staff  = "zGBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \dGTutti
      \dGAlt
      { 
        \new Voice = "vGBass" {\clef bass \transpose c c, \nGAlt}
      }
      \new Lyrics \lyricsto "vGBass" {\tGAlt}
    >>
    

%%%%%%%%%%%%%% SANCTUS %%%%%%%%%%%%%%%%%%%%
sSTenor = 
  \new Staff  = "zSTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dSTutti
      { 
        \new Voice = "vSTenor" {\clef "violin_8" \transpose c c, \nSSopran}
      }

      \new Lyrics \lyricsto "vSTenor" {\keepWithTag #'s \tSTutti}
    >>

sSTenorI = 
  \new Staff  = "zSTenor"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dSTutti
      { 
        \new Voice = "vSTenor" {\clef "violin_8" \transpose c c, \nSSopran}
      }

      \new Lyrics \lyricsto "vSTenor" {\keepWithTag #'s \tSTutti}
    >>
    
sSTenorII = 
  \new Staff  = "zSBariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dSTutti
      { 
        \new Voice = "vSBariton" {\clef "violin_8" \transpose c c, \nSMezzo}
      }
      \new Lyrics \lyricsto "vSBariton" {\keepWithTag #'m \tSTutti}
    >>
    
sSBariton = 
  \new Staff  = "zSBariton"
    \with {
      instrumentName = "Bariton"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dSTutti
      { 
        \new Voice = "vSBariton" {\clef bass \transpose c c, \nSMezzo}
      }
      \new Lyrics \lyricsto "vSBariton" {\keepWithTag #'m \tSTutti}
    >>

sSBass = 
  \new Staff  = "zSBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dSTutti
      { 
        \new Voice = "vSBass" {\clef bass \transpose c c, \nSAlt}
      }
      \new Lyrics \lyricsto "vSBass" {\keepWithTag #'a \tSTutti}
    >>
    
    
%%%%%%%%%%%%%%%%% AGNUS DEI %%%%%%%%%%%%%%%%%%%%%
sATenor = 
  \new Staff  = "zATenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dATutti
      { 
        \new Voice = "vATenor" {\clef "violin_8" \transpose c c, \nASopran}
      }

      \new Lyrics \lyricsto "vATenor" {\keepWithTag #'s \tATutti}
    >>

sATenorI = 
  \new Staff  = "zATenor"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dATutti
      { 
        \new Voice = "vATenor" {\clef "violin_8" \transpose c c, \nASopran}
      }

      \new Lyrics \lyricsto "vATenor" {\keepWithTag #'s \tATutti}
    >>
    
sATenorII = 
  \new Staff  = "zABariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dATutti
      { 
        \new Voice = "vABariton" {\clef "violin_8" \transpose c c, \nAMezzo}
      }
      \new Lyrics \lyricsto "vABariton" {\keepWithTag #'m \tATutti}
    >>
    
sABariton = 
  \new Staff  = "zABariton"
    \with {
      instrumentName = "Bariton"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dATutti
      { 
        \new Voice = "vABariton" {\clef bass \transpose c c, \nAMezzo}
      }
      \new Lyrics \lyricsto "vABariton" {\keepWithTag #'m \tATutti}
    >>

sABass = 
  \new Staff  = "zABass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dATutti
      { 
        \new Voice = "vABass" {\clef bass \transpose c c, \nAAlt}
      }
      \new Lyrics \lyricsto "vABass" {\keepWithTag #'a \tATutti}
    >>
    
    
%%%%%%%%%%%%%%%%%%%% O SALUTARIS %%%%%%%%%%%%%%
sOTenor = 
  \new Staff  = "zOTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dOTutti
      { 
        \new Voice = "vOTenor" {\clef "violin_8" \transpose c c, \nOSopran}
      }

      \new Lyrics \lyricsto "vOTenor" {\keepWithTag #'s \tOTutti}
    >>
    
sOTenorI = 
  \new Staff  = "zOTenor"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dOTutti
      { 
        \new Voice = "vOTenor" {\clef "violin_8" \transpose c c, \nOSopran}
      }

      \new Lyrics \lyricsto "vOTenor" {\keepWithTag #'s \tOTutti}
    >>
    
sOBariton = 
  \new Staff  = "zOBariton"
    \with {
      instrumentName = "Bariton"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dOTutti
      { 
        \new Voice = "vOBariton" {\clef bass \transpose c c, \nOMezzo}
      }
      \new Lyrics \lyricsto "vOBariton" {\keepWithTag #'m \tOTutti}
    >>
    
sOTenorII = 
  \new Staff  = "zOBariton"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'m \dOTutti
      { 
        \new Voice = "vOBariton" {\clef "violin_8" \transpose c c, \nOMezzo}
      }
      \new Lyrics \lyricsto "vOBariton" {\keepWithTag #'m \tOTutti}
    >>

sOBass = 
  \new Staff  = "zOBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dOTutti
      { 
        \new Voice = "vOBass" {\clef bass \transpose c c, \nOAlt}
      }
      \new Lyrics \lyricsto "vOBass" {\keepWithTag #'a \tOTutti}
    >>