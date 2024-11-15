#include "ros/ros.h"
#include "option3_package/CustomService.h"

// Callback to handle the incoming requests
bool processRequest(option3_package::CustomService::Request &req,
                    option3_package::CustomService::Response &res)
{
  int n = req.a;
  if (req.type == 1)  // Sum request
  {
    res.result = (n * (n + 1)) / 2;
    ROS_INFO("Sum request for %d: %d", n, res.result);
  }
  else if (req.type == 2)  // Product request
  {
    res.result = 1;
    for (int i = 1; i <= n; i++) res.result *= i;
    ROS_INFO("Product request for %d: %d", n, res.result);
  }
  else if (req.type == 3)  // Fibonacci request
  {
    int a = 0, b = 1;
    for (int i = 2; i <= n; i++)
    {
      int temp = a + b;
      a = b;
      b = temp;
    }
    res.result = (n == 0) ? 0 : b;
    ROS_INFO("Fibonacci request for %d: %d", n, res.result);
  }
  else
  {
    ROS_WARN("Invalid request type: %d", req.type);
    res.result = -1;  // Error code for invalid request type
  }

  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "service_server");
  ros::NodeHandle n;

  // Create the service server and advertise it
  ros::ServiceServer service = n.advertiseService("process_service", processRequest);
  ROS_INFO("Service server is ready to process requests.");

  ros::spin();  // Keep the node running and process requests

  return 0;
}
