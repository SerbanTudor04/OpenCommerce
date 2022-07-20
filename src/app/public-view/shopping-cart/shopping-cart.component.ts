import { Component, OnInit } from '@angular/core';
import { ShoppingCartService } from '../services/shopping-cart.service';

@Component({
  selector: 'pv-shopping-cart',
  templateUrl: './shopping-cart.component.html',
  styleUrls: ['./shopping-cart.component.scss']
})
export class ShoppingCartComponent implements OnInit {

  constructor(public shopCartS:ShoppingCartService) { }

  ngOnInit(): void {
  }

  removeFromCart(product:any){
    this.shopCartS.removeFromCart(product);
  }
}
