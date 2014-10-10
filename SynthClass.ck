public class Synth
{  
    Harmony chords;
    
    public void sinOsc(string note[])
    {
        SinOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }
        while(true)
        {            
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                    
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;           
                }
                2::second => now;    
            }
        }
    }

    public void sinOsc(float tempo,string note[])
    {
        SinOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        } 
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {  
                chords.harmony(note[i]) @=> int harmony[];
                 
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
    public void sinOsc(float tempo,string note[],int voices)
    {
        SinOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }  
        
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                 
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }

    public void sqrOsc(string note[])
    {
        SqrOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }  
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                   
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                2::second => now;  
            }
        }
    }
    public void sqrOsc(float tempo,string note[])
    {
        SqrOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        } 
        
        while(true)
        { 
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                     
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
    public void sqrOsc(float tempo,string note[],int voices)
    {
        SqrOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }   
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                 
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }

    public void triOsc(string note[])
    {
        TriOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }  
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                    
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                2::second => now;  
            }
        }
    }
    public void triOsc(float tempo,string note[])
    {
        TriOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        } 
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                                     
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
    public void triOsc(float tempo,string note[],int voices)
    {
        TriOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }  
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                   
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }

    public void sawOsc(string note[])
    {
        SawOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                  
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                2::second => now;  
            }
        }
    }
    public void sawOsc(float tempo,string note[])
    {
        SawOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                     
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
    public void sawOsc(float tempo,string note[],int voices)
    {
        SawOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }  
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                   
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }

    public void pulseOsc(string note[])
    {
        PulseOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                      
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                2::second => now;  
            }
        }
    }
    public void pulseOsc(float tempo,string note[])
    {
        PulseOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        } 
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                  
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
    public void pulseOsc(float tempo,string note[],int voices)
    {
        PulseOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Bus.channel[13];
        }
        while(true)
        {
            for (0 => int i; i < note.cap(); i++)
            {
                chords.harmony(note[i]) @=> int harmony[];
                   
                for(0 => int i; i < polyphony.cap(); i++)
                {
                    Std.mtof(harmony[i]) => polyphony[i].freq;                
                }
                (240/tempo)::second => now;  
            }
        }
    }
}
