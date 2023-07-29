import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { Rxjs101Service } from 'src/app/services/rxjs101.service';
import { HeroService } from 'src/app/services/hero.service';

@Component({
  selector: 'app-my',
  templateUrl: './my.component.html',
  styleUrls: ['./my.component.css'],
})
export class MyComponent implements OnInit {
  constructor(private testRxjs: Rxjs101Service, private hs: HeroService) {}

  data$!: Observable<any[]>;
  dataJboss$!: Observable<any[]>;

  ngOnInit(): void {
    const id = '';
    const numbOfUsers = 7;
    const name = 'rxjs_forkJoin'; // rxjs_testSwitched22  rxjs_forkJoin  rxjs_from
    this.testRxjs.testService(name);
    //this.data$ = this.hs.getInvoice(id);
    this.data$ = this.hs.getUsers(numbOfUsers);
    this.dataJboss$ = this.hs.getJbossApi(id);

    this.testRxjs.testSwitched22(id).subscribe({
      next: (v) => console.log(v),
      error: (e) => console.error(`\tERROR occured: ${JSON.stringify(e)}`),
      complete: () => console.info('complete'),
    });
  }
}
