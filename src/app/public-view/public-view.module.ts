import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PublicViewRoutingModule } from './public-view-routing.module';
import { PublicViewComponent } from './public-view.component';
import { IonicModule } from '@ionic/angular';
import { HomeComponent } from './home/home.component';
import { NavBarLinksMenuComponent } from './nav-bar-links-menu/nav-bar-links-menu.component';

@NgModule({
  declarations: [PublicViewComponent, HomeComponent, NavBarLinksMenuComponent],
  imports: [CommonModule, PublicViewRoutingModule, IonicModule],
})
export class PublicViewModule {}
