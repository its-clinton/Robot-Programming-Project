#include "ros/ros.h"
#include "std_msgs/String.h"

void callback1(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Audience 1 heard from youtuber_1: [%s]", msg->data.c_str());
}

void callback2(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Audience 1 heard from youtuber_2: [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "audience_1");
  ros::NodeHandle n;

  ros::Subscriber sub1 = n.subscribe("youtuber_1", 1000, callback1);
  ros::Subscriber sub2 = n.subscribe("youtuber_2", 1000, callback2);

  ros::spin();
  return 0;
}
