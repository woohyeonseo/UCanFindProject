package com.you.can.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.you.can.dto.LocationDto;

@Controller
public class MapController {

		private static final Logger logger = LoggerFactory.getLogger(MapController.class);
		
		@GetMapping(value="/map/simple")
		public String mapSimple() {
			logger.info("/map/simple");
			return "map/googleMapSimple";
		}
		
		@GetMapping(value = "/map/marker")
		public String mapMarker() {
			logger.info("/map/marker");
			return "map/googleMapMarker";
		}
	
		@GetMapping(value = "/map/cluster")
		public String mapCluster() {
			logger.info("/map/cluster");
			return "map/googleMapCluster";
		}
		
		@GetMapping(value = "/map/ajax")
		public String mapAjax() {
			logger.info("/map/googleMapClusterAjaxJSON");
			return "map/googleMapClusterAjaxJSON";
		}
			
		@GetMapping(value = "/map/clusterAjaxJsonService")
		   @ResponseBody
		   public List<LocationDto> mapClusterAjaxJsonPost() {
		      logger.info("/map/clusterAjaxJsonService");
		      
		      List<LocationDto> list = new ArrayList<LocationDto>();
		      
		      list.add(new LocationDto(-31.563910, 147.154312));
		      list.add(new LocationDto(-33.718234, 150.363181));
		      list.add(new LocationDto(-33.727111, 150.371124));
		      list.add(new LocationDto(-33.848588, 151.209834));
		      
		      list.add(new LocationDto(-33.851702, 151.216968));
		      list.add(new LocationDto(-34.671264, 150.863657));
		      list.add(new LocationDto(-35.304724, 148.662905));
		      list.add(new LocationDto(-36.817685, 175.699196));
		      list.add(new LocationDto(-36.828611, 175.790222));

		      list.add(new LocationDto(-37.750000, 145.116667));
		      list.add(new LocationDto(-37.759859, 145.128708));
		      list.add(new LocationDto(-37.765015, 145.133858));
		      list.add(new LocationDto(-37.770104, 145.143299));
		      list.add(new LocationDto(-37.773700, 145.145187));
		      list.add(new LocationDto(-37.774785, 145.137978));
		      list.add(new LocationDto(-37.819616, 144.968119));
		      list.add(new LocationDto(-38.330766, 144.695692));
		      list.add(new LocationDto(-39.927193, 175.053218));
		      list.add(new LocationDto(-41.330162, 174.865694));
		      list.add(new LocationDto(-42.734358, 147.439506));
		      list.add(new LocationDto(-42.734358, 147.501315));
		      list.add(new LocationDto(-42.735258, 147.438000));
		      list.add(new LocationDto(-43.999792, 170.463352));
		      
		      return list;
		   }
		
		@GetMapping(value = "/map/infowindow")
		public String mapInfoWindow() {
			logger.info("/map/infoWindow");
			return "map/googleMapInfoWindow";
		}
		
		@GetMapping(value = "/map/customMarkerIcon")
		   public String mapCustomMarkerIcon() {
		      logger.info("/map/customMarkerIcon");
		      return "map/googleMapCustomMarkerIcon";
		   }
		
		   @GetMapping(value = "/map/clickLatLng")
		   public String mapClickLatLng() {
		      logger.info("/map/clickLatLng");
		      return "map/googleMapClickLatLng";
		   }
		   
		   @GetMapping(value = "/map/autoComplete")
		   public String mapAutoComplete() {
		      logger.info("/map/autoComplete");
		      return "map/googleMapAutoComplete";
		   }
		   
		   @GetMapping(value = "/map/autoComplete2")
		   public String mapAutoComplete2() {
		      logger.info("/map/autoComplete");
		      return "map/googleMapAutoComplete2";
		   }
		   
		   @GetMapping(value = "/map/LastMap")
		   public String LastMap() {
		      logger.info("/map/LastMap");
		      return "map/LastMap";
		   }
}
