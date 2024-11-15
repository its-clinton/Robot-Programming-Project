// Modified: 14/09/2024

#include <iostream>
#include <sstream>
#include <fstream> 
#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv) {
  ros::init(argc, argv, "sender");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
 
  ros::Rate loop_rate(10);
  
  
  std::ifstream fin("/home/zainab/INFO7002_ws/src/sending_files/src/NameList.txt");

  if (!fin.is_open()) {
     ROS_ERROR("Input file opening failed. \n");
     return -1;
  }

  int count = 1;
  while (ros::ok() && !fin.eof()) {
    std_msgs::String msg;
    std::string sid, firstName, lastName;

    std::stringstream ss;
    fin >> sid >> firstName >> lastName;
    ss << count << " " << sid << " " << firstName << " " << lastName;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());
    chatter_pub.publish(msg);
    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }
  fin.close();

  return 0;
}

