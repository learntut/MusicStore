import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GenrelistsComponent } from './genrelists.component';

describe('GenrelistsComponent', () => {
  let component: GenrelistsComponent;
  let fixture: ComponentFixture<GenrelistsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GenrelistsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GenrelistsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
