import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { Error404Component } from './error404/error404.component';
import { HomeComponent } from './home/home.component';
import { PublicViewComponent } from './public-view.component';
const routes: Routes = [{ path: '', component: PublicViewComponent,children:[
  { path: 'home', component: HomeComponent },
  { path: '404', component: Error404Component },
  { path: 'category',loadChildren: ()=>import('./category/category.module').then(m=>m.CategoryModule) },
  { path: '', redirectTo: 'home', pathMatch: 'full' }
] }];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PublicViewRoutingModule { }
