\version "2.22.1"

global = {
  \key e \minor
  \time 4/2
  \autoBeamOff
}

Sechser = { \bar "||" \time 6/4 }
Vierer = { \bar "||" \time 4/2 }


nSopranI = \relative c' {
  \global
  e1 a~ | a2 g c2. c4 | b1 r2 e | e d c b |
  R\breve | e,1 a~ | a2 g c2. c4 | b1 r | r2 e, b'1~ |
  b2 a d2. d4 | c2 a a g | fis1 b | R\breve 
  
  r2 c c b | a g4 fis a e a2~( | a4 gis8[ fis] \ficta gis!2) a1 | a4 a b4. b8 \ficta g!4 g c c |
  b4.( c8 d4) b a( g2 fis4) | g1 g4 g c4. c8 | b4 b b4. b8 b4 g fis2 |
  \Sechser gis b4 c2 b4 | a2. a2( gis4) | a2 b4 \ficta c!2 b4 | a2. a2( gis4) |
  
  \Vierer a1 r2 a | d2. b4 b2 e~( | e4 d c b a2) b | c1 b2 e, |
  a2. fis4 fis2 b~ | b b c a | r1 r2 a | d2. b4 b2 e~( |
  e4 d c b a2) b~ | b a2.( gis8[ fis] \ficta gis!2) | a e e'2. c4 | c2 b2. a4 a2 | b\breve \bar "|."
}

nSopranII = \relative c' {
  \global
  R\breve*2 | r1 e | a1. g2 |
  c2. c4 b1 | r2 e e d | c( b4 a g2) e | r e a a | c b r1 |
  r2 a2.( gis8[ fis] \ficta gis!2) | a2.( b4 c2) b2 | b2.( a8[ g] fis2 g~ | g) e r b' |
  
  e,2.( d4 e fis g e | fis2) a r c | b1 e,2. e4 | fis4. fis8 \ficta g!2 e4 e g4. g8 |
  g4 g g g fis g a2 | b b4 b c4. g8 a4 a | g2. g4 fis e dis2 |
  \Sechser e2 \ficta g!4 g2. | fis2 e4 e2. | e2 g4 g2. | fis2 e4 e2. |
  
  \Vierer e2 e a2. fis4 | fis2 b2.( a4 g fis | e2) e e1 | e r |
  r4 e fis2. d4 d2 | r4 e g2 e e | a2.( g4 f2) e | r d g2. e4 |
  e2 a1 fis2 | gis( a b) e, | r1 r2 e~ | e e e1 | e\breve \bar "|."
}

nAlt = \relative c' {
  \global
  R\breve | r1 a | e'1. c2 | f2. f4 e2 e |
  e4( d e2. \ficta fis!4 g2~ | g4 fis e d c2) d | e1 e2 a, | e'1. d2 | g2. g4 fis2 fis |
  e1 d | e e,2 e'2~ | e dis4 cis \ficta dis!2 e | r e e \ficta d! |
  
  c2.( b4 a2) b | r a e' e | e1 cis2 cis4 cis | d4. d8 d4 d e2 e |
  d d d1 | d2 d4 d e4. e8 e4 e | e2 b b4 b b2 |
  \Sechser b2 e4 e2 d4 | d2. c2( b4) | cis2 e4 e2 d4 | d2. \ficta c!2( b4) |
  
  \Vierer cis2 cis1 d2~ | d4 d d2 e b | c2.( d4 e2) e, | r4 a e'2. b4 b2 |
  cis d r d | g2. e4 e2 a2~( | a4 g f e d2) e | f1 e2 b |
  c a a d | b c b b | c2. b4 b2 a~ | a b c1 | b\breve \bar "|."
}

nTenor = \relative c {
  \global
  R\breve*3 | r1 e |
  a1. g2 | c2. c4 a1 | R\breve*2 | r2 e' e d |
  c1 b2 b | a4( b c) d e2 b | r b1 b2~ | b a g4( fis8[ e] fis4 g |
  
  a1) e2 e' | e d c( b4 a | b1) a2 a4 a | a4. a8 g4 g g2 g |
  g4.( a8 b4) g a( b a2) | g4 d d g4. g8 e2 a4 | b2 e, d4 e fis2 |
  \Sechser e2 e4 g2. | a2. a2 e4 | e2 e4 g2. | a2. a2 e4 |
  
  \Vierer e1 e2 fis~ | fis4 fis fis2 g1~ | g2 a c( b~ | b4 a a2. gis8[ fis] \ficta gis!2) |
  a a d2. b4 | b2 e2.( d4 c b | c2) d r a~ | a b2. g4 g2 |
  g e fis1 | e\breve | e2 e'2. e4 c2 | a gis a1 | gis\breve \bar "|."
}

nBass = \relative c {
  \global
  R\breve*4 |
  a1 e'~ | e2 c f2. f4 | e1 r2 a | a g f1 | e r |
  R\breve | r1 r2 e, | b'1. g2 | c2. c4 b1 |
  
  r2 a a g | fis1 e~ | e r2 a4 a | d4. d8 g,4 g c2 c |
  g g d'1 | g,2 g4 g c4. c8 a4 a | e'4. fis8 g4 e b1 |
  \Sechser e2 e4 c8([ d e fis] g4) | d8([ e fis g] a4) a,8([ b c d]) e4 | a,2 e'4 \ficta c!8([ d e fis] g4) | d8([ e fis g] a4) a,8([ b \ficta c! d]) e4 |
  
  \Vierer a,1 a2 d~ | d4 b b2 e2.( d4 | c b a1) gis2 | a1 e' |
  r2 d1 g2~ | g4 e e2 a2.( g4 | f e d1) cis2 | d1 e |
  c d | e e2 e, | a2. gis4 gis2 a~ | a e' a,1 | e'\breve \bar "|."
}


sSopranI = 
  \new Staff  = "zSopranI"
    \with {
      instrumentName = "Sopran I"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranI" {\nSopranI}
      }
      \new Lyrics \lyricsto "vSopranI" {\tSopranI}
    >>
    
sSopranII = 
  \new Staff  = "zSopranII"
    \with {
      instrumentName = "Sopran II"
      \chormidi
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopranII" {\nSopranII}
      }
      \new Lyrics \lyricsto "vSopranII" {\tSopranII}
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
    >>
    