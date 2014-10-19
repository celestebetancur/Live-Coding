//
//  SyncClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//

public class Sync
{
    static float tempofix; 
    
    public float sync() 
    {
        8.0 => tempofix; return tempofix;
    }
    
    public float sync(float beat)
    {
        ((60/beat)*16) => tempofix; return tempofix;
    }
    public float sync(float beat, float howmany)
    {
        (((60/beat)*howmany)) => tempofix;  return tempofix;
    }
    public float sync(float beat, float howmany, float div)
    {
        (240/beat) => float t; (t/div) => float quarter;
        (quarter * howmany) => tempofix;  return tempofix;
    }
}
