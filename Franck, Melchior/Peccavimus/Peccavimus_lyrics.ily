\version "2.22.1"



tInOmnibus = \lyricmode { in om -- ni -- bus jus -- ti -- ti -- is tu -- is, }

tTutti = \lyricmode {
  Pec -- ca -- vi -- mus, 
  \tag #'sI \tag #'b {\repeat unfold 3 { pec -- ca -- vi -- mus, }} \tag #'sII \tag #'t {\repeat unfold 4 { pec -- ca -- vi -- mus, }} \tag #'a {pec -- ca -- vi -- mus, __ pec -- ca -- vi -- mus, } 
  pec -- ca -- vi -- mus \tag #'sI \tag #'sII \tag #'a \tag #'b { im -- pi -- è e -- gi -- mus, } im -- pi -- è e -- gi -- mus
  
  \tag #'sI \tag #'t {\repeat unfold 2 { in -- i -- que ges -- si -- mus, }} \tag #'sII \tag #'a \tag #'b {\repeat unfold 3 { in -- i -- que ges -- si -- mus, }}
  Do -- mi -- ne De -- us nos -- ter,
  Do -- mi -- ne De -- \tag #'sI \tag #'a \tag #'t \tag #'b { us } \tag #'sII { us __ } nos -- ter
  
  \tag #'sI \tag #'sII \tag #'b {\repeat unfold 3 { \tInOmnibus }} \tag #'a {\tInOmnibus in __ om -- ni -- bus jus -- ti -- ti -- is tu -- is, \tInOmnibus \tInOmnibus }\tag #'t {\repeat unfold 4 { \tInOmnibus }}
  %
  \tag #'sI \tag #'a \tag #'t \tag #'b { jus -- ti -- ti -- is tu -- is. } \tag #'sII { in om -- ni -- bus jus -- ti -- ti -- is tu -- is. __ }
}
