#ifndef REAL_NODE_HPP
#define REAL_NODE_HPP

#include <ros/ros.h>
#include "qnode.hpp"
#include <std_msgs/String.h>
#include <string>

class Listener_Node : public QNode {
public:
    Listener_Node(int argc, char** argv);
    virtual ~Listener_Node() {}
    void run();
    void ros_comms_init();
private:
    void chatterCallback(const std_msgs::String::ConstPtr &msg);
    ros::Subscriber chatter_subscriber;
};

#endif // REAL_NODE_HPP
