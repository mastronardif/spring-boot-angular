import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { from, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class HeroService {
  heroesUrl: string = 'https://random-data-api.com/api/invoice/random_invoice';
  usersUrl: string = 'https://random-data-api.com/api/users/random_user?size=';
  jbossApi: string =  'http://localhost:8099/api/data';

  constructor(private http: HttpClient) {}

  getInvoice(id: string): Observable<any[]> {
    id = id ? id : '';
    return this.http.get<any[]>(this.heroesUrl);
  }

  getUsers(id: number): Observable<any[]> {
    id = id ? id : 1;
    const usersUrl =this.usersUrl + id;
    return this.http.get<any[]>(usersUrl);
  }

  getJbossApi(id: string): Observable<any[]> {
    id = id ? id : '';
    const usersUrl =this.jbossApi;
    return this.http.get<any[]>(usersUrl);
  }

  getXYZ(url: string): Observable<any[]> {
    return this.http.get<any[]>(url);
  }

  getFrom(): Observable<any> {
    const objects = [
      { id: 1, name: 'Fabian' },
      { id: 2, name: 'Jan-Niklas' },
    ];
    const observable$ = from(objects);
    return observable$;
  }
}
