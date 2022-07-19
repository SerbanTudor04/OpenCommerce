import { Component, Input, OnInit } from '@angular/core';
import { ShoppingCartService } from '../../services/shopping-cart.service';

@Component({
  selector: 'app-product',
  templateUrl: './product.component.html',
  styleUrls: ['./product.component.scss']
})
export class ProductComponent implements OnInit {

  @Input()  product: any;

  constructor(private shoppingS:ShoppingCartService) { }

  ngOnInit(): void {
  }

  handleAddButtonClick(){
    this.shoppingS.add2Cart(this.product);
  }
}
