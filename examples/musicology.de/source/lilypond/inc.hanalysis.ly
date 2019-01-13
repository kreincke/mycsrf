\version "2.18.2"

#(define BLNK " " )

#(define-markup-command 
  (hf layout props FS ) (markup?  )
  "insert a harmony analysis symbol + ( 0 bass & 0 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  \BLNK
            \fontsize #-3 \translate #'(0 . -1.8) \BLNK
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) \BLNK }
      }      
    #}
  )
)

#(define-markup-command 
  (hfOne layout props FS  Mid) (markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 1 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  \BLNK
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) \BLNK }
      }      
    #}
  )
)

#(define-markup-command 
  (hfTwo layout props FS Mid Top) (markup? markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 2 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{       
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  #Top
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) \BLNK }
      }      
    #}
  )
)

#(define-markup-command 
  (hfTri layout props FS Bot Mid Top) (markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 0 bass & 3 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{     
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  #Top
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) #Bot
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) \BLNK }
      }      
    #}
  )
)
  
#(define-markup-command 
  (hfi layout props FS Sub) (markup? markup?  )
  "insert a harmony analysis symbol + ( 1 bass &  0 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  \BLNK
            \fontsize #-3 \translate #'(0 . -1.8) \BLNK
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) #Sub }
      }      
    #}
  )
)

#(define-markup-command 
  (hfiOne layout props FS Sub Mid) (markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  1 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{       
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  \BLNK
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) #Sub }
      }      
    #}
  )
)

#(define-markup-command 
  (hfiTwo layout props FS Sub Mid Top) (markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  2 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  #Top
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) \BLNK
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) #Sub }
      }      
    #}
  )
)

#(define-markup-command 
  (hfiTri layout props FS Sub Bot Mid Top) (markup? markup? markup? markup? markup? )
  "insert a harmony analysis symbol + ( 1 bass &  3 descant specifier(s))"
  (interpret-markup layout props
    #{\markup 
      \column{     
        \line{ #FS 
          \translate #'(-0.5 . 8) 
          \column {
            \fontsize #-3 \translate #'(0 . -5)  #Top
            \fontsize #-3 \translate #'(0 . -1.8) #Mid
            \fontsize #-3 \translate #'(0 . -0.5) #Bot
          }
        }
        \line{ \fontsize #-3 \translate #'(0.4 . 1.5) #Sub }
      }      
    #}
  )
)
  
