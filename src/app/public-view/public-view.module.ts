import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PublicViewRoutingModule } from './public-view-routing.module';
import { PublicViewComponent } from './public-view.component';
import { IonicModule } from '@ionic/angular';
import { HomeComponent } from './home/home.component';
import { Error404Component } from './error404/error404.component';
import { ShoppingCartComponent } from './shopping-cart/shopping-cart.component';

@NgModule({
  declarations: [PublicViewComponent, HomeComponent,Error404Component, ShoppingCartComponent],
  imports: [CommonModule, PublicViewRoutingModule, IonicModule],
})
export class PublicViewModule {}
