import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    let coords = [ this.markerValue.lng, this.markerValue.lat ]
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      center: coords,
      zoom: 11
    })

    new mapboxgl.Marker()
      .setLngLat(coords)
      .addTo(this.map)
  }
}
