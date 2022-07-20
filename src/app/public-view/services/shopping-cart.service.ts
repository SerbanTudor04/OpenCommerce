import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ShoppingCartService {

  current_cart:any[]=[];

  constructor() { 
    const cart = localStorage.getItem('ocom__cart');
    if(cart){
      this.current_cart = Array.from(JSON.parse(cart));
    }
  }


  add2Cart(product:any,quantity:number=1){
    product.quantity = quantity;
    this.current_cart.push(product);
    const cart = localStorage.getItem('ocom__cart')??'[]';
    let parse_cart=Array.from(JSON.parse(cart));

    parse_cart.push(product);
    localStorage.setItem('ocom__cart',JSON.stringify(parse_cart));

  }
  removeFromCart(product:any){
    const cart = localStorage.getItem('ocom__cart')??'[]';
    let parse_cart=Array.from(JSON.parse(cart));
    parse_cart.splice(parse_cart.indexOf(product),1);
    localStorage.setItem('ocom__cart',JSON.stringify(parse_cart));
    this.current_cart = parse_cart;
  }
  

}
