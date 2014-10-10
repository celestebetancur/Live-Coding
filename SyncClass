public class Sync
{
    float tempo; 
    
    public float sync() 
    {
        (8.0 * 16)=> tempo; return tempo;
    }
    
    public float sync(float beat)
    {
        (((60/beat)*16)*2) => tempo; return tempo;
    }
    public float sync(float beat, float howmany)
    {
        (((60/beat)*howmany)*2) => tempo;  return tempo;
    }
    public float sync(float beat, float howmany, float div)
    {
        (240/beat) => float t; (t/div) => float quarter;
        ((quarter * 16)*2) => tempo;  return tempo;
    }
    public float sync(float beat, float howmany, float div, int measure)
    {
        (240/beat) => float t; (t/div) => float quarter;
        (quarter * (2 * measure)) => tempo;  return tempo;
    }   
}
