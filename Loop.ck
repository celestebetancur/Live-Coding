//
//  Loop.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//
Tap tap;
tap.tap();

while(true)
{
    Machine.add(me.dir()+"/LiveCode.ck") => int fileID;
    (Tap.beat * 32) => now;
    Machine.replace(fileID,"/LiveCode.ck");
    Machine.remove(fileID);
}
