//
//  SynthClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Synth extends Chubgraph
{  
    Harmony chords;
    
    public void sinOsc(string note[])
    {
        MagicSine polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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

    public void sinOsc(dur beat,string note[])
    {
        (beat / 0.25) => dur tempo;
        
        SinOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
    public void sinOsc(dur beat,string note[],int voices)
    {
        (beat / 0.25) => dur tempo;
        
        SinOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }

    public void sqrOsc(string note[])
    {
        SqrOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
    public void sqrOsc(dur beat, string note[])
    {
        (beat / 0.25) => dur tempo;
        
        SqrOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
    public void sqrOsc(dur beat,string note[],int voices)
    {
        (beat / 0.25) => dur tempo;
        
        SqrOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }

    public void triOsc(string note[])
    {
        TriOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
    public void triOsc(dur beat, string note[])
    {
        (beat / 0.25) => dur tempo;
        
        TriOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
    public void triOsc(dur beat, string note[],int voices)
    {
        (beat / 0.25) => dur tempo;
        
        TriOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }

    public void sawOsc(string note[])
    {
        SawOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
    public void sawOsc(dur beat, string note[])
    {
        (beat / 0.25) => dur tempo;
        
        SawOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
    public void sawOsc(dur beat, string note[],int voices)
    {
        (beat / 0.25) => dur tempo;
        
        SawOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo=> now;  
            }
        }
    }

    public void pulseOsc(string note[])
    {
        PulseOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
    public void pulseOsc(dur beat, string note[])
    {
        (beat / 0.25) => dur tempo;
        
        PulseOsc polyphony[4];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
    public void pulseOsc(dur beat, string note[],int voices)
    {
        (beat / 0.25) => dur tempo;
        
        PulseOsc polyphony[voices];
        for (0 => int i; i < polyphony.cap(); i++)
        {
            polyphony[i] => Gain vol => outlet;
            0.2 => vol.gain;
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
                tempo => now;  
            }
        }
    }
}
