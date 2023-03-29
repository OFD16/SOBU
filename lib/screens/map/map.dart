import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:safe_house/screens/map/directions_model.dart';
import 'package:safe_house/screens/map/directions_repository.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(38.73122, 35.47873),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;
  var _origin;
  var _destination;
  Directions _info = const Directions(polylinePoints: []);

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _googleMapController = controller,
            markers: {
              if (_origin != null) _origin,
              if (_destination != null) _destination,
            },
            polylines: {
              Polyline(
                polylineId: const PolylineId('overview_polyline'),
                color: Colors.red,
                width: 5,
                points: _info.polylinePoints
                    .map((e) => LatLng(e.latitude, e.longitude))
                    .toList(),
              )
            },
            onLongPress: _addMaker,
          ),
          Positioned(
            top: 20,
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              width: screenWidth * 0.7,
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Where are you going to?',
                  hintStyle: const TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                  ),
                  prefixIcon: IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return FractionallySizedBox(
                              heightFactor: 0.9,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: const Color(0xffE8E4E4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 400,
                                child: ListView(
                                  children: <Widget>[
                                    const SizedBox(height: 8),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 40,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.5),
                                          color: const Color(0xffB0B0B0),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'İstiklal',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 36,
                                                fontFamily: 'Roboto',
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                            Text(
                                              '34762 Ümraniye/ Istanbul',
                                              style: TextStyle(
                                                color: Color(0xff777575),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                fontFamily: 'Roboto',
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                        OutlinedButton(
                                          onPressed: () => {},
                                          style: OutlinedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 10),
                                            backgroundColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: const Text(
                                            'Filter',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Featured buildings',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        fontFamily: 'Roboto',
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 5,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Container(
                                            margin: const EdgeInsets.only(bottom: 12),
                                            padding: const EdgeInsets.all(16),
                                            decoration: BoxDecoration(
                                              color: const Color(0xffCCCCCC),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  flex: 2,
                                                  child: Container(
                                                    width: 105,
                                                    height: 105,
                                                    decoration: BoxDecoration(
                                                      image: const DecorationImage(
                                                        image: NetworkImage(
                                                            'https://img.freepik.com/free-vector/city-skyline-concept-illustration_114360-8923.jpg'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Flexible(
                                                  flex: 4,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            flex: 6,
                                                            child: Text(
                                                              'Eskisehir apartment',
                                                              textAlign: TextAlign.start,
                                                              overflow: TextOverflow.fade,
                                                              maxLines: 1,
                                                              softWrap: false,
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 18,
                                                                fontFamily: 'Roboto',
                                                                fontStyle: FontStyle.normal,
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(flex: 1,child: Icon(Icons.my_location, color: Colors.black)),
                                                          Flexible(flex: 1,child: Icon(Icons.bookmark_border_outlined, color: Colors.black)),
                                                        ],
                                                      ),
                                                      const Text(
                                                        '17, İstiklal, Başarılı Sk., 26010 Ümraniye/İstanbul',
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                          color: Color(0xff777575),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16,
                                                          fontFamily: 'Roboto',
                                                          fontStyle: FontStyle.normal,
                                                        ),
                                                      ),
                                                      OutlinedButton(
                                                        onPressed: () =>
                                                        {Navigator.pushNamed(context, 'home_detail_view')},
                                                        style: OutlinedButton.styleFrom(
                                                          padding: const EdgeInsets.symmetric(
                                                              vertical: 8, horizontal: 10),
                                                          backgroundColor: Colors.black,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                        ),
                                                        child: const Text(
                                                          'See More Detail',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 16,
                                                            fontFamily: 'Roboto',
                                                            fontStyle: FontStyle.normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                    /*ElevatedButton(
                                      child: const Text('Close BottomSheet'),
                                      onPressed: () => Navigator.pop(context),
                                    ),*/
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.search_outlined)),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          if (_info.bounds != null)
            Positioned(
              top: 20,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Text(
                  '${_info.totalDistance}, ${_info.totalDuration}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _googleMapController.animateCamera(
          _info.bounds != null
              ? CameraUpdate.newLatLngBounds(_info.bounds!, 100.0)
              : CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  void _addMaker(LatLng pos) async {
    if (_origin == null || (_origin != null && _destination != null)) {
      // origin is not set or origindestinatiın are both set
      //set origin
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Başlangıç'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        //Reset destination
        _destination = null;

        //Reset info
        _info = const Directions(polylinePoints: []);
      });
    } else {
      //origin is already set
      //set destination
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Varış'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
      });

      //Get directions
      final directions = await DirectionsRepository()
          .getDirections(origin: _origin.position, destination: pos);
      setState(() => _info = directions!);
    }
  }
}
