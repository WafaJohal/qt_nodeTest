#include "listener_node.hpp"
#include <ros/ros.h>
#include <string>
#include <sstream>
#include <std_msgs/String.h>

Listener_Node::Listener_Node(int argc, char** argv ) :
    QNode(argc,argv,"qreal_node")
    {}

void Listener_Node::ros_comms_init() {
    ros::NodeHandle n;
    chatter_subscriber = n.subscribe("chatter", 1000, &Listener_Node::chatterCallback, this);
}

void Listener_Node::chatterCallback(const std_msgs::String::ConstPtr &msg) {
    ROS_INFO("I heard: [%s]", msg->data.c_str());
    logging.insertRows(0,1);
    std::stringstream logging_msg;
    logging_msg << "[ INFO] [" << ros::Time::now() << "]: I heard: " << msg->data;
    QVariant new_row(QString(logging_msg.str().c_str()));
    logging.setData(logging.index(0),new_row);
}

void Listener_Node::run() {
    ros::spin();
    std::cout << "Ros shutdown, proceeding to close the gui." << std::endl;
    Q_EMIT rosShutdown(); // used to signal the gui for a shutdown (useful to roslaunch)
}
