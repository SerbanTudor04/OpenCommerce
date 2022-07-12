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
    navbar_menus:[]
  }

  constructor() { }

  ngOnInit(): void {
    this.fetchNavbarData();
    this.handleNavbarMenus();
  
  }

  async fetchNavbarData() {
    // fetch navbar data
    let result = await fetch(environment.api_base_url+'ocom_stores/1.json');
    let data = await result.json();
    
    
    this.app_info.navbar_title=data;



     
  }

  async handleNavbarMenus(){
    
    let result_nav = await fetch(environment.api_base_url+'ocom_stores/1/ocom_menus_parents');
    let data_nav = await result_nav.json();
    data_nav.forEach((element:any) => {
      this.app_info.navbar_menus.push(
        {
          ...element,
          ocom_menus_children:[]
        }
      );
      
    })


    let result_nav_child = await fetch(environment.api_base_url+'ocom_stores/1/ocom_menus_childs');
    let data_nav_child = await result_nav_child.json();
    // add child to parent where paremnt_id is equal to parent id

    data_nav_child.forEach((element:any) => {
      this.app_info.navbar_menus.forEach((parent:any) => {
      

        if(parent.id==element.parent_id){
      
          parent.ocom_menus_children.push(element);
          
        }
      })
    }
    )
  }



}
