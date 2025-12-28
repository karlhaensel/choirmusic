\version "2.22.00"

\include "03_global.ily"
\include "03_woodwinds.ily"
\include "03_brass.ily"
\include "03_timpani.ily"
\include "03_choir.ily"
\include "03_lyrics.ily"
\include "03_strings.ily"
\include "03_pianoReduction.ily"


%%% CUE VOICES %%%
\addQuote "fagotto1" { \nFagI }
\addQuote "soprano" { \nSopran}
\addQuote "violoncello" { \nVc }


%%% WOODWINDS %%%

sFl =
  \new Staff = "zFlauti"
    \with {
      instrumentName = "Flauti"
      midiInstrument = "flute"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\partCombine \nFlI \nFlII}
    >>

sFlI =
  \new Staff = "zFlautoI"
    \with {
      instrumentName = "Flauto I"
      midiInstrument = "flute"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\nFlI}
    >>

sFlII =
  \new Staff = "zFlautoII"
    \with {
      instrumentName = "Flauto II"
      midiInstrument = "flute"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\nFlII}
    >>

sOb =
  \new Staff = "zOboi"
    \with {
      instrumentName = "Oboi"
      midiInstrument = "oboe"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\partCombine \nObI \nObII}
    >>

sObI =
  \new Staff = "zOboeI"
    \with {
      instrumentName = "Oboe I"
      midiInstrument = "oboe"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\nObI}
    >>
    
sObII =
  \new Staff = "zOboeII"
    \with {
      instrumentName = "Oboe II"
      midiInstrument = "oboe"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\nObII}
    >>

sKlar =
  \new Staff = "zClarinetti"
    \with {
      instrumentName = "Clarinetti in B"
      midiInstrument = "clarinet"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition bes \transpose bes c {\partCombine \nKlarI \nKlarII}}
    >>

sKlarI =
  \new Staff = "zClarinettoI"
    \with {
      instrumentName = "Clarinetto I in B"
      midiInstrument = "clarinet"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition bes \transpose bes c {\nKlarI}}
    >>
    
sKlarII =
  \new Staff = "zClarinettoII"
    \with {
      instrumentName = "Clarinetto II in B"
      midiInstrument = "clarinet"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition bes \transpose bes c {\nKlarII}}
    >>

sFag =
  \new Staff = "zFagotti"
    \with {
      instrumentName = "Fagotti"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \partCombine \nFagI \nFagII}
    >>

sFagI =
  \new Staff = "zFagottoI"
    \with {
      instrumentName = "Fagotto I"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \nFagI}
    >>
    
sFagII =
  \new Staff = "zFagottoII"
    \with {
      instrumentName = "Fagotto II"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \nFagII}
    >>

%%% BRASS %%%

sHrn =
  \new Staff = "zCorni"
    \with {
      instrumentName = "Corni in Es"
      midiInstrument = "french horn"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition es \transpose es c' {\partCombine \nHrnI \nHrnII}}
    >>

sHrnI =
  \new Staff = "zCornoI"
    \with {
      instrumentName = "Corno I in Es"
      midiInstrument = "french horn"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition es \transpose es c' \nHrnI }
    >>
    
sHrnII =
  \new Staff = "zCornoII"
    \with {
      instrumentName = "Corno II in Es"
      midiInstrument = "french horn"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\transposition es \transpose es c' \nHrnII}
    >>

sPosAT =
  \new Staff = "zTromboniAT"
    \with {
      instrumentName = \markup {\center-column{"Tromboni" "Alto e Tenore"}}
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef "alto" \partCombine \nPosA \nPosT}
    >>
    
sPosA =
  \new Staff = "zTromboneA"
    \with {
      instrumentName = "Trombone Alto"
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef "alto" \nPosA}
    >>
    
sPosT =
  \new Staff = "zTromboneT"
    \with {
      instrumentName = "Trombone Tenore"
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \nPosT}
    >>

sPosB =
  \new Staff = "zTromboneB"
    \with {
      instrumentName = "Trombone Basso"
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \nPosB}
    >>



%%% TIMPANI %%%

sPk =
  \new Staff = "zTimpani"
    \with {
      instrumentName = "Timpani in Es.B."
      midiInstrument = "timpani"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      {\clef bass \nPk}
    >>



%%% CHOIR %%%

sSopran = 
  \new Staff  = "zSoprano"
    \with {
      instrumentName = "Soprano"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \global_marks
      \keepWithTag #'s \dChoir
      {\new Voice = "vSoprano" {\nSopran}}
      \new Lyrics \lyricsto "vSoprano" {\tSopran}
    >>

sAlt = 
  \new Staff  = "zAlto"
    \with {
      instrumentName = "Alto"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \global_marks
      \keepWithTag #'a \dChoir
      {\new Voice = "vAlto" {\nAlt}}
      \new Lyrics \lyricsto "vAlto" {\tAlt}
    >>

sTenor = 
  \new Staff  = "zTenore"
    \with {
      instrumentName = "Tenore"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \global_marks
      \keepWithTag #'t \dChoir
      {\new Voice = "vTenore" {\clef "violin_8" \nTenor}}
      \new Lyrics \lyricsto "vTenore" {\tTenor}
    >>

sBass = 
  \new Staff  = "zBasso"
    \with {
      instrumentName = "Basso"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \global_marks
      \keepWithTag #'b \dChoir
      {\new Voice = "vBasso" {\clef bass \nBass}}
      \new Lyrics \lyricsto "vBasso" {\tBass}
    >>



%%% STRINGS %%%

sVioI =
  \new Staff = "zVioI"
    \with {
      instrumentName = "Violino I"
      midiInstrument = "violin"
      \consists "Merge_rests_engraver"
      \consists Page_turn_engraver
    }
    <<
      \set Staff.minimumPageTurnLength = #(ly:make-moment 2/1)
      \global_marks
      \keepWithTag #'vioI \dStrings
      {\new Voice = "vVioI" {\nVioI}}
    >>
    
sVioII =
  \new Staff = "zVioII"
    \with {
      instrumentName = "Violino II"
      midiInstrument = "violin"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      \keepWithTag #'vioII \dStrings
      {\new Voice = "vVioII" {\nVioII}}
    >>

sVla =
  \new Staff = "zVla"
    \with {
      instrumentName = "Viola"
      midiInstrument = "viola"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      \keepWithTag #'vla \dStrings
      {\new Voice = "vVla" {\clef alto \nVla}}
    >>
    
sVc =
  \new Staff = "zVc"
    \with {
      instrumentName = "Violoncello"
      midiInstrument = "cello"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      \keepWithTag #'vc \dStrings
      {\new Voice = "vVc" {\clef bass \nVc}}
    >>
    
sCb =
  \new Staff = "zCb"
    \with {
      instrumentName = "Basso"
      midiInstrument = "contrabass"
      \consists "Merge_rests_engraver"
    }
    <<
      \global_marks
      \keepWithTag #'cb \dStrings
      {\new Voice = "vCb" {\clef bass \nCb}}
    >>
    
    

%%% PIANO REDUCTION %%%

sRechts =
  \new Staff = "zRechts"
    \with {
      midiInstrument = "acoustic grand"
    }
    <<
      \global_marks
      {\nRechts}
    >>

sLinks =
  \new Staff = "zLinks"
    \with {
      midiInstrument = "acoustic grand"
    }
    <<
      \global_marks
      {\clef bass \nLinks}
    >>