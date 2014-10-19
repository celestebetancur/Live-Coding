//
//  DrumClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Drum
{
    SndBuf bassdrum => Bus.channel[1] => Bus.channel[0];
    SndBuf snaredrum => Bus.channel[2] => Bus.channel[0];
    SndBuf hihatcymbal => Bus.channel[3] => Bus.channel[0];   
    
    SndBuf CununoM1 => Bus.channel[5] => Bus.channel[4];
    SndBuf CununoM2 => Bus.channel[6] => Bus.channel[4];
    SndBuf Wasa => Bus.channel[7] => Bus.channel[4];
    
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
    
    Impulse kick =>TwoPole kp => Bus.channel[9] => Bus.channel[8];
    40.0 => kp.freq; 0.99 => kp.radius; 1 => kp.gain;
    
    Noise sn => ADSR snare => TwoPole sp  => Bus.channel[10] => Bus.channel[8];
    600.0 => sp.freq; 0.9 => sp.radius; 0.1 => sp.gain;
    snare.set(0.001,0.1,0.0,0.1);
    
    Noise hh => ADSR hihat => TwoPole hsp => Bus.channel[11] => Bus.channel[8];
    7000.0 => hsp.freq; 0.9 => hsp.radius; 0.1 => hsp.gain;
    hihat.set(0.001,0.1,0.0,0.1);
    
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
    
    public void drum (float beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                (60/beat)::second => now;
            }
        }
    }
    
    public void drum (float beat,float div,int k[])
    {
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => bassdrum.pos;
                }
                (tempo/div)::second => now;
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
    
    public void drum (float beat,int k[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void drum (float beat,float div,int k[],int hh[])
    {
        240.0/beat => float tempo;
        
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
                (tempo/div)::second => now;
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
    
    public void drum (float beat,int k[],int s[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void drum (float beat,float div,int k[],int s[],int hh[])
    {
        240.0/beat => float tempo;
             
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
                (tempo/div)::second => now;
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
    
    public void pacificDrum (float beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                (60/beat)::second => now;
            }
        }
    }
    
    public void pacificDrum (float beat,float div,int k[])
    {
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    0 => CununoM1.pos;
                }
                (tempo/div)::second => now;
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
    
    public void pacificDrum (float beat,int k[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void pacificDrum (float beat,float div,int k[],int hh[])
    {
        240.0/beat => float tempo;
        
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
                (tempo/div)::second => now;
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
    
    public void pacificDrum (float beat,int k[],int s[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void pacificDrum (float beat,float div,int k[],int s[],int hh[])
    {
        240.0/beat => float tempo;
        
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
                (tempo/div)::second => now;
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
    
    public void synthDrum (float beat,int k[])
    {
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                (60/beat)::second => now;
            }
        }
    }
    
    public void synthDrum (float beat,float div,int k[])
    {
        240.0/beat => float tempo;
        
        while(true)
        {
            for(0 => int i; i < k.cap(); i++)
            {
                if (k[i] == 1)
                {
                    1.0 => kick.next;
                }
                (tempo/div)::second => now;
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
    
    public void synthDrum (float beat,int k[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void synthDrum (float beat,float div,int k[],int hh[])
    {
        240.0/beat => float tempo;
        
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
                (tempo/div)::second => now;
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
    
    public void synthDrum (float beat,int k[],int s[],int hh[])
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
                (60/beat)::second => now;
            }
        }
    }
    
    public void synthDrum (float beat,float div,int k[],int s[],int hh[])
    {
        240.0/beat => float tempo;
        
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
                (tempo/div)::second => now;
            }
        }
    }
}
