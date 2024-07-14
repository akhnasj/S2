// 5. Create CPU with attribute price. Create inner class Processor (no. of cores, manufacturer) and static nested class RAM (memory, manufacturer). Create an object of CPU and print information of Processor and RAM


public class CPU {
    
    double price;

    public class Processor {
        int cores;
        String manufacturer;

        Processor(int cores, String manufacturer) {
            this.cores = cores;
            this.manufacturer = manufacturer;
        }
    }


    static class RAM {
        int memory;
        String manufacturer;

        RAM(int memory, String manufacturer) {
            this.memory = memory;
            this.manufacturer = manufacturer;
        }
    }


    public static void main(String[] args) {
        
        CPU cpu = new CPU();
        CPU.Processor processor = cpu.new Processor(4,"Intel");
        CPU.RAM ram = new CPU.RAM(8,"Digital");

        System.out.println("Processor Information: ");
        System.out.println("Cores: " + processor.cores);
        System.out.println("Manufacturer: " + processor.manufacturer);

        System.out.println();

        System.out.println("RAM Information: ");
        System.out.println("Memory: " + ram.memory);
        System.out.println("Manufacturer: " + ram.manufacturer);
    }
}


