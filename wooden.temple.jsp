﻿<!DOCTYPE html>
<html>
  <head>
  <style>
    #map-canvas { width:1920px; height:800px; }
    .layer-wizard-search-label { font-family: sans-serif };
  </style>
  <script type="text/javascript"
    src="http://maps.google.com/maps/api/js?sensor=false">
  </script>
  <script type="text/javascript">
    var map;
    var layer_0;
    var layer_1;
    function initialize() {
      map = new google.maps.Map(document.getElementById('map-canvas'), {
        center: new google.maps.LatLng(49.31835006937047, 32.313735595703086),
        zoom: 7,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });
      layer_0 = new google.maps.FusionTablesLayer({
        query: {
          select: "col0",
          from: "1nAErPHMebU38NdP2_C5zaarv5qGpwD8AKqYXWXLr"
        },
        map: map,
        styleId: 2,
        templateId: 2
      });
      layer_1 = new google.maps.FusionTablesLayer({
        query: {
          select: "col4",
          from: "1z1G-QjG97ffSRaguoZA08t2HenzE6NB99ZdMfekF"
        },
        map: map,
        styleId: 2,
        templateId: 2
      });
    }
    function changeMap_1() {
      var whereClause;
      var searchString = document.getElementById('search-string_1').value.replace(/'/g, "\\'");
      if (searchString != '--Select--') {
        whereClause = "'тип' = '" + searchString + "'";
      }
      layer_1.setOptions({
        query: {
          select: "col4",
          from: "1z1G-QjG97ffSRaguoZA08t2HenzE6NB99ZdMfekF",
          where: whereClause
        }
      });
    }
    function changeMap_2() {
      var whereClause;
      var searchString = document.getElementById('search-string_2').value.replace(/'/g, "\\'");
      if (searchString != '--Select--') {
        whereClause = "'століття' = '" + searchString + "'";
      }
      layer_1.setOptions({
        query: {
          select: "col4",
          from: "1z1G-QjG97ffSRaguoZA08t2HenzE6NB99ZdMfekF",
          where: whereClause
        }
      });
    }
    function changeMap_3() {
      var whereClause;
      var searchString = document.getElementById('search-string_3').value.replace(/'/g, "\\'");
      if (searchString != '--Select--') {
        whereClause = "'зруйнована (так/ні)' = '" + searchString + "'";
      }
      layer_1.setOptions({
        query: {
          select: "col4",
          from: "1z1G-QjG97ffSRaguoZA08t2HenzE6NB99ZdMfekF",
          where: whereClause
        }
      });
    }
    function changeMap_4() {
      var whereClause;
      var searchString = document.getElementById('search-string_4').value.replace(/'/g, "\\'");
      if (searchString != '--Select--') {
        whereClause = "'школа' = '" + searchString + "'";
      }
      layer_1.setOptions({
        query: {
          select: "col4",
          from: "1z1G-QjG97ffSRaguoZA08t2HenzE6NB99ZdMfekF",
          where: whereClause
        }
      });
    }
    google.maps.event.addDomListener(window, 'load', initialize);
  </script>
  </head>
  <body>
    <div id="map-canvas"></div>
    <div style="margin-top: 10px;">
      <label class="layer-wizard-search-label">
        тип споруди
        <select id="search-string_1" onchange="changeMap_1(this.value);">
          <option value="--Select--">--Select--</option>
          <option value="дерев'яна дзвінниця">дерев'яна дзвінниця</option>
          <option value="дерев'яна каплиця">дерев'яна каплиця</option>
          <option value="дерев'яна церква">дерев'яна церква</option>
          <option value="дерев'яна церква обкладена цеглою">дерев'яна церква обкладена цеглою</option>
          <option value="дерев'яний костел">дерев'яний костел</option>
        </select>
      </label> 
    </div>
    <div style="margin-top: 10px;">
      <label class="layer-wizard-search-label">
        століття будівництва
        <select id="search-string_2" onchange="changeMap_2(this.value);">
          <option value="--Select--">--Select--</option>
          <option value="">(no value)</option>
          <option value="XVI">XVI</option>
          <option value="XVII">XVII</option>
          <option value="XVIII">XVIII</option>
          <option value="ХІХ">ХІХ</option>
          <option value="ХХ">ХХ</option>
          <option value="ХХІ">ХХІ</option>
        </select>
      </label> 
    </div>
    <div style="margin-top: 10px;">
      <label class="layer-wizard-search-label">
        зруйнування споруди
        <select id="search-string_3" onchange="changeMap_3(this.value);">
          <option value="--Select--">--Select--</option>
          <option value="">(no value)</option>
          <option value="так">так</option>
        </select>
      </label> 
    </div>
    <div style="margin-top: 10px;">
      <label class="layer-wizard-search-label">
        школа будівництва
        <select id="search-string_4" onchange="changeMap_4(this.value);">
          <option value="--Select--">--Select--</option>
          <option value="">(no value)</option>
          <option value="берестейська">берестейська</option>
          <option value="волинська">волинська</option>
          <option value="поліська">поліська</option>
          <option value="поліська (архаїчна група)">поліська (архаїчна група)</option>
        </select>
      </label> 
    </div>
  </body>
</html>
