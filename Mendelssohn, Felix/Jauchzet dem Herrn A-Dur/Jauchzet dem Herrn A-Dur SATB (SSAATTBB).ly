\version "2.20.0"

\header {
  title = "Jauchzet dem Herrn alle Welt"
  composer = "Felix Mendelssohn (1809-1847)"
  opus = "op. 69, Nr. 2"
  poet = "Psalm 100"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
  \override Score.BarNumber.font-size = #1
}

\include "Jauchzet dem Herrn A-Dur_music.ily"
\include "Jauchzet dem Herrn A-Dur_lyrics.ily"


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
      \new Lyrics \lyricsto "vSopran" {\tSopran}
      \new Lyrics \with {alignAboveContext = "zSopran"} \lyricsto "s1b" {\repeat unfold 9 {\skip 4} A -- men. __ }
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
      \new Lyrics \lyricsto "vAlt" {\tAlt}
      \new Lyrics \with {alignAboveContext = "zAlt"} \lyricsto "a1b" {\repeat unfold 9 {\skip 4} \Amen }
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
      \new Lyrics \lyricsto "vTenor" {\tTenor}
      \new Lyrics \with {alignAboveContext = "zTenor"} \lyricsto "t1b" {\repeat unfold 9 {\skip 4} \Amen}
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
      \new Lyrics \lyricsto "vBass" {\tBass}
      \new Lyrics \with {alignAboveContext = "zBass"} \lyricsto "b1b" {\tBI} 
    >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ACHTUNG: Alle dim/cresc wurden aus praktischen Gründen durch >/< ersetzt!!! %%%
%%% Dabei langes < gezogen von 75-81 und 106-112, orig. jew. 2 dim nacheinander %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
    \tempo 2=90
  }
}
