import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { OrderlistsComponent } from './orderlists.component';

describe('OrderlistsComponent', () => {
  let component: OrderlistsComponent;
  let fixture: ComponentFixture<OrderlistsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ OrderlistsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(OrderlistsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
