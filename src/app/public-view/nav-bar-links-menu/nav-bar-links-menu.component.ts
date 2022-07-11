import { Component, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-nav-bar-links-menu',
  templateUrl: './nav-bar-links-menu.component.html',
  styleUrls: ['./nav-bar-links-menu.component.scss']
})
export class NavBarLinksMenuComponent implements OnInit {

  navbar_menus:any[]=[];

  constructor() { }

  ngOnInit(): void {
    this.fetchNavbarData();
  }
  async fetchNavbarData() {

    // fetch navbar links
    let result = await fetch(environment.api_base_url+'ocom_menus.json');
    let data = await result.json();
    this.navbar_menus=data;
    
  }


}
