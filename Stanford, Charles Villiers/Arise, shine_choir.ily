\version "2.20.0"

nAriseSA = { r8 r r16 fis\f a4. | d2.~ | d8 d, e fis4 e8 | a2. | R2.*2 | }

changeA = { \bar "||" \key d \minor \time 4/4 \tempo "Poco più mosso" 4=88 }

beholdSATB = {
  r4 d,8.\p d16 f2 | bes2. es,4 |
  
  r d es4 d8. c16 | d1 |
}

beholdMitte = {
  d2. d4 | bes'1 | bes~ | bes4 bes-. r a | a8 d, r4 r bes'~ | bes a8 g g([ f]) f e | f2
}

beholdST = {
  r4 r8. f16\pp bes2 | d2. c4-. | r bes ges f8. es16 |
  \beholdMitte r4 d'~ | d c8 b b([ a]) a gis | a2 r4
}

changeB = { \bar "||" \time 6/8 \tempo "Tempo I" 4.=63 }

changeC = { \bar "||" \key d \major }

nGentiles = {
  r4. d | d d,4 e8 |
  fis4. fis4 e8 | a2. |
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  \nAriseSA
  r8 d,8\mf e fis4 g8 | a([ b]) cis\< d4 e8\! | fis4.~  fis8 d b | a4( b8) cis4. |
  
  r4. r8 fis, gis | a4 b8 cis4 d8 | e4 fis8 d^\markup{\italic cresc.} b e | e4. e | R2. |
  R2. | r8 r r16 a,\f cis4. | e2.~ | e | r8 r r16 a,\ff cis4. |
  
  e2.~ | e4. r8 e fis | g!4.~( g8[ fis]) e | d4. r | R2. |
  r4. r8 d, e | fis4 g8 a([ b]) cis | d4. e | fis2.~ | fis8 e d e4. |
  
  d2.~ | d8 r r r4. | R2.*6 
  \changeA \beholdSATB 
  
  \beholdST 
  %
  
  f4\< | << f'1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f r2 | R1 \changeB R2.*4 |
  
  % ab T. 64-81 nur Sopran I, falls Männeraltisten/Knabenchor (Sopran II in diesem Fall: Siehe Alt)
  
  r8 a\mf b cis4.~ | cis8 cis^\markup{\italic cresc.} d e([ d]) cis |
  d4( f8) f4.~ | f2. \changeC R2.*2 |
  
  r4. r8 fis,\f g | a([ b]) cis d4 e8 | fis4.~( fis8[ e]) cis | d4. a |
  R2.*2 | r4. r8 g\ff a | b4 cis8 d([ e]) fis | 
  
  g2.~( | g4 fis8) fis([ e]) d | e4.~ e4 d8 | d4. d | \nGentiles
  r4. d | fis2. | fis4. eis |
  
  fis dis | fis e | g2.~( | g4. fis) | d2. | R2.*7 |
  %
  
  d2.^\markup{\dynamic pp \italic { molto legato}} | e4. d | a b4 b8 | d4.( e) |
  d4 r8 r4. | R2.*2 | r4. d4\ppp d8 | e4.( d) |
  
  a2. | b | e~ | e~ | e4 r8 d4. | \tempo "rall." b a |
  a2.~ | a4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}



beholdAB = {
  r4 r8. f16\pp bes2 | d,2. c4-. | r bes' ges f8. es16 |
  \beholdMitte
  
  r4 d~ | d c'8 b b([ a]) a gis | a2 r4
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  \nAriseSA
  R2.*4 |
  
  r4. r8 fis8 d | cis([ fis]) fis fis4 a8 | a4 a8 fis^\markup{\italic cresc.} b gis | e4. e | R2. | % T. 13 eigentlich g nicht gis, aber Konflikt Orgel
  r8 r r16 e\f a4. | cis2.~ | cis8 a b cis4 b8 | a2. | r8 r r16 a\ff cis4. |  
  
  e,2.~ | e4. r | R2. | r8 g a b4.~( | b8[ a]) g fis4. |
  R2. | r8 fis e fis([ a]) a | a4. a | a a | g8 g b g4. |
  
  fis4 r8 r4. | R2.*7 
  \changeA \relative c'' \beholdSATB 
  
  \beholdAB
  %
  
  f4\< | << f1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f' r2 | R1 \changeB R2.*6 |
  
  % ab T. 66-81 bei Männeraltisten: Tenor singen! Altstimme singt dann Knabensopran II
  
  %
  r8 f\f f bes4.~ | bes8 bes c d([ c]) bes \changeC d4. d~ | d d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r4. r8 d,8\f e |
  fis([ g]) a b4 a8 | d4.~^\markup{\italic cresc.}( d8[ g,]) a | b4. b | r g4\ff g8 |
  
  b2.( | a4) a8 b4 b8 | d4.( cis4) d8 | d4. a | r d, | d d4 e8 |
  fis4. fis4 e8 | a2. | r4. fis | fis2. | b4. b |
  
  ais a | g b | a2.~ | a | d,| R2.*7 |
  %
  
  a'2.^\markup{\dynamic pp \italic {molto legato}} | a4. fis | e fis4 fis8 | g2. |
  fis4 r8 r4. | R2.*2 | r4. a4\ppp a8 | a4.( fis) |
  
  e2. | g | g~ | g~ | g4 r8 g4. | \tempo "rall." g e |
  fis2.~ | fis4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}



