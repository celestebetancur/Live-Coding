//
//  RhythmClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Rhythm
{
    float rit[];
    
    fun float[] rhythm (int measure)
    {
        0 => float partial;
        0 => int count;
        [1.0,1.0,1.0,1.0,0.5,1.0,1.0,1.0,1.0,0.5] @=> float selection[];
        measure * 4 => int ArrayCap;
        float partialRit[ArrayCap];
        
        while(partial < measure)
        {
            selection[Math.random2(0,selection.cap() - 1)] @=> partialRit[count];
            partial + partialRit[count] => float nPartial;
            nPartial => partial;       
            if(partial > measure)
            {
                 partial - measure @=> partialRit[count];
                 0 @=> partialRit[count+1];
            }
            count++;
        }
        for(0 => int i; i < partialRit.cap()-1; i++)
        {
            if(partialRit[i] == 0.0) i => partialRit.size;
        }
        partialRit @=> rit;
        return rit;
    }
}
