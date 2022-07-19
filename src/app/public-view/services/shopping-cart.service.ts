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


  add2Cart(product:any){
    this.current_cart.push(product);
    const cart = localStorage.getItem('ocom__cart')??'[]';
    let parse_cart=Array.from(JSON.parse(cart));

    parse_cart.push(product);
    localStorage.setItem('ocom__cart',JSON.stringify(parse_cart));

  }
  

}
