\version "2.22.1"

t_beginn = \lyricmode {
  Ma -- che dich auf, ma -- che dich auf! Wer -- de Licht, wer -- de 
}

t_commonA = \lyricmode {
  und die Herr -- lich -- keit des \tag #'s \tag #'b {Herrn } \tag #'a \tag #'t {Herrn __ } ge -- het auf ü -- ber \tag #'s \tag #'b {dir, } \tag #'a \tag #'t { dir, __ } und die Herr -- lich -- keit des \tag #'s \tag #'b { Herrn } \tag #'a \tag #'t {Herrn __ } ge -- het
}

t_commonB = \lyricmode { 
  Ma -- che dich auf, wer -- de Licht! Denn dein Licht kommt, dein Licht kommt, und die Herr -- lich -- keit des Herrn ge -- het
}

t_commonC = \lyricmode {
  Ma -- che dich auf, ma -- che dich auf, ma -- che dich auf! Auf! Ma -- che dich auf! Denn dein Licht kommt,
}

t_commonD = \lyricmode {
  ge -- het auf ü -- ber dir!
}

t_commonE = \lyricmode {
  Ma -- che dich auf! Ma -- che dich auf! __
}

tSopran = \lyricmode {
  \t_beginn Licht! __ Ma -- che dich auf, __ wer -- de Licht!
  
  Wer -- de Licht! Denn dein Licht kommt, \keepWithTag #'s {\t_commonA} auf, die Herr -- lich -- keit, die Herr -- lich -- keit des Herrn __ ge -- het
  
  auf ü -- ber dir! \t_commonB auf ü -- ber dir, ge -- het auf ü -- ber dir! Ma -- che dich
  
  auf, __ wer -- de Licht! \t_commonC und die Herr -- lich -- keit des Herrn ge -- het auf, \t_commonD \t_commonE
}

tAlt = \lyricmode {
  \t_beginn Licht! __  Ma -- che dich auf! Wer -- de Licht, __ ma -- che dich auf, wer -- de Licht! Wer -- de 
  
  Licht! Wer -- de Licht! Denn __ dein Licht kommt, \keepWithTag #'a {\t_commonA} auf, __ ge -- het auf, __ ge -- het auf, __ und die Herr -- lich -- keit des Herrn __ ge -- het
  
  auf ü -- ber __ dir! \t_commonB auf __ ü -- ber dir, __ geh't auf __ ü -- ber dir! Ma -- che dich auf, ma -- che dich auf, wer -- de
  
  Licht, __ wer -- de Licht! \t_commonC und __ die Herr -- lich -- keit des __ Herrn ge -- het __ auf, ge -- het __ auf __ ü -- ber dir! \t_commonE
}

tTenor = \lyricmode {
  \t_beginn Licht! __ Ma -- che dich auf, wer -- de Licht, __ ma -- che dich auf! Wer -- de Licht, __
  
  wer -- de Licht! Dein __ Licht __ kommt, \keepWithTag #'t {\t_commonA} auf, ge -- het auf, ge -- het auf, und die Herr -- lich -- keit, die Herr -- lich -- keit des
  
  Herrn __ geh't auf! \t_commonB auf __ ü -- ber dir, ge -- het auf __ ü -- ber dir! Ma -- che dich auf, ma -- che dich auf, ma -- che dich 
  
  auf, __ wer -- de Licht! \t_commonC und die __ Herr -- lich -- keit des Herrn __ geh't auf, \t_commonD \t_commonE
}

tBass = \lyricmode {
 \t_beginn Licht! Ma -- che dich auf, wer -- de Licht, __ ma -- che dich auf, __ wer -- de Licht! Wer -- de
 
 Licht! Wer -- de Licht! __ Dein Licht kommt, \keepWithTag #'b {\t_commonA} auf, ge -- het auf, ge -- het auf, und die Herr -- lich -- keit des Herrn ge -- het
 
 auf ü -- ber dir! \t_commonB auf ü -- ber dir, auf ü -- ber dir! Ma -- che dich auf, ma -- che dich auf, ma -- che dich
 
 auf! __ Ma -- che dich auf, ma -- che dich auf, ma -- che dich auf! __ Ma -- che dich auf, __ dich auf, ma -- che dich auf, die Herr -- lich -- keit __ des Herr ge -- het __ auf, \t_commonD \t_commonE
}