$(QT5XHB_OBJ_DIR)/QGeoAreaMonitorSourceSlotsMoc.cpp   : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoAreaMonitorSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoPositionInfoSourceSlotsMoc.cpp  : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoPositionInfoSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
$(QT5XHB_OBJ_DIR)/QGeoSatelliteInfoSourceSlotsMoc.cpp : $(QT5XHB_SRC_DIR)/QtPositioning/QGeoSatelliteInfoSourceSlots.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
