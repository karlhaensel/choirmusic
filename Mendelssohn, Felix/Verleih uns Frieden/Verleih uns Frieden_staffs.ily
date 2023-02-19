\version "2.24.00"

%\include "Verleih uns Frieden_woodwinds.ily"
\include "Verleih uns Frieden_choir.ily"
\include "Verleih uns Frieden_lyrics.ily"
%\include "Verleih uns Frieden_strings.ily"
%\include "Verleih uns Frieden_pianoReduction.ily"



%%% WOODWINDS %%%

% sFlI =
%   \new Staff = "zFlI"
%     \with {
%       instrumentName = "Flauto I"
%       midiInstrument = "flute"
%       \consists "Merge_rests_engraver"
%     }
%     <<{\nFlI}>>
%     
% sFlII =
%   \new Staff = "zFlII"
%     \with {
%       instrumentName = "Flauto II"
%       midiInstrument = "flute"
%       \consists "Merge_rests_engraver"
%     }
%     <<{\nFlII}>>
% 
% sKlarI =
%   \new Staff = "zKlarI"
%     \with {
%       instrumentName = "Clarinetto I in B"
%       midiInstrument = "clarinet"
%       \consists "Merge_rests_engraver"
%     }
%     <<{\transposition f \transpose bes c' \nKlarI }>>
% 
% sKlarII =
%   \new Staff = "zKlarII"
%     \with {
%       instrumentName = "Clarinetto II in B"
%       midiInstrument = "clarinet"
%       \consists "Merge_rests_engraver"
%     }
%     <<{\transposition f \transpose bes c' \nKlarII }>>
% 
% sFag =
%   \new Staff = "zFag"
%     \with {
%       instrumentName = "Fagotti"
%       midiInstrument = "bassoon"
%       \consists "Merge_rests_engraver"
%     }
%     <<{\clef bass \partCombine \nFagI \nFagII}>>


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

% sVioI =
%   \new Staff = "zVioI"
%     \with {
%       instrumentName = "Violino I"
%       midiInstrument = "violin"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'vioI \dStrings
%       {\new Voice = "vVioI" {\nVioI}}
%     >>
%     
% sVioII =
%   \new Staff = "zVioII"
%     \with {
%       instrumentName = "Violino II"
%       midiInstrument = "violin"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'vioII \dStrings
%       {\new Voice = "vVioII" {\nVioII}}
%     >>
% 
% sVla =
%   \new Staff = "zVla"
%     \with {
%       instrumentName = "Viola"
%       midiInstrument = "viola"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'vla \dStrings
%       {\new Voice = "vVla" {\clef alto \nVla}}
%     >>
%     
% sVcI =
%   \new Staff = "zVcI"
%     \with {
%       instrumentName = "Violoncello I"
%       midiInstrument = "cello"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'vcI \dStrings
%       {\new Voice = "vVcI" {\clef bass \nVcI}}
%     >>
% 
% sVcII =
%   \new Staff = "zVcII"
%     \with {
%       instrumentName = "Violoncello II"
%       midiInstrument = "cello"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'vcII \dStrings
%       {\new Voice = "vVcII" {\clef bass \nVcII}}
%     >>
% 
% sCb =
%   \new Staff = "zCb"
%     \with {
%       instrumentName = "Basso ed Organo"
%       midiInstrument = "contrabass"
%       \consists "Merge_rests_engraver"
%     }
%     <<
%       \keepWithTag #'cb \dStrings
%       {\new Voice = "vCb" {\clef bass \nCb}}
%     >>
    
    

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