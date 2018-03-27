import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { SidebarService } from '../../services/sidebar.service';

@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent implements OnInit {

  generes: any;
  constructor(private service: SidebarService) { }

  ngOnInit() {
    this.getgeneres();
  }

  getgeneres()  {
    this.service.getGenres().subscribe(res => {
      this.generes = res;
    });
  }


}
