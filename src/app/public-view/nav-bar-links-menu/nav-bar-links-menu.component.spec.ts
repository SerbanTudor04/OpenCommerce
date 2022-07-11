import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NavBarLinksMenuComponent } from './nav-bar-links-menu.component';

describe('NavBarLinksMenuComponent', () => {
  let component: NavBarLinksMenuComponent;
  let fixture: ComponentFixture<NavBarLinksMenuComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NavBarLinksMenuComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NavBarLinksMenuComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
