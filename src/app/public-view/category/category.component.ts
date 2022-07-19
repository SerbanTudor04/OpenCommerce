
import { environment } from './../../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.scss']
})
export class CategoryComponent implements OnInit {
  category_id :string ='';
  category_name:string='';
  

  products:any[]=[];
  raw_products:any[]=[];

  constructor(private route: ActivatedRoute,private http: HttpClient,) { }

  ngOnInit(): void {
    this.category_id = String(this.route.snapshot.paramMap.get('uid'))

      
    if(this.category_id)
      this.getProductsByCategory();
    else
      this.getAllProducts();
    
      this.fetchCategoryName(this.category_id);
  }

 async getAllProducts(){}

 async getProductsByCategory(){
    this.http.get(environment.api_base_url+'products/'+this.category_id).subscribe(
      (data:any)=>{
        this.raw_products=data;
        this.products = this.splitProductsInToRows(data);
        

      }
    )
  }
  splitProductsInToRows(products:any[],itemsPerRow:number=3){
    
    let rows:any[]=[];
    let row:any[]=[];
    for(let i=0;i<products.length;i++){
      row.push(products[i]);
      if(i%itemsPerRow==2){
        rows.push(row);
        row=[];
      }
      if(i==products.length-1){
        rows.push(row);
      }
    }
    return rows;
  }

  fetchCategoryName(category_id:string){
    return this.http.get(environment.api_base_url+'categories/category/'+category_id).subscribe(
      (data:any)=>{
        this.category_name= data.name;
      }
    )
  }
  handleItemsPerRowChange(event:any){
    
    this.products = this.splitProductsInToRows(this.raw_products, event.target.value);
  }

  handleSortChange(event:any){
    this.products = this.splitProductsInToRows( this.sortProducts(this.raw_products, event.target.value));
    // console.log(this.sortProducts(this.raw_products, event.target.value));
    

  }

  sortProducts(products:any[],sortBy:string){
    if(sortBy=='name'){
      return products.sort((a,b)=>{
        if(a.name>b.name)
          return 1;
        else if(a.name<b.name)
          return -1;
        else
          return 0;
      }
      )
    }
    else if(sortBy=='price'){
      return products.sort((a,b)=>{
        if(a.price>b.price)
          return 1;
        else if(a.price<b.price)
          return -1;
        else
          return 0;
      }
      )
    }
    else if(sortBy=='date'){
      return products.sort((a,b)=>{
        if(a.created_at>b.created_at)
          return 1;
        else if(a.created_at<b.created_at)
          return -1;
        else
          return 0;
      }
      )
    }
    else{
      return products;
    }
  }
  handleSortDirectionChange(event:any){
    this.products = this.splitProductsInToRows( this.sortProducts(this.raw_products, event.target.value));
  }

 
}
