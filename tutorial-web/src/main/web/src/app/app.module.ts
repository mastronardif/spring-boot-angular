import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
//import { Routes, RouterModule } from '@angular/router';
import { AppComponent } from './app.component';

// const appRoutes: Routes = [
//   // { path: '', component: HomeComponent },
//   // { path: '**', component: PageNotFoundComponent },
// ];
@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule
    //RouterModule.forRoot(Routes, { useHash: true})
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
