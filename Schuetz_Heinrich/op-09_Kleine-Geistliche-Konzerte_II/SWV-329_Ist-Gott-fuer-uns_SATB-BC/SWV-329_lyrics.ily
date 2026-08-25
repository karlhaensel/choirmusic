\version "2.27.2"

werMagWider = \lyricmode { wer mag wi -- der uns sein, }

christusIstHie = \lyricmode { Chris -- tus ist hie, der ge -- stor -- ben ist,  }

werWillVerdammen = \lyricmode { wer will ver -- dam -- men? }

alleluja = \lyricmode { Al -- le -- lu -- ja, }
allelujaA = \lyricmode { Al -- le -- lu -- ja, __ }

tText = \lyricmode {
    \tag #'s {Ist Gott für uns, ist Gott für uns, } \werMagWider
      \tag #'s { wer mag wi -- der uns __ sein? }
      \tag #'a { \werMagWider wer mag wi -- der uns __ sein? }
      \tag #'t { \repeat unfold 2 { \werMagWider} wer mag wi -- der uns __ sein?}  
      \tag #'b { \werMagWider wer mag wi -- der uns sein? }
      
     Wel -- cher auch sei -- nes ei -- ge -- nen Sohns nicht hat ver -- scho -- net, 
     son -- dern hat ihn für uns al -- le \tag #'t { da -- hin ge -- ge -- ben, } da -- hin ge -- ge -- ben,
     wie sollt er uns mit ihm denn nicht al -- les schen -- ken?
     
     \tag #'t { Wer will die Aus -- er -- wähl -- ten Got -- tes be -- schul -- di -- gen? }
     \tag #'s \tag #'a { Gott ist hie, der ge -- recht macht, } \tag #'s { \werWillVerdammen \christusIstHie \werWillVerdammen }
     \tag #'a \tag #'b {\christusIstHie \werWillVerdammen \werWillVerdammen \christusIstHie}
     \tag #'t { Wer will ver -- dam -- men? \werWillVerdammen \christusIstHie \werWillVerdammen \christusIstHie }
     
     ja viel mehr, der auch auf -- er -- we -- cket ist, \tag #'s \tag #'a \tag #'t { sitzt zu der Rech -- ten Got -- tes, } \tag #'s { ja viel mehr, der auch auf -- er -- we -- cket ist, } sitzt zu der Rech -- ten Got -- tes
    \tag #'s \tag #'a \tag #'b { und ver -- tritt uns, und ver -- tritt __ uns. } \tag #'t { und ver -- tritt __ uns, und ver -- tritt uns. }
     
     \tag #'s { \allelujaA \allelujaA \alleluja \allelujaA \alleluja \allelujaA \alleluja \allelujaA \allelujaA }
     \tag #'a { \allelujaA \alleluja \allelujaA \alleluja \alleluja \allelujaA \allelujaA \allelujaA \alleluja \alleluja }
     \tag #'t {\allelujaA \alleluja \allelujaA \allelujaA \alleluja \alleluja \allelujaA \allelujaA \allelujaA }
     \tag #'b {\alleluja \allelujaA \alleluja \alleluja \allelujaA \repeat unfold 4 {\alleluja} }
     Al -- le -- lu -- ja.
}