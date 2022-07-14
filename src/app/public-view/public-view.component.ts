import { ColorModeService } from './services/color-mode.service';
import { environment } from './../../environments/environment';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-public-view',
  templateUrl: './public-view.component.html',
  styleUrls: ['./public-view.component.scss'],
})
export class PublicViewComponent implements OnInit {
  app_info: any = {
    navbar_title: {
      name: '',
    },
    categorys: [],
  };

  constructor(public colorModeSrv: ColorModeService) {}

  ngOnInit(): void {
    this.fetchStore().then(() => this.fetchProductsCategory());
  }

  async fetchStore() {
    // fetch navbar data
    let result = await fetch(environment.api_base_url + 'stores/default');
    let data = await result.json();

    this.app_info.navbar_title = data;
  }

  async fetchProductsCategory() {
    let result = await fetch(
      environment.api_base_url + 'categorys/' + this.app_info.navbar_title.id
    );
    let data = await result.json();
    this.app_info.categorys = data;
  }
}