nAriseTB = {
  R2. | r8 r r16 fis16\f a4. | d2.~ | d8 d, e fis4 e8 | a2.~\> |
  a8\! r r r4. | R2.*3 |
}

tenorVoice = \relative c {
  \global
  \dynamicUp
  \nAriseTB 
  r8 fis\mf gis a4 b8 |
  
  cis([ dis]) eis fis4.~ | fis4 d8 cis a b | cis4( e8) e4.^\markup{\italic cresc.} | r8 r fis d b e | e4. e |
  r8 r r16 e\f e4. | e2.~ | e8 cis d e4 d8 | cis2. | r8 r r16 a\ff cis4. |
  
  e2.~ | e4. r | R2. | R2. | r4. r8 fis, fis |
  b4 cis8 d4. | r8 d d d([ fis]) e | d4. cis | c c | b8 b b d4( cis8) |
  
  d2.~ | d8 r r r4. | R2.*6
  \changeA \beholdSATB
  
  \beholdST
  %
  
  f4\< | << f'1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f r2 | R1 \changeB R2.*2 |
  
  r8 g\mf a bes4.~ | bes8^\markup{\italic cresc.} bes c d([ c]) bes | a4( e'8) e4. | R2. |
  r8 bes\f c d4.~ | d8 d es f([ es]) d \changeC d4. d~ | d d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r4. r8 a\f d |
  d4 fis8 g4 e8 | fis4.^\markup{\italic cresc.}( e4) fis8 | g4. d | r d4\ff d8 |
  
  d4.( cis~ | cis4) d8 d([ e]) fis | e4.( g4) fis8 | fis4. fis | \nGentiles
  r4. d | cis2. | d4. b |
  
  cis c | b d | d2.( | cis) | d | R2.*7 |
  %
  
  d2.^\markup{\dynamic pp \italic {molto legato}} | cis4. d | e d4 d8 | b2. |
  a4 r8 r4. | R2.*2 | r4. d4\ppp d8 cis4.( d) |
  
  e2. | d | c~ | c~ | c4 r8 b4. | \tempo "rall." e cis |
  d2.~ | d4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}



bassVoice = \relative c {
  \global
  \dynamicUp
  \nAriseTB
  r8 fis\mf fis fis4 gis8 |
  
  a([ b]) gis a4 b8 | cis4( b8 a) fis fis | a4( cis8) e,4.^\markup{\italic cresc.} | r8 r ais b gis e | e4. e |
  r8 r r16 e\f cis'4. | a2.~ | a8 a fis e4 e8 | a2. | r8 r r16 a\ff cis4. |
  
  e2.~ | e4. r | R2. | R | r4. r8 fis, fis |
  d4 fis8 b4. | r8 b b a4 g8 | fis4. e | d dis | e8 e b' a4. |
  
  d2.~ | d8 r r r4. | R2.*6
  \changeA \beholdSATB
  
  \beholdAB
  %
  
  f4\< | << f1 {s4 s2\!\> s4\!} >> | des2\pp( bes) |
  bes4 r r as | as f' r2 | R1 \changeB r8 b,\mf c d4.~ | d8 d e f([ e^\markup{\italic cresc.}]) d | 
  
  d4( g8) g4. | R2.*3 |
  r8 d\f es f4.~ | f8 f f bes4 bes8 \changeC b!4. b~ | b d4 d8 |
  
  a4.~ a8 r r | R2.*2 | r8 d,\f e fis4 g8 |
  a4 d8 d4 cis8 | c2.^\markup{\italic cresc.} | b | r4. b4\ff b8 | 
  
  e,2. | fis4. gis4 gis8 | a4.~ a4 a8 | d4. d | \nGentiles
  r4. b a2. | gis4. gis |
  
  fis fis | g gis | a2.~ | a | d | R2.*7 |
  %
  
  fis,2.^\markup{\dynamic pp \italic {molto legato}} | a4. b | cis b4 b8 | g2. |
  d4 r8 r4. | R2.*2 | r4. fis4\ppp fis8 | a4.( b) |
  
  cis2. | b | R | c,~ | c4 r8 d4. | \tempo "rall." e a |
  d,2.~ | d4 r8 r4. | R2.*3 | R2.\fermata \bar "|."
}
