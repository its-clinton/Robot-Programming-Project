#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "youtuber_1");
  ros::NodeHandle n;
  ros::Publisher youtuber_pub = n.advertise<std_msgs::String>("youtuber_1", 1000);
  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {
    std_msgs::String msg;
    std::stringstream ss;
    ss << "Youtuber 1 content " << count;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());
    youtuber_pub.publish(msg);

    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
  return 0;
}
