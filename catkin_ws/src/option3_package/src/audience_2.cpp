#include "ros/ros.h"
#include "std_msgs/String.h"

void callback2(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Audience 2 heard from youtuber_2: [%s]", msg->data.c_str());
}

void callback3(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("Audience 2 heard from youtuber_3: [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "audience_2");
  ros::NodeHandle n;

  ros::Subscriber sub2 = n.subscribe("youtuber_2", 1000, callback2);
  ros::Subscriber sub3 = n.subscribe("youtuber_3", 1000, callback3);

  ros::spin();
  return 0;
}
