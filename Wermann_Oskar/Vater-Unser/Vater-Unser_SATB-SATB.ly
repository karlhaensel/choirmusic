\version "2.22.1"


\header {
  title = "Vater Unser"
  subtitle = "für vier Solostimmen und Chor"
  composer = "Oskar Wermann (1840-1906)"
  opus = "Op 23. Nr. 2"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16.5)
  \override Score.BarNumber.font-size = #1
}

\include "Vater-Unser_music.ily"
\include "Vater-Unser_lyrics.ily"

chormidi = \with {midiInstrument = "choir aahs"}


%%% SOLO %%%
sISopran = 
  \new Staff  = "zISopran"
    \with {
      %instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'st \dI
          \new Voice = "vISopran" {\nISopran}
        >>
      }
      \new Lyrics \lyricsto "vISopran" {\keepWithTag #'solo \text}
    >>

sIAlt = 
  \new Staff  = "zIAlt"
    \with {
      %instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'ab \dI
          \new Voice = "vIAlt" {\nIAlt}
        >>
      }
      \new Lyrics \lyricsto "vIAlt" {\keepWithTag #'solo \text}
    >>

sITenor = 
  \new Staff  = "zITenor"
    \with {
      %instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'st \dI
          \new Voice = "vITenor" {\clef "violin_8" \nITenor}
        >>
      }
      \new Lyrics \lyricsto "vITenor" {\keepWithTag #'solo \text}
    >>

sIBass = 
  \new Staff  = "zIBass"
    \with {
      %instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'ab \dI
          \new Voice = "vIBass" {\clef bass \nIBass}
        >>
      }
      \new Lyrics \lyricsto "vIBass" {\keepWithTag #'solo \text}
    >>
    

%%% CHOR %%%
sIISopran = 
  \new Staff  = "zIISopran"
    \with {
      %instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \keepWithTag #'sa \dII
          \new Voice = "vIISopran" {\nIISopran}
        >>
      }
      \new Lyrics \lyricsto "vIISopran" {\keepWithTag #'chor \text}
    >>

sIIAlt = 
  \new Staff  = "zIIAlt"
    \with {
      %instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {
        <<
          \keepWithTag #'sa \dII
          \new Voice = "vIIAlt" {\nIIAlt}
        >>
      }
      \new Lyrics \lyricsto "vIIAlt" {\keepWithTag #'chor \text}
    >>

sIITenor = 
  \new Staff  = "zIITenor"
    \with {
      %instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'tb \dII
          \new Voice = "vIITenor" {\clef "violin_8" \nIITenor}
        >>
      }
      \new Lyrics \lyricsto "vIITenor" {\keepWithTag #'chor \text}
    >>

sIIBass = 
  \new Staff  = "zIIBass"
    \with {
      %instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'tb \dII
          \new Voice = "vIIBass" {\clef bass \nIIBass}
        >>
      }
      \new Lyrics \lyricsto "vIIBass" {\keepWithTag #'chor \text}
    >>

\book {
\score {
  <<
    \new ChoirStaff \with {
      instrumentName = "SOLO"
    } 
      <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sISopran
      \sIAlt
      \sITenor
      \sIBass
    >>
     \new ChoirStaff \with {
       instrumentName = "CHOR"
     }
     <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sIISopran
      \sIIAlt
      \sIITenor
      \sIIBass
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=86
  }
}
}

%%% SOLO %%%
sIOben = 
  \new Staff  = "zIoben"
    \with {
      %instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'st \dI
          \new Voice = "vISopran" {\voiceOne \nISopran}
          \new Voice = "vIAlt" {\voiceTwo \nIAlt}
        >>
      }
      \new Lyrics \lyricsto "vIAlt" {\keepWithTag #'solo \text}
    >>

sIUnten = 
  \new Staff  = "zIUnten"
    \with {
      %instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'st \dI
          \new Voice = "vITenor" {\clef "violin_8" \voiceOne \nITenor}
          \new Voice = "vIBass" {\clef bass \voiceTwo \nIBass}
        >>
      }
      \new Lyrics \lyricsto "vIBass" {\keepWithTag #'solo \text}
    >>
    

%%% CHOR %%%
sIIOben = 
  \new Staff  = "zIIOben"
    \with {
      %instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'sa \dII
          \new Voice = "vIISopran" {\voiceOne \nIISopran}
          \new Voice = "vIIAlt" {\voiceTwo \nIIAlt}
        >>
      }
      \new Lyrics \lyricsto "vIISopran" {\keepWithTag #'chor \text}
    >>

sIIUnten = 
  \new Staff  = "zIIBass"
    \with {
      %instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        <<
          \keepWithTag #'tb \dII
          \new Voice = "vIITenor" {\clef "violin_8"\voiceOne \nIITenor}
          \new Voice = "vIIBass" {\clef bass \voiceTwo \nIIBass}
        >>
      }
      \new Lyrics \lyricsto "vIIBass" {\keepWithTag #'chor \text}
    >>

\book {
  \bookOutputSuffix "kompakt"
\score {
  <<
    \new ChoirStaff \with {
      instrumentName = "SOLO"
    } 
      <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sIOben
      \sIUnten
    >>
     \new ChoirStaff \with {
       instrumentName = "CHOR"
     }
     <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sIIOben
      \sIIUnten
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=86
  }
}
}