import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PublicViewRoutingModule } from './public-view-routing.module';
import { PublicViewComponent } from './public-view.component';
import { IonicModule } from '@ionic/angular';
import { HomeComponent } from './home/home.component';
import { Error404Component } from './error404/error404.component';

@NgModule({
  declarations: [PublicViewComponent, HomeComponent,Error404Component],
  imports: [CommonModule, PublicViewRoutingModule, IonicModule],
})
export class PublicViewModule {}
