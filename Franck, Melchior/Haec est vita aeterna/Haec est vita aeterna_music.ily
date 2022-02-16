\version "2.22.1"

global = {
  \key f \mixolydian % original: g mixolydian
  \time 4/2
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  c1. c2 | c1 c2 d | f1 e | R\breve |
  R | c1. c2 | d1 bes2 d~ | d f2.( e8[ d] \ficta e!2) |
  f2 c1 d2 | es1 es2 d | f1 d2 d~ | d d d c | b c1 es2 |
  
  d2 c4 c2( b8[ a] \ficta b!2) | c1 r | R\breve*2 | r1 r2 a~ |
  a bes bes a | g1 a2 f'~ | f g f \ficta es! | d1 e |
  R\breve*3 | r2 c d bes4 es~( |
  
  es d8[ c] d2) c f~( | f es4 d c2) d | c1 d2 g~( | g f4 es d2) es |
  d1 e2 f~ | f d c1 | c r2 bes~ | bes c d1 | c\breve \bar "|."
}

nSopranII = \relative c'' {
  \global
  a1. a2 | g1 g2 bes | bes4( a8[ g] a4 bes) c2 g~ | g g a1 |
  a2 bes bes1 | a2 a1 a2 | bes2.( c4 d2) bes2~ | bes a c1 |
  c2 a1 bes2 | bes1 bes2 bes | c1 f2 bes,~ | bes bes bes g | g a1 \ficta bes!2 |
  
  bes g g1 | g2 a1 a2 | a g fis g~ | g bes bes( a | g1) a2 c~ |
  c d es c | c1 c2 c~ | c es d c4 c~( | c b8[ a] \ficta b!2) c g |
  a bes bes1 | bes2 c1( bes4 a | g2) a g1 | a2 a bes bes |
  
  bes1 a2 bes~ | bes g a( bes~ | bes4 a8[ g] a2) bes es~( | es d4 c bes) g c2~( |
  c4 b8[ a] \ficta b!2) c c~( | c \ficta bes!4 a g2) f | g1 a2 d~ | d c bes1 | a\breve \bar "|."
}

nAlt = \relative c' {
  \global
  f1. f2 | e1 e2 f | f1 g2 e~ | e \ficta e! f1 |
  f2 g g4( f8[ es] d4 \ficta es!) | f2 f1 f2 | f\breve | f2 f g1 |
  a2 f1 f2 | g2. g4 g2 bes2~( | bes4 a8[ g] a2) bes f~ | f f f e | d f1 g2 |
  
  f es d1 | e2 f1 f2 | f d d \ficta es!~ | es \ficta f!2 g f4 f~( | f e8[ d] \ficta e!2) f1 |
  r4 f2 f4 g2 f4 f~( | f e8[ d] \ficta e!2) f a~ | a bes bes g | g1 g2 e |
  f f g1 | f2 f1 d2 | e( f1 \ficta e!2) | f r4 f f2 g |
  
  f1 f2 f~ | f bes, f'1~ | f f2 g~ | g d g1~ |
  g g2 f~ | f f e( f~ | f e f1) | f\breve~ | f \bar "|."
}

nTenor = \relative c {
  \global
  f1. f2 | c'1 c2 bes | d1 c2 c~ | c c c1 |
  c2 es1 bes2 | c1 c2. c4 | bes4( c d es f2) f,~ | f f c'1 |
  c2 c1 bes2 | bes1 bes2. g4 | c1 bes2 bes~ | bes bes bes c | g f1 es2 |
  
  bes' c g1 | c2 c1 c2 | c bes a c~ | c d es c | c1 c2 f,~ |
  f bes es f | c1 f,2 c'~ | c g d' \ficta es!4 g~( | g f8[ es] d2) c c |
  c d \ficta es!1 | d2 c1 f,2 | c'\breve | c2 f, bes es, |
  
  bes'1 f2 d~ | d es f1~ | f bes2 g~ | g a bes( c |
  d1) c | r2 bes1 a2 | g1 f2 f~ | f f bes1 | c\breve \bar "|."
}

nBass = \relative c {
  \global
  R\breve*2 | r1 c~ | c2 c f1 |
  f2 es g1 | f2 f1 f2 | bes,1 bes2 bes | d1 c |
  f1. bes,2 | es1 es2 g | f1 bes, | R\breve*2 |
  
  R\breve | r2 f'1 f2 | f g d c~ | c bes es f | c1 f |
  R\breve | r1 f1~ | f2 es bes c | g'1 c,2 c |
  f bes, es1 | bes2 a1 bes2 | c\breve | f1 r |
  
  R\breve*2 | r1 r2 es~ | es f g1~ |
  g c,2 a~ | a \ficta bes!2 c1~ | c f2 bes,~ | bes a bes1 | f'\breve \bar "|."
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
    