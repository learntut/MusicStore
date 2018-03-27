import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';


@Injectable()
export class SidebarService {

  constructor(private http: Http) { }

  getGenres() {
    const uri = 'http://localhost:8080/api/generes/list';
    return this.http.get(uri).map(res => { return res; });
  }

}
