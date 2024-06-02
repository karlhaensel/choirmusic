\version "2.24.3"

dChoir = {
  \global
  s1\p | s4. s8\< s4 s\! | s1*2 | \tag #'s \tag #'a \tag #'t { s2 s4\p\< s4 | s4.\> s8\! s2\< | s8.\> s16\! s2 s4\f} \tag #'b { s1*2 | s2 s\f }
  s4\sf s2. | s1 | \tag #'s \tag #'t \tag #'b { s2 } s2\p \tag #'a { s2 } | s1*2 |
  s1*4 | \tag #'s { s4. s8\p s2 } \tag #'a \tag #'t { s2 s\p } \tag #'b { s1 } | s1*2 |
  s2 s\pp | s1 | \tag #'s { s1 } \tag #'a { s2 s\p } \tag #'t \tag #'b { s2. s4\p } | s1 | \tag #'s { s2 s\p } \tag #'a \tag #'t { s2. s4\p } \tag #'b { s1 } |
  
  s1 | s2. s4\f | s2. s4\f | s1*2 | s2 s\p |
  s1\< | s2\sf s | s1\f | \tag #'s \tag #'a \tag #'t { s1 } \tag #'b { s4. s8\> s4. s8\! } | s4. s8\pp s2 | s1 \bar "||"
  \break \tempo "Andante con moto" 4=112 \key g \major \time 3/4 s2.^\markup{\italic dolce} | s2.*7 |
  s2.\cresc | s2.*4 | s2.\f | \tag #'s { s2. | s\dim } \tag #'a { s4 s2\dim | s2. } \tag #'t { s2 s4\dim | s2. } \tag #'b { s2. | s\dim } |
  
  \tag #'s { s2.*3 } \tag #'a \tag #'b { s2. | s2.\p | s2. } \tag #'t { s4 s2\p | s2.*2 } | s2.\sf | s2.*2 | \tag #'s \tag #'a \tag #'t { s4 s2\cresc } \tag #'b { s2.\cresc } | s2. | s2.\f |
  s2. | \tag #'s \tag #'a \tag #'b { s2.\p } \tag #'t { s4 s2\p } | s2.*6 | \tag #'s { s4 s2\f | s2. }
  \tag #'a \tag #'t \tag #'b { s2. | s4 s2\f } | s2.*2 | \tag #'a \tag #'t \tag #'b { s2. } | s4 s2\dim | \tag #'s { s2. | } s2.*2 | \tag #'s \tag #'b { s2. } \tag #'a \tag #'t { s4 s2\dim } |
  \tag #'s { s2.\dim } \tag #'a \tag #'t \tag #'b { s2. } \tag #'s \tag #'a \tag #'b { s2. } \tag #'t { s4 s4.\> s8\! } | \tag #'s { s2. } \tag #'a \tag #'t \tag #'b { s2.\p } | s2. | s2.\sf | \tag #'s \tag #'a \tag #'t { s4 s2\pp | s2. } \tag #'b { s2. | s2.\pp } | s2. \bar "|." 
}