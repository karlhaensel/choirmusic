\version "2.24.00"

dChoir = {
  \global
  \global_voice
  % S. 3
  s2.*15 \mark \default |
  % S. 4-9 Alt+Bass %%%%%%%%% STICHNOTEN FÜR ALLE? %%%%%%%%
  \tag #'a {
    s2.*22 | % S. 4-6
    s2.*4 \mark \default | s4^\markup{\dynamic p \italic {e dolce}}s2 | s2.*7 | % S. 7
    s2.*9 | s4 s2\cresc | % S. 8
    s2. | s2 s4\dim | s2. | s4\! s2 | s2. | s2.*5 \mark \default | % S. 9
  } 
  \tag #'b {
    s4^\markup{\dynamic p \italic {e dolce}}s2 | s2.*3 | % S. 4
    s2.*10 | % S. 5
    s2.*4 | s2.\cresc | s2 s4\p | s2.*2 | % S. 6
    s2.*4 \mark \default | s2.*8 | % S. 7
    s2.*6 | s2 s4\< | s s\! s | s2. | s4. s8\cresc s4 | % S. 8
    s2.*2 | s2 s4\dim | s2. | s2\! s4 | s2.*5 \mark \default | % S. 9
  }
  % S. 4-9 Sopran+Tenor
  \tag #'s \tag #'t {s2.*22 | s2.*4 \mark \default | s2.*23 | s2.*5 \mark \default |} 
  % S. 10 SATB
  s2.\mf | s2.*2 | s2.\< | s\! | s2 s4\dim | s2.\p | s | s4 s2\cresc | s2.*3 |
  % S. 11
  s4\f\< s8 s\> s4 | s4\! s2 | s2.*2 | \tag #'s {s2.*3 | s2 s4\cresc |} \tag #'a {s2.*3 | s2.\cresc |} \tag #'t {s2. | s2 s4\p | s2. |s2.\cresc |} \tag #'b {s2 s4\p | s2.\cresc | s2.*2 |} s2. | s2.\> |
  % S. 12
  s2.\! | s2 s4\p | s2. | s2.\dim | s2. | s2.\! | s2. | s2.*3 | s2. \bar "|."
}

nChorMelodie = {
  es4 g f | es2 es4 | es( bes') as | \tag #'ba { g r } \tag #'sop { g2 } g4 | c2 bes4 | as( g) es8([ f]) | g2. | es4 r r |
  es as as8([ g]) | f2 r4 | f bes bes8([ as]) | g2 r4 | 
  \tag #'ba {
    c as g | f( es) des | c2. | c2 r4 | 
    r r g'4 | as g f | bes2.~ | bes2 as4 | g( f2) | es4 r r |
  }
}

nSopran = \relative c' {
  \global
  \global_voice
  % S.3-9
  R2.*15 | R2.*22 | R2.*4 | R2.*23 | R2.*2 \cueDuring "vio1" #DOWN {\tag #'part {\set instrumentCueName = "Vio. I" r2.*3} \tag #'score {R2.*3}} |
  % S. 10
  \keepWithTag #'sop \nChorMelodie
  % S. 11
  bes4 es des | c( bes) as8([ bes]) | c2. | c,2 r4 | R2.*3 | r4 r c'8([ d]) | es2( des4) | c4 bes as |
  % S. 12
  g2.~ | g4 r g | c2.~( | c4 bes) as | g( f2) | es2 r4 | R2. | R2.*3 | R2.\fermata
}

nAlt = \relative c' {
  \global
  \global_voice
  % S.3-6
  R2.*15 | R2.*22 | \cueDuringWithClef "cello1" #DOWN "bass" { \tag #'part {\set instrumentCueName = "Vc. I" s2.*4 } \tag #'score {R2.*4} } |
  % S. 7-9
  \keepWithTag #'ba \nChorMelodie | R2. | R2.*2 \cueDuring "vio2" #DOWN {\tag #'part {\set instrumentCueName = "Vio. II" r2.*3} \tag #'score {R2.*3} } |
  % S. 10
  bes4 es es8([ d]) | es2 des4 | c4( es4.) d8 | es2 g4 | as2 f4 | f( es) es | es( d2) | es4 r r | es f es | d2 r4 | d es f | bes,2 r4 |
  % S. 11
  es4 f g | as( g) f | e8([ f] g4 f) | e2 r4 | R2.*2 | r4 r g | as g f | bes2. | es,2 f4 |
  % S. 12
  g2.~ | g4 r c, | c2. | es2 as4 | g( f2) | es2 r4 | R2.*4 | R2.\fermata
}

nTenor = \relative c' {
  \global
  \global_voice
  % S.3-9
  R2.*11 | \cueDuringWithClef "cello1" #DOWN "bass" { \tag #'part {\set instrumentCueName = "Vc. I" s2.*4} \tag #'score {R2.*4}} | R2.*22 | R2.*4 | R2.*23 | R2.*5 |
  % S. 10
  g4 bes bes | g2 bes4 | es,( g) f | es2 es'4 | es2 d4 | bes2 c4 | c2( b4) | c r r | g as bes8([ c]) | d2 r4 | bes8([ as]) g4 f | g2 r4 |
  % S. 11
  g4 as bes | c8([ des] es4) as, | g8([ as]) bes4 as | g( c4.->) c8 | c2 c,4 | r r c'8([ d]) | es2( des4) | c bes as | g2. | c2 c8([ d]) |
  % S. 12
  es2.~ | es4 r es | es2.~( | es4 d) c | bes2 as4 | g( f2) | es2 r4 | R2.*3 | R2.\fermata
}

nBass = \relative c {
  \global
  \global_voice
  % S.3
  R2.*11 | \cueDuring "cello2" #DOWN { \tag #'part {\set instrumentCueName = "Vc. II" s2.*4} \tag #'score {R2.*4}} |
  % S. 4-6 %%%%%%%%%%% STICHNOTEN?
  \keepWithTag #'ba \nChorMelodie | \cueDuring "cello2" #DOWN {\tag #'part {\set instrumentCueName = "Vc. II" s2.*4} \tag #'score {R2.*4}} |
  % S. 7
  r4 r bes | g'2. | as4( bes2) | bes2. | as4 r g | f( g) as | g2 r4 | c4 g es8([ d]) |
  % S. 8
  c2 r4 | bes'4 f d8([ c]) | bes2 r4 | bes' g es | as2 r4 | R2. | c,4 e f | g( c4.) c8 | c2 c,4 | r r f |
  % S. 9
  g f es | es2 r4 | r r as | g( f2) | es2 r4 | R2.*5 |
  % S. 10
  es4 es bes | c2 g4 | as( g8[ as]) bes4 | es2 es4 | as,2 bes4 | d( es) as | g2. | c,4 r r | c f g8([ as]) | bes2 r4 | bes, c d | es2 r4 |
  % S. 11
  es8([ des]) c4 es | as( es) f | c2. | c2 r4 | r r g' | as g f | bes2. | r4 r f | g2 g4 | as g f |
  % S. 12
  c'2.~ | c4 r c, | as2.~ | as2 as4 | bes2 as'4 | g( f2) | es2 r4 | R2.*3 | R2.\fermata
}
