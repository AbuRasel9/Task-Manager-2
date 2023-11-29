class Urls{
  static String baseUrl="https://task.teamrabbil.com/api/v1";
  static String newTask="$baseUrl/listTaskByStatus/New";
  static String completedTask="$baseUrl/listTaskByStatus/Completed";
  static String cancelledTask="$baseUrl/listTaskByStatus/Cancelled";
  static String progressTask="$baseUrl/listTaskByStatus/{Porgress}";
}