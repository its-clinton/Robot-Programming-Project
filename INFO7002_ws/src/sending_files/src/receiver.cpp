#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

// Global publisher for student IDs
ros::Publisher student_id_pub;

// Function to extract the student ID from the message
std::string extractStudentID(const std::string& data) {
    std::stringstream ss(data);
    std::string count, student_id, firstName, lastName;

    // the message is in the format: "count student_id firstName lastName"
    ss >> count >> student_id >> firstName >> lastName;

    return student_id;  // Return the student ID
}

// Callback for receiving messages on the /chatter topic
void chatterCallback(const std_msgs::String::ConstPtr& msg) {
    ROS_INFO("I heard: [%s]", msg->data.c_str());

    // Extract student ID from the received message and publish
    std_msgs::String id_msg;
    id_msg.data = extractStudentID(msg->data);
    student_id_pub.publish(id_msg);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "receiver");
    ros::NodeHandle n;

    // Subscriber to the /chatter topic
    ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

    // Publisher to the /studentID topic
    student_id_pub = n.advertise<std_msgs::String>("studentID", 1000);

    // Spin to keep the node running
    ros::spin();

    return 0;
}

