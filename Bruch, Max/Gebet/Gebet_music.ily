\version "2.22.1"

global = {
  \key e \minor
  \time 2/4
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none
}

dTutti = {
  \global
  \tempo "Andante" \tag #'s \tag #'a \tag #'t {s4\p s} \tag #'b {s4 s\p} | s2*3 |
  s4 s\< | s2 | s4\> s | s\! s | s\p s | s s\< |
  
  s2\> | s4\! s\p | s2*2 | s4. s8\pp |
  s2 | \tempo "rit." s2*2 \bar "||" \tempo "a tempo" s4. s8\cresc |
  s2*3 | s4\f s|
  
  \tag #'s {s4\> s8.} \tag #'a \tag #'t \tag #'b { s4 s8.\> } s16\! | s2 | s4\p s | s2 |
  s4. s8\> | s4. s8\! | \tag #'s \tag #'a \tag #'t {s4\pp s} \tag #'b { s4. s8\pp} | \tempo "rit." s2 | s2 \bar "||"
  \tempo "a tempo" \tag #'s \tag #'a \tag #'t {s4\p s | s\cresc s} \tag #'b {s4 s\p | s s\cresc} | s2 | \tag #'s \tag #'a \tag #'b { s4. s8\f} \tag #'t { s4 s\f} |
  
  s2*2 | s2\> | s\! | s\p |
  s4 s\< | s4.\> s8\! | s4 s\p | s4. s8 | s2 |
  s4. s8\pp | s4 \tempo "rit." s | s2*2 \bar "|."
}

nSopran = \relative c'' {
  \global
  g4. r8 | b2-> | b8. a16 a8 g | fis4. fis8 |
  fis4 fis | b b | c2 | b4. r8 | gis4 a8 b | cis4 cis |
  
  e2 | cis8 r cis4 | b4.-> a8 | a( gis4) fis8 | e4. e8 |
  a4 gis8([ cis]) | b4. b8 | b2\fermata | b4 b8 b |
  b4 fis8 b | d4 d8 d | d4 a8 d | fis4 fis8 fis |
  
  fis2 | fis,4. r8 | dis'4 dis8. dis16 | dis4 cis8 cis |
  cis4 cis8 cis | cis4 b8 r | gis4 b8 b | b4( ais) | b2\fermata |
  b4. r8 | e2 | e8. dis16 dis8 e | fis4. b,8 |
  
  g'4. e8 | d( c4) b8 | a2 | b4. r8 | b4 a8 b |
  c4 a | d2 | d4 b | a4.\espressivo g8 | g4 a |
  b4. b8 | c4 b8( g) | b4. b8 | b2\fermata |
}

nAlt = \relative c' {
  \global
  e4. r8 | g4.->( fis8) | e8. e16 dis8 e | e4. e8 |
  e( dis4) fis8 | fis([ e]) e([ b']) | b4( a8[ g]) | fis4. r8 | e4 e8 e | e4 a |
  
  b2 | a8 r e4 | dis-> e | e dis | e4. e8 |
  e4. e8 | e([ cis]) dis4 | e2\fermata | gis4 g8 g |
  fis4 fis8 fis | b4 b8 bes | a4 a8 a | a4 ais8 b |
  
  cis4.( b8) | ais4. r8 | b4 b8. b16 | b4 b8 b |
  b([ gis]) ais ais | ais4 b8 r | e,4 gis8 g | fis2 | fis\fermata |
  g!4. r8 | c2 | a8. a16 a8 a | a4. a8 |
  
  g4. g8 | a4 g | g( fis8[ e]) | dis4. r8 | gis4 fis8 gis |
  a4 a8([ g!]) | g([ e] fis4) | g4 d8([ dis]) | e4.\espressivo e8 | b([ g']) fis([ e]) |
  d4. g8 | fis([ e]) dis([ e]) | e4 dis | e2\fermata |
}

nTenor = \relative c' {
  \global
  b4. r8 | e4.->( d8) | c8. c16 c8 b | c4. c8 |
  b4 b | b e | e8([ g fis e]) | dis4. r8 | e4 dis8 d | cis4 e |
  
  b4.( e8) | e r a,([ gis]) | fis4-> e | e8([ gis b]) a | gis4. gis8 |
  e([ fis]) gis([ a]) | fis4 b8([ a]) | gis2\fermata | e'4 e8 e |
  e([ d!]) d d | b([ d]) g g | g([ fis]) fis fis | fis4 e8 d |
  
  e4( d) | cis4. r8 | dis4 fis8. fis16 | e4 e8 e |
  e4 fis8 e | e4 dis8 r | e4 e8 e | cis2 | dis\fermata |
  e4. r8 | g2 | c,8. c16 c8 c | c4 b |
  
  b4 c | a8.([ d16]) d4 | e( fis) | fis4. r8 | d!4 e8 d |
  c([ e]) e4 | a,( d) | d g | c,4.\espressivo c8 | b4 d8([ c]) |
  b4. b8 | a([ g]) fis([ e]) | fis4 a | gis2\fermata |
}

nBass = \relative c {
  \global
  r4 e4~ | e8 r e4->~ | e8. e16 fis8 g | a4. a8 |
  b4 b8([ a]) | g4 g | a2 | b4. r8 | e,4 fis8 gis | a4 a |
  
  gis2 | a8 r a,4 | b-> cis | b b | cis4. cis8 |
  cis4 b8([ a]) | b4 b | e2\fermata | e4 e8 g |
  b4 b8 b | g4 g8 bes | d4 d,8 d' | d4 cis8 b |
  
  ais4( b) | fis4. r8 | b,4 dis8. dis16 | gis4 gis8 gis |
  fis4 fis8 fis | fisis4 gis8 r | r4 r8 cis, | fis2 | b,\fermata |
  r4 e~ | e8 r e4 | fis8. fis16 fis8 e | dis4. b'8 |
  
  e,4. e8 | fis4 g | c2 | b4. r8 | e,4 e8 e |
  a4 c, | d4.( c8) | b4 g | c4.\espressivo c8 | e4 d |
  g4. g,8 | a4 b8([ c]) | b4 b | <e e,>2\fermata | 
}

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'s \dTutti}
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tTutti}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'a \dTutti}
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tTutti}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'t \dTutti}
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tTutti}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      {\keepWithTag #'b \dTutti}
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tTutti}
    >>
    