import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlbumlistsComponent } from './albumlists.component';

describe('AlbumlistsComponent', () => {
  let component: AlbumlistsComponent;
  let fixture: ComponentFixture<AlbumlistsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlbumlistsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlbumlistsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
