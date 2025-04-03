# PersistentVolume(PV)
a piece of storage resource in the cluster just like *node*
- > PVs are volume plugins like Volumes, but have a lifecycle independent of any individual Pod using it
- provision fashion
  - static: created by cluster admin
  - dynamic: by StorageClasses

# PersistentVolumeClaim (PVC)
a request for storage by a user like *pod*
- PVCs consume PV resources.
- PVCs can request specific size and **access modes**


## Access modes
- ReadWriteOnce (RWO)
- ReadOnlyMany (ROX)
- ReadWriteMany (RWX)
- ReadWriteOncePod