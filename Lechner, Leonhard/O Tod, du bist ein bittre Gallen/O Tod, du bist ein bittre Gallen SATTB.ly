\version "2.22.1"

\header {
  title = "O Tod, du bist ein bittre Gallen"
  composer = "Leonhard Lechner (1553-1606)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 15) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t } % für vogeschlagene Vorzeichen in Alter Musik über Noten -> VOR der Note setzen

global = {
  \key b \aeolian
  \time 4/2
  \dynamicUp
  \autoBeamOff
}



%%%%%%%%%%%%%%%%%%%%%%%%
%%% (Der erste Teil) %%%
%%%%%%%%%%%%%%%%%%%%%%%%

\include "O Tod, du bist ein bittre Gallen_music1.ily"
\include "O Tod, du bist ein bittre Gallen_lyrics1.ily"

sISopran = 
  \new Staff  = "zISopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vISopran" {\nISopran}
      }
      \new Lyrics \lyricsto "vISopran" {\tISopran}
    >>

sIAlt = 
  \new Staff  = "zIAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIAlt" {\nIAlt}
      }
      \new Lyrics \lyricsto "vIAlt" {\tIAlt}
    >>

sITenorI = 
  \new Staff  = "zITenorI"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vITenorI" {\clef "violin_8" \nITenorI}
      }
      \new Lyrics \lyricsto "vITenorI" {\tITenorI}
    >>

sITenorII = 
  \new Staff  = "zITenorII"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vITenorII" {\clef "violin_8" \nITenorII}
      }
      \new Lyrics \lyricsto "vITenorII" {\tITenorII}
    >>

sIBass = 
  \new Staff  = "zIBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIBass" {\clef bass \nIBass}
      }
      \new Lyrics \lyricsto "vIBass" {\tIBass}
    >>



%%%%%%%%%%%%%%%%%%%%%%%%
%%% "Der ander Teil" %%%
%%%%%%%%%%%%%%%%%%%%%%%%

\include "O Tod, du bist ein bittre Gallen_music2.ily"
\include "O Tod, du bist ein bittre Gallen_lyrics2.ily"

sIISopran = 
  \new Staff  = "zIISopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIISopran" {\nIISopran}
      }
      \new Lyrics \lyricsto "vIISopran" {\tIISopran}
    >>

sIIAlt = 
  \new Staff  = "zIIAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIIAlt" {\nIIAlt}
      }
      \new Lyrics \lyricsto "vIIAlt" {\tIIAlt}
    >>

sIITenorI = 
  \new Staff  = "zIITenorI"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIITenorI" {\clef "violin_8" \nIITenorI}
      }
      \new Lyrics \lyricsto "vIITenorI" {\tIITenorI}
    >>

sIITenorII = 
  \new Staff  = "zIITenorII"
    \with {
      instrumentName = "Tenor II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIITenorII" {\clef "violin_8" \nIITenorII}
      }
      \new Lyrics \lyricsto "vIITenorII" {\tIITenorII}
    >>

sIIBass = 
  \new Staff  = "zIIBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vIIBass" {\clef bass \nIIBass}
      }
      \new Lyrics \lyricsto "vIIBass" {\tIIBass}
    >>




%%%%%%%% PARTITUR %%%%%%%%%%


\book {
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sISopran
      \sIAlt
      \sITenorI
      \sITenorII
      \sIBass
    >>
    \layout { }
    \midi {
      \tempo 2=100
    }
  }
  
  \score {
    \header {
      piece = "Der ander Teil"
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \set Score.currentBarNumber = #31
      \sIISopran
      \sIIAlt
      \sIITenorI
      \sIITenorII
      \sIIBass
    >>
    \layout { }
    \midi {
      \tempo 2=100
    }
  }
}