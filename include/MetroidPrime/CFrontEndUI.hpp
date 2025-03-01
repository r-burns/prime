#ifndef _CFRONTENDUI
#define _CFRONTENDUI

#include "MetroidPrime/CIOWin.hpp"

class CFrontEndUI : public CIOWin { 
public:
  CFrontEndUI();

  EMessageReturn OnMessage(const CArchitectureMessage& message, CArchitectureQueue& queue);

private:
  uchar pad[0xe4];
};

#endif // _CFRONTENDUI
