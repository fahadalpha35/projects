package schedulingos;
import java.util.Comparator;
import java.util.PriorityQueue;


public class FCFS{
    static PriorityQueue<Process> processQueue = new PriorityQueue<Process>(10, new Comparator<Process>() {
            public int compare(Process process1, Process process2) {
            return (int)(process1.getArrivalTime()-process2.getArrivalTime());
        }
    });
    static PriorityQueue<Process> readyQueue = new PriorityQueue<Process>(10, new Comparator<Process>() {
            public int compare(Process process1, Process process2) {
            return (int)(process1.getArrivalTime()-process2.getArrivalTime());
        }
    });
    static GlobalTimer globalTimer = new GlobalTimer(0);

    public static void main(String[] args) {
        processQueue.add(new Process(1,3,2,globalTimer));
        processQueue.add(new Process(2,6,3,globalTimer));
        processQueue.add(new Process(3,1,4,globalTimer));
        processQueue.add(new Process(4,4,5,globalTimer));
        while(globalTimer.time < 100){
            // TASK: Write your code here
            // You may look for available priority queue methods here: https://www.javatpoint.com/java-priorityqueue
            // Check for processes that have arrived using checkIfNewProcessArrived()
            // If found, move them to ready queue
            // If any process is ready to run, run a process from ready queue following the queue policy
            // Otherwise print the global time and mention that no process is ready to run
        }

        // TASK: Write your code here
        // Print performance statistics
    }

    public static boolean checkIfNewProcessArrived(){
        // TASK: Write your code here
        // return True/False by comparing the earliest arrival time from process queue with the global time
    
    }
    public static void runProcessInCpu(){
        // TASK: Write your code here
        // Retrieve a process that is ready to run and run it

    }
}