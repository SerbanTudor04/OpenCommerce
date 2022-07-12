import { AfterViewInit, Component, Input, OnInit } from '@angular/core';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-nav-bar-links-menu',
  templateUrl: './nav-bar-links-menu.component.html',
  styleUrls: ['./nav-bar-links-menu.component.scss']
})
export class NavBarLinksMenuComponent implements AfterViewInit {

  @Input() navbar_menus:any[]=[];
  constructor() { }

  ngAfterViewInit(): void {
    console.log(this.navbar_menus);
      

  }


  


}
