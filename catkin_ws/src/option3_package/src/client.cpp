#include "ros/ros.h"
#include "option3_package/CustomService.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "service_client");
  ros::NodeHandle n;

  // Create the service client
  ros::ServiceClient client = n.serviceClient<option3_package::CustomService>("process_service");
  option3_package::CustomService srv;

  // Send a request (for example, sum up to 10)
  srv.request.a = 10;  // The integer
  srv.request.type = 1;  // 1 for sum, 2 for product, 3 for Fibonacci

  if (client.call(srv))  // Call the service
  {
    ROS_INFO("Received response: %d", srv.response.result);
  }
  else
  {
    ROS_ERROR("Failed to call service");
  }

  return 0;
}
