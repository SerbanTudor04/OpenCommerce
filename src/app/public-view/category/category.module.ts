import { IonicModule } from '@ionic/angular';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CategoryRoutingModule } from './category-routing.module';
import { CategoryComponent } from './category.component';
import { ProductComponent } from './product/product.component';


@NgModule({
  declarations: [
    CategoryComponent,
    ProductComponent
  ],
  imports: [
    CommonModule,
    CategoryRoutingModule,
    IonicModule
  ]
})
export class CategoryModule { }
