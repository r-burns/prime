#ifndef _IOBJECTSTORE_HPP
#define _IOBJECTSTORE_HPP

#include "types.h"

#include "rstl/rc_ptr.hpp"

#include "TGameTypes.hpp"

class IObjectStore;
class IObj;
class CVParamTransfer {
  rstl::rc_ptr< void > x0_;
};
class CObjectReference {
  u16 x0_refCount;
  u16 x2_lockCount;
  SObjectTag x4_objTag;
  IObjectStore* xc_objectStore;
  IObj* x10_object;
  CVParamTransfer x14_params;
};

#endif
