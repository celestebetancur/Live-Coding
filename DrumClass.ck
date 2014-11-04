//
//  DrumClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Drum extends Chubgraph
{
    Gain vol => outlet;
    
    SndBuf bassdrum => vol;
    SndBuf snaredrum => vol;
    SndBuf hihatcymbal => vol; 
    
    SndBuf CununoM1 => vol;
    SndBuf CununoM2 => vol;
    SndBuf Wasa => vol;
    
    me.dir() + "/Kick.wav" => bassdrum.read; 
    me.dir() + "/Snare-Clap.wav" => snaredrum.read;
    me.dir() + "/HH.wav" => hihatcymbal.read;
    
    me.dir() + "/Cununo-Marcante.wav" => CununoM1.read;
    me.dir() + "/Cununo-Marcante2.wav" => CununoM2.read;
    me.dir() + "/Wasa.wav" => Wasa.read;
    
    bassdrum.samples() => bassdrum.pos;
    snaredrum.samples() => snaredrum.pos;
    hihatcymbal.samples() => hihatcymbal.pos;
    
    CununoM1.samples() => CununoM1.pos;
    CununoM2.samples() => CununoM2.pos;
    Wasa.samples() => Wasa.pos;
    
    Impulse kick =>TwoPole kp => vol;
    40.0 => kp.freq; 0.99 => kp.radius; 1 => kp.gain;
    
    Noise sn => ADSR snare => TwoPole sp  => vol;
    600.0 => sp.freq; 0.9 => sp.radius; 0.1 => sp.gain;
    snare.set(0.001,0.1,0.0,0.1);
    
    Noise hh => ADSR hihat => TwoPole hsp => vol;
    7000.0 => hsp.freq; 0.9 => hsp.radius; 0.1 => hsp.gain;
    hihat.set(0.001,0.1,0.0,0.1);
    
    public void gain(float volum)
    {
        volum => vol.gain;
    }
    
    public void drum (int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void drum (dur beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                beat => now;
            }
        }
    }
    
    public void drum (dur beat,float div,int k[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                tempo => now;
            }
        }
    }
    
    public void drum (int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap()&& i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void drum (dur beat,int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                beat => now;
            }
        }
    }
    
    public void drum (dur beat,float div,int k[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap() &&i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                tempo => now;
            }
        }
    }
    
    public void drum (int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (s[i] == 1)
                {
                    0 => snaredrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void drum (dur beat,int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (s[i] == 1)
                {
                    0 => snaredrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                beat => now;
            }
        }
    }
    
    public void drum (dur beat,float div,int k[],int s[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
             
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                if (s[i] == 1)
                {
                    0 => snaredrum.pos;
                }
                if (hh[i] == 1)
                {
                    0 => hihatcymbal.pos;
                }
                tempo => now;
            }
        }
    }
    public void pacificDrum (int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void pacificDrum (dur beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                beat=> now;
            }
        }
    }
    
    public void pacificDrum (dur beat,float div,int k[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                tempo => now;
            }
        }
    }
    
    public void pacificDrum (int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap()&& i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void pacificDrum (dur beat,int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                beat => now;
            }
        }
    }
    
    public void pacificDrum (dur beat,float div,int k[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap() &&i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                tempo => now;
            }
        }
    }
    
    public void pacificDrum (int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (s[i] == 1)
                {
                    0 => CununoM2.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void pacificDrum (dur beat,int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (s[i] == 1)
                {
                    0 => CununoM2.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                beat => now;
            }
        }
    }
    
    public void pacificDrum (dur beat,float div,int k[],int s[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                if (s[i] == 1)
                {
                    0 => CununoM2.pos;
                }
                if (hh[i] == 1)
                {
                    0 => Wasa.pos;
                }
                tempo => now;
            }
        }
    }
    public void synthDrum (int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void synthDrum (dur beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                beat => now;
            }
        }
    }
    
    public void synthDrum (dur beat,float div,int k[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                tempo => now;
            }
        }
    }
    
    public void synthDrum (int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap()&& i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void synthDrum (dur beat,int k[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                beat => now;
            }
        }
    }
    
    public void synthDrum (dur beat,float div,int k[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap() &&i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    snare.keyOn();
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                tempo => now;
            }
        }
    }
    
    public void synthDrum (int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                if (s[i] == 1)
                {
                    snare.keyOn();
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                0.5::second => now; 
            } 
        }
    }
    
    public void synthDrum (dur beat,int k[],int s[],int hh[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                if (s[i] == 1)
                {
                    snare.keyOn();
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                beat => now;
            }
        }
    }
    
    public void synthDrum (dur beat,float div,int k[],int s[],int hh[])
    {
        (div / 4) => float factor;
        (beat / factor) => dur tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap() && i < s.cap() && i < hh.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                if (s[i] == 1)
                {
                    snare.keyOn();
                }
                if (hh[i] == 1)
                {
                    hihat.keyOn();
                }
                tempo => now;
            }
        }
    }
}
