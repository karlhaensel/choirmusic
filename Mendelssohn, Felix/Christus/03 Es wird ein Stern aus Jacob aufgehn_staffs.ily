\version "2.22.00"

\include "03 Es wird ein Stern aus Jacob aufgehn_brass.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_timpani.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_choir.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_lyrics.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_strings.ily"
\include "03 Es wird ein Stern aus Jacob aufgehn_pianoReduction.ily"



%%% BRASS %%%

sHrn =
  \new Staff = "zHorn"
    \with {
      instrumentName = "Horn in Es"
      midiInstrument = "french horn"
      \consists "Merge_rests_engraver"
    }
    <<{\transposition es \transpose es c' {\partCombine \nHrnI \nHrnII}}>>

sPosAT =
  \new Staff = "zPosAT"
    \with {
      instrumentName = "Alt- und Tenorposaune"
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<{\clef "alto" \partCombine \nPosA \nPosT}>>
    
sPosB =
  \new Staff = "zPosB"
    \with {
      instrumentName = "Bassposaune"
      midiInstrument = "trombone"
      \consists "Merge_rests_engraver"
    }
    <<{\clef bass \nPosB}>>



%%% TIMPANI %%%

sPk =
  \new Staff = "zPauken"
    \with {
      instrumentName = "Pauken in Es.B."
      midiInstrument = "timpani"
      \consists "Merge_rests_engraver"
    }
    <<{\clef bass \nPk}>>



%%% CHOIR %%%

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Soprano"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'s \dChoir
      {\new Voice = "vSopran" {\nSopran}}
      \new Lyrics \lyricsto "vSopran" {\tSopran}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alto"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'a \dChoir
      {\new Voice = "vAlt" {\nAlt}}
      \new Lyrics \lyricsto "vAlt" {\tAlt}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenore"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'t \dChoir
      {\new Voice = "vTenor" {\clef "violin_8" \nTenor}}
      \new Lyrics \lyricsto "vTenor" {\tTenor}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Basso"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      \keepWithTag #'b \dChoir
      {\new Voice = "vBass" {\clef bass \nBass}}
      \new Lyrics \lyricsto "vBass" {\tBass}
    >>



%%% STRINGS %%%

sVioI =
  \new Staff = "zVioI"
    \with {
      instrumentName = "Violino I"
      midiInstrument = "violin"
      \consists "Merge_rests_engraver"
    }
    <<
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
      \keepWithTag #'cb \dStrings
      {\new Voice = "vCb" {\clef bass \nCb}}
    >>
    
    

%%% PIANO REDUCTION %%%

sRechts =
  \new Staff = "zRechts"
    \with {
      midiInstrument = "acoustic grand"
    }
    {\nRechts}

sLinks =
  \new Staff = "zLinks"
    \with {
      midiInstrument = "acoustic grand"
    }
    {\clef bass \nLinks}