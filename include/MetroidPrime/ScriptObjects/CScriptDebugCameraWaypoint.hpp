#ifndef _CSCRIPTDEBUGCAMERAWAYPOINT
#define _CSCRIPTDEBUGCAMERAWAYPOINT

#include "types.h"

#include "MetroidPrime/CActor.hpp"

class CScriptDebugCameraWaypoint : public CActor {
public:
  CScriptDebugCameraWaypoint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                             const CTransform4f& xf, uint value);
  ~CScriptDebugCameraWaypoint() override;

  void Accept(IVisitor& visitor) override;

private:
  uint xe8_value;
};

#endif // _CSCRIPTDEBUGCAMERAWAYPOINT
