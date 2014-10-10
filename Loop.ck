Sync sync;
sync.sync(120, 4,4,4) => float tempo;

while(true)
{
    new Gain[20] @=> Bus.channel;
    Machine.add(me.dir()+"/LiveCode.ck") => int fileID;
    tempo::second => now;
    Machine.replace(fileID,"/LiveCode.ck");
    Machine.remove(fileID);
}
