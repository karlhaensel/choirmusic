\version "2.24.00"

\include "Verleih_woodwinds.ily"
\include "Verleih_choir.ily"
\include "Verleih_lyrics.ily"
\include "Verleih_strings.ily"
%\include "Verleih_pianoReduction.ily"


%%% CUE VOICES %%%

\addQuote "chorbass" { \nBass }

\addQuote "vio1" { \nVioI }
\addQuote "vio2" { \nVioII }
\addQuote "cello1" { \nVcI }
\addQuote "cello2" { \nVcII }


%%% WOODWINDS %%%

sFlI =
  \new Staff = "zFlI"
    \with {
      instrumentName = "Flauto I"
      midiInstrument = "flute"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'flI \dWoodwindsI
      \keepWithTag #'flI \dWoodwindsII
      {\nFlI}
    >>
    
sFlII =
  \new Staff = "zFlII"
    \with {
      instrumentName = "Flauto II"
      midiInstrument = "flute"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'flII \dWoodwindsI
      \keepWithTag #'flII \dWoodwindsII
      {\nFlII}
    >>

sKlarI =
  \new Staff = "zKlarI"
    \with {
      instrumentName = "Clarinetto I in B"
      midiInstrument = "clarinet"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'klarI \dWoodwindsI
      \keepWithTag #'klarI \dWoodwindsII
      {\transposition bes \transpose bes c' \nKlarI }
    >>

sKlarII =
  \new Staff = "zKlarII"
    \with {
      instrumentName = "Clarinetto II in B"
      midiInstrument = "clarinet"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'klarII \dWoodwindsI
      \keepWithTag #'klarII \dWoodwindsII
      {\transposition bes \transpose bes c' \nKlarII }
    >>

sFag =
  \new Staff = "zFag"
    \with {
      instrumentName = "Fagotto I, II"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'fag \dBass
      \keepWithTag #'fag \dWoodwindsII
      {\clef bass \partCombine  \nFagI \nFagII}
    >>

sFagI =
  \new Staff = "zFagI"
    \with {
      instrumentName = "Fagotto I"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'fag \dBass
      \keepWithTag #'fag \dWoodwindsII
      {\clef bass \nFagI}
    >>

sFagII =
  \new Staff = "zFagII"
    \with {
      instrumentName = "Fagotto II"
      midiInstrument = "bassoon"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'fag \dBass
      \keepWithTag #'fag \dWoodwindsII
      {\clef bass \nFagII}
    >>


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
      \keepWithTag #'vioI \dStringsI
      \keepWithTag #'vioI \dStringsII
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
      \keepWithTag #'vioII \dStringsI
      \keepWithTag #'vioII \dStringsII
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
      \keepWithTag #'vla \dStringsI
      \keepWithTag #'vla \dStringsII
      {\new Voice = "vVla" {\clef alto \nVla}}
    >>
    
sVcI =
  \new Staff = "zVcI"
    \with {
      instrumentName = "Violoncello I"
      midiInstrument = "cello"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'vcI \dStringsI
      \keepWithTag #'vcI \dStringsII
      {\new Voice = "vVcI" {\clef bass \nVcI}}
    >>

sVcII =
  \new Staff = "zVcII"
    \with {
      instrumentName = "Violoncello II"
      midiInstrument = "cello"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'vcII \dStringsI
      \keepWithTag #'vcII \dStringsII
      {\new Voice = "vVcII" {\clef bass \nVcII}}
    >>

sCb =
  \new Staff = "zCb"
    \with {
      instrumentName = "Basso ed Organo"
      midiInstrument = "contrabass"
      \consists "Merge_rests_engraver"
    }
    <<
      \keepWithTag #'cb \dBass
      \keepWithTag #'cb \dStringsII
      {\new Voice = "vCb" {\clef bass \nCb}}
    >>
    
    

%%% PIANO REDUCTION %%%

% sRechts =
%   \new Staff = "zRechts"
%     \with {
%       midiInstrument = "acoustic grand"
%     }
%     {\nRechts}
% 
% sLinks =
%   \new Staff = "zLinks"
%     \with {
%       midiInstrument = "acoustic grand"
%     }
%     {\clef bass \nLinks}