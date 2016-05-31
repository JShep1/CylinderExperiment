/*****************************************************************************
 * "Controller" for outputting data from the simple box examples 
 ****************************************************************************/
#include <Moby/TimeSteppingSimulator.h>
#include <Moby/RCArticulatedBody.h>
#include <Moby/GravityForce.h>
#include <Ravelin/Pose3d.h>
#include <Ravelin/Vector3d.h>
#include <Ravelin/VectorNd.h>
#include <fstream>
#include <stdlib.h>

using boost::shared_ptr;
using namespace Ravelin;
using namespace Moby;

Moby::RigidBodyPtr cylinder;
boost::shared_ptr<TimeSteppingSimulator> sim;
boost::shared_ptr<GravityForce> grav;
VectorNd coords;
// setup simulator callback
// setup simulator callback
void post_step_callback(Simulator* sim)
{
  cylinder->get_generalized_coordinates_euler(coords);
  // output the sliding velocity at the contact 
  std::ofstream out("CylinderData10.txt", std::ostream::app);
  out << sim->current_time << " " << cylinder->calc_kinetic_energy() << std::endl;
  out.close();
}

/// plugin must be "extern C"
extern "C" {

void init(void* separator, const std::map<std::string, Moby::BasePtr>& read_map, double time)
{
  // wipe out existing file 
  std::ofstream out("CylinderData10.txt");
  out.close();


  // get a reference to the TimeSteppingSimulator instance
  for (std::map<std::string, Moby::BasePtr>::const_iterator i = read_map.begin();
       i !=read_map.end(); i++)
  {
    // Find the simulator reference
    if (!sim)
      sim = boost::dynamic_pointer_cast<TimeSteppingSimulator>(i->second);
    if (i->first == "cylinder")
      cylinder = boost::dynamic_pointer_cast<RigidBody>(i->second);
    if (!grav)
      grav = boost::dynamic_pointer_cast<GravityForce>(i->second);
  }
sim->post_step_callback_fn = &post_step_callback;
}
} // end extern C
