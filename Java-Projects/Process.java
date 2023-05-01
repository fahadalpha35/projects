package schedulingos;

public class Process {
    int id;
    int arrivalTime;
    int duration;
    GlobalTimer globalTimer;
    public Process(int id,int arrivalTime, int duration, GlobalTimer globalTimer){
        this.id=id;
        this.arrivalTime=arrivalTime;
        this.duration=duration;
        this.globalTimer=globalTimer;
    }
    public void runProcess(){
        // TASK: Write your code here
        // The process will print it's id and global time for the duration specified by burst time
        
    }
    public int getId() {
        return id;
    }
    public int getArrivalTime() {
        return arrivalTime;
    }
    public int getDuration() {
        return duration;
    }
    public GlobalTimer getGlobalTimer() {
        return globalTimer;
    }
}