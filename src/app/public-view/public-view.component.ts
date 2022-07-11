import { environment } from './../../environments/environment';
import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-public-view',
  templateUrl: './public-view.component.html',
  styleUrls: ['./public-view.component.scss']
})
export class PublicViewComponent implements OnInit {
  app_info:any={
    navbar_title:{
      name:'',
    },
  }

  constructor() { }

  ngOnInit(): void {
    this.fetchNavbarData();
  
  }

  async fetchNavbarData() {
    // fetch navbar data
    let result = await fetch(environment.api_base_url+'ocom_stores/1.json');
    let data = await result.json();
    this.app_info.navbar_title=data;

  }


}
