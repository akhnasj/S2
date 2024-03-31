public class Switch {
    public static void main(String[] args) {
        String day = "Friday";

        switch (day) {
            case "Sunday":
                System.out.println("It's Sunday!");
                break;
            case "Monday":
                System.out.println("It's Monday!");
                break;
            case "Tuesday":
                System.out.println("It's Tuesday!");
                break;
            case "Wednesday":
                System.out.println("It's Wednesday!");
                break;
            case "Thursday":
                System.out.println("It's Thursday!");
                break;
            case "Friday":
                System.out.println("It's Friday!");
                break;
            case "Saturday":
                System.out.println("It's Saturday!");
                break;
            default:
                System.out.println("It's not a day!");
        }
    }

    
    /*int dayOfWeek = 1;
        String day;
                
        switch(dayOfWeek) {
            case 1:
                day = "Sunday";
                break;
            case 2:
                day = "Monday";
                break;
            case 3:
                day = "Tuesday";
                break;
            case 4:
                day = "Wednesday";
                break;
            case 5:
                day = "Thursday";
                break;
            case 6:
                day = "Friday";
                break;
            case 7:
                day = "Saturday";
                break;
            default:
                day = "Invalid day!";
        }

    System.out.println("It's "+day);
    
    }
    */
}

