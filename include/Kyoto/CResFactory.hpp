#ifndef _CRESFACTORY
#define _CRESFACTORY

#include "types.h"

#include "rstl/list.hpp"

#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/CResLoader.hpp"

class IFactory {
public:
  virtual ~IFactory() {}
  virtual CFactoryFnReturn Build(const SObjectTag&, const CVParamTransfer&, CObjectReference*) = 0;
  virtual void BuildAsync(const SObjectTag&, const CVParamTransfer&, rstl::auto_ptr< IObj >*,
                          CObjectReference*) = 0;
  virtual void CancelBuild(const SObjectTag&) = 0;
  virtual bool CanBuild(const SObjectTag&) = 0;
  virtual const SObjectTag* GetResourceIdByName(const char* name) const = 0;
  // TODO
};

class CResFactory : public IFactory {
public:
  CResFactory();

  ~CResFactory() override {}
  CFactoryFnReturn Build(const SObjectTag&, const CVParamTransfer&, CObjectReference*) override;
  void BuildAsync(const SObjectTag&, const CVParamTransfer&, rstl::auto_ptr< IObj >*,
                  CObjectReference*) override;
  void CancelBuild(const SObjectTag&) override;
  bool CanBuild(const SObjectTag&) override;
  const SObjectTag* GetResourceIdByName(const char* name) const override;
  
  uint ResourceSize(const SObjectTag& tag) const { return x4_resLoader.ResourceSize(tag); }

  void AsyncIdle(uint time);

  CResLoader& GetResLoader() { return x4_resLoader; }
  FourCC GetResourceTypeById(CAssetId id) { return GetResLoader().GetResourceTypeById(id); }

private:
  CResLoader x4_resLoader;
  CFactoryMgr x5c_factoryMgr;
  uint x94_;
  uint x98_;
  uint x9c_;
  uint xa0_;
  uint xa4_;
  uint xa8_;
  uint xac_;
  rstl::list< unkptr > xb0_;
};
CHECK_SIZEOF(CResFactory, 0xc8);

extern CResFactory* gpResourceFactory;

#endif // _CRESFACTORY
