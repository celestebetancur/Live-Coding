//
//  HarmonyClass.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class Harmony
{   
    public int[] harmony(string note)
    {
        int chords[];
        
        if(note == "A" || note == "a" || note == "la" || note == "La")
        {
            [61,69,64,68,81,73,86,93,83,80,85,88] @=> int chords[];
            return chords;
        }  
        if(note == "A#" || note == "a#" || note == "la#" || note == "La#" || note == "Bb" || note == "bb" || note == "sib" || note == "Sib")
        {
            [62,70,65,69,82,74,87,94,84,81,86,89] @=> int chords[];
            return chords;
        }   
        if(note == "B" || note == "b" || note == "si" || note == "Si")
        {
            [63,71,66,70,83,75,88,95,85,82,87,90] @=> int chords[];
            return chords;
        }   
        if(note == "C" || note == "c" || note == "do" || note == "Do")
        {
            [60,67,64,71,74,72,76,79,81,96,86,95] @=> int chords[];
            return chords;
        } 
        if(note == "C#" || note == "c#" || note == "do#" || note == "Do#" || note == "Db" || note == "db" || note == "reb" || note == "Reb")
        {
            [61,68,65,72,75,73,77,80,82,97,87,96] @=> int chords[];
            return chords;
        } 
        if(note == "D" || note == "d" || note == "re" || note == "Re")
        {
            [62,69,66,73,76,74,78,81,83,98,88,97] @=> int chords[];
            return chords;
        } 
        if(note == "D#" || note == "d#" || note == "re#" || note == "Re#" || note == "Eb" || note == "eb" || note == "mib" || note == "Mib")
        {
            [63,70,67,62,75,86,72,79,87,86,89,94] @=> int chords[];
            return chords;
        } 
        if(note == "E" || note == "e" || note == "mi" || note == "Mi")
        {
            [64,71,68,63,76,87,73,80,88,87,90,95] @=> int chords[];
            return chords;
        } 
        if(note == "F" || note == "f" || note == "fa" || note == "Fa")
        {
            [65,72,69,64,77,88,74,81,89,88,91,96] @=> int chords[];
            return chords;
        } 
       if(note == "F#" || note == "f#" || note == "fa#" || note == "Fa#" || note == "Gb" || note == "gb" || note == "solb" || note == "Solb")
        {
            [66,73,70,65,78,89,75,82,90,89,92,97] @=> int chords[];
            return chords;
        } 
        if(note == "G" || note == "g" || note == "sol" || note == "Sol")
        {
            [67,71,62,66,86,79,74,83,78,81,76,95] @=> int chords[];
            return chords;
        } 
        if(note == "G#" || note == "g#" || note == "sol#" || note == "Sol#" || note == "Ab" || note == "ab" || note == "lab" || note == "Lab")
        {
            [68,72,63,67,87,80,75,84,79,82,77,96] @=> int chords[];
            return chords;
        } 
        if(note == "A7" || note == "a7" || note == "la7" || note == "La7")
        {
            [61,69,64,67,81,73,86,93,83,80,89,94] @=> int chords[];
            return chords;
        }  
        if(note == "A#7" || note == "a#7" || note == "la#7" || note == "La#7" || note == "Bb7" || note == "bb7" || note == "sib7" || note == "Sib7")
        {
            [62,70,65,68,82,74,87,94,84,81,90,95] @=> int chords[];
            return chords;
        }   
        if(note == "B7" || note == "b7" || note == "si7" || note == "Si7")
        {
            [63,71,66,69,83,75,88,95,85,82,91,96] @=> int chords[];
            return chords;
        }   
        if(note == "C7" || note == "c7" || note == "do7" || note == "Do7")
        {
            [60,67,64,70,74,72,76,79,81,97,86,95] @=> int chords[];
            return chords;
        } 
        if(note == "C#7" || note == "c#7" || note == "do#7" || note == "Do#7" || note == "Db7" || note == "db7" || note == "reb7" || note == "Reb7")
        {
            [61,68,65,71,75,73,77,80,82,98,87,96] @=> int chords[];
            return chords;
        } 
        if(note == "D7" || note == "d7" || note == "re7" || note == "Re7")
        {
            [62,69,66,72,76,74,78,81,83,99,88,97] @=> int chords[];
            return chords;
        } 
        if(note == "D#7" || note == "d#7" || note == "re#7" || note == "Re#7" || note == "Eb7" || note == "eb7" || note == "mib7" || note == "Mib7")
        {
            [63,70,67,61,75,85,72,79,87,85,89,94] @=> int chords[];
            return chords;
        } 
        if(note == "E7" || note == "e7" || note == "mi7" || note == "Mi7")
        {
            [64,71,68,62,76,86,73,80,88,86,90,95] @=> int chords[];
            return chords;
        } 
        if(note == "F7" || note == "f7" || note == "fa7" || note == "Fa7")
        {
            [65,72,69,63,77,87,74,81,89,87,91,96] @=> int chords[];
            return chords;
        } 
        if(note == "F#7" || note == "f#7" || note == "fa#7" || note == "Fa#7" || note == "Gb7" || note == "gb7" || note == "solb7" || note == "Solb7")
        {
            [66,73,70,64,78,88,75,82,90,88,92,97] @=> int chords[];
            return chords;
        } 
        if(note == "G7" || note == "g7" || note == "sol7" || note == "Sol7")
        {
            [67,71,62,65,86,79,74,83,77,81,76,95] @=> int chords[];
            return chords;
        } 
        if(note == "G#7" || note == "g#7" || note == "sol#7" || note == "Sol#7" || note == "Ab7" || note == "ab7" || note == "lab7" || note == "Lab7")
        {
            [68,72,63,66,87,80,75,84,78,82,77,96] @=> int chords[];
            return chords;
        }
        if(note == "Am" || note == "am" || note == "lam" || note == "Lam")
        {
            [60,69,64,67,81,72,74,93,83,79,84,88] @=> int chords[];
            return chords;
        }  
        if(note == "A#m" || note == "a#m" || note == "la#m" || note == "La#m" || note == "Bbm" || note == "bbm" || note == "sibm" || note == "Sibm")
        {
            [61,70,65,68,82,73,75,94,84,80,85,89] @=> int chords[];
            return chords;
        }   
        if(note == "Bm" || note == "bm" || note == "sim" || note == "Sim")
        {
            [62,71,66,69,83,74,76,95,85,81,86,90] @=> int chords[];
            return chords;
        }   
        if(note == "Cm" || note == "cm" || note == "dom" || note == "Dom")
        {
            [60,67,63,70,74,72,76,79,80,96,86,94] @=> int chords[];
            return chords;
        } 
        if(note == "C#m" || note == "c#m" || note == "do#m" || note == "Do#m" || note == "Dbm" || note == "dbm" || note == "rebm" || note == "Rebm")
        {
            [61,68,64,71,75,73,77,80,81,97,87,95] @=> int chords[];
            return chords;
        } 
        if(note == "Dm" || note == "dm" || note == "rem" || note == "Rem")
        {
            [62,69,65,72,76,74,77,81,82,98,89,93] @=> int chords[];
            return chords;
        } 
        if(note == "D#m" || note == "d#m" || note == "re#m" || note == "Re#m" || note == "Ebm" || note == "ebm" || note == "mibm" || note == "Mibm")
        {
            [64,70,66,73,77,75,78,82,83,99,90,94] @=> int chords[];
            return chords;
        } 
        if(note == "Em" || note == "em" || note == "mim" || note == "Mim")
        {
            [64,71,67,62,76,86,72,79,88,86,90,95] @=> int chords[];
            return chords;
        } 
        if(note == "Fm" || note == "fm" || note == "fam" || note == "Fam")
        {
            [65,72,68,63,77,87,73,80,89,87,91,96] @=> int chords[];
            return chords;
        } 
        if(note == "F#m" || note == "f#m" || note == "fa#m" || note == "Fa#m" || note == "Gbm" || note == "gbm" || note == "solbm" || note == "Solbm")
        {
            [66,73,69,64,78,88,74,81,90,88,92,97] @=> int chords[];
            return chords;
        } 
        if(note == "Gm" || note == "gm" || note == "solm" || note == "Solm")
        {
            [67,70,62,65,86,79,74,82,77,81,75,94] @=> int chords[];
            return chords;
        } 
        if(note == "G#m" || note == "g#m" || note == "sol#m" || note == "Sol#m" || note == "Abm" || note == "abm" || note == "labm" || note == "Labm")
        {
            [68,71,63,66,87,80,75,83,78,82,76,95] @=> int chords[];
            return chords;
        } 
    }
}
